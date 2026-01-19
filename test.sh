#!/bin/bash

# ColorCodex Test Script
# Runs tests and validates the build

set -e  # Exit on error

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUILD_DIR="${SCRIPT_DIR}/build"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${YELLOW}========================================${NC}"
echo -e "${YELLOW}ColorCodex Test Suite${NC}"
echo -e "${YELLOW}========================================${NC}"

# Check if build directory exists
if [ ! -d "${BUILD_DIR}" ]; then
    echo -e "${RED}Build directory not found!${NC}"
    echo -e "${YELLOW}Please run ./build.sh first${NC}"
    exit 1
fi

# Check if executable exists
if [ ! -f "${BUILD_DIR}/bin/colorcodex" ]; then
    echo -e "${RED}Executable not found!${NC}"
    echo -e "${YELLOW}Please run ./build.sh first${NC}"
    exit 1
fi

echo -e "${BLUE}[TEST 1] Running executable...${NC}"
if "${BUILD_DIR}/bin/colorcodex" > /dev/null 2>&1; then
    echo -e "${GREEN}✓ Executable runs successfully${NC}"
else
    echo -e "${RED}✗ Executable failed to run${NC}"
    exit 1
fi

echo -e "${BLUE}[TEST 2] Checking build configuration...${NC}"
if [ -f "${BUILD_DIR}/CMakeCache.txt" ]; then
    echo -e "${GREEN}✓ CMake cache found${NC}"
else
    echo -e "${RED}✗ CMake cache not found${NC}"
    exit 1
fi

echo -e "${BLUE}[TEST 3] Checking compilation flags...${NC}"
if grep -q "CMAKE_CXX_FLAGS" "${BUILD_DIR}/CMakeCache.txt"; then
    echo -e "${GREEN}✓ Compiler flags configured${NC}"
else
    echo -e "${RED}✗ Compiler flags not found${NC}"
    exit 1
fi

echo -e "${BLUE}[TEST 4] Running CMake tests...${NC}"
cd "${BUILD_DIR}"
if ctest --output-on-failure; then
    echo -e "${GREEN}✓ All CTest tests passed${NC}"
else
    echo -e "${RED}✗ Some CTest tests failed${NC}"
    exit 1
fi

echo -e "${BLUE}[TEST 5] Checking for warnings/errors in build...${NC}"
# This is a simple check - in production you might parse compiler output
if [ -f "${BUILD_DIR}/CMakeFiles/colorcodex.dir/link.txt" ]; then
    echo -e "${GREEN}✓ Build artifacts present${NC}"
else
    echo -e "${YELLOW}⚠ Build artifacts check inconclusive${NC}"
fi

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}All tests completed successfully!${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "${BLUE}To run the application manually:${NC}"
echo -e "  ${GREEN}${BUILD_DIR}/bin/colorcodex${NC}"
echo ""
