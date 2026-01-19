#!/bin/bash

# ColorCodex Build Script
# Builds the project using CMake with proper compiler flags

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUILD_DIR="${SCRIPT_DIR}/build"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Default build type
BUILD_TYPE=${1:-Debug}

echo -e "${YELLOW}========================================${NC}"
echo -e "${YELLOW}ColorCodex Build Script${NC}"
echo -e "${YELLOW}========================================${NC}"
echo -e "Build Type: ${GREEN}${BUILD_TYPE}${NC}"
echo -e "Source Dir: ${GREEN}${SCRIPT_DIR}${NC}"
echo -e "Build Dir:  ${GREEN}${BUILD_DIR}${NC}"
echo ""

# Create build directory if it doesn't exist
if [ ! -d "${BUILD_DIR}" ]; then
    echo -e "${YELLOW}Creating build directory...${NC}"
    mkdir -p "${BUILD_DIR}"
fi

# Navigate to build directory
cd "${BUILD_DIR}"

# Run CMake configuration
echo -e "${YELLOW}Running CMake configuration...${NC}"
cmake -DCMAKE_BUILD_TYPE="${BUILD_TYPE}" -DCMAKE_EXPORT_COMPILE_COMMANDS=ON "${SCRIPT_DIR}" || {
    echo -e "${RED}CMake configuration failed!${NC}"
    exit 1
}

# Build the project
echo -e "${YELLOW}Building project...${NC}"
cmake --build . --config "${BUILD_TYPE}" -j$(nproc) || {
    echo -e "${RED}Build failed!${NC}"
    exit 1
}

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}Build completed successfully!${NC}"
echo -e "${GREEN}========================================${NC}"
echo -e "Executable: ${GREEN}${BUILD_DIR}/bin/colorcodex${NC}"
echo ""
echo -e "${YELLOW}Build summary:${NC}"
echo -e "  Compiler Flags (Debug): ${GREEN}-Wall -Wextra -Wpedantic -Werror -g -O0${NC}"
echo -e "  Compiler Flags (Release): ${GREEN}-Wall -Wextra -Wpedantic -Werror -O3${NC}"
echo ""
