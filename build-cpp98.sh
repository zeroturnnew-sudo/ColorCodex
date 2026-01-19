#!/bin/bash

# ColorCodex Build Script - C++98 (Maximum Compatibility)
# Builds with C++98 standard and maximum warning flags

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUILD_DIR="${SCRIPT_DIR}/build-cpp98"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

BUILD_TYPE=${1:-Debug}

echo -e "${YELLOW}========================================${NC}"
echo -e "${YELLOW}ColorCodex C++98 Build${NC}"
echo -e "${YELLOW}========================================${NC}"
echo -e "C++ Standard: ${GREEN}C++98${NC}"
echo -e "Build Type: ${GREEN}${BUILD_TYPE}${NC}"
echo ""

if [ ! -d "${BUILD_DIR}" ]; then
    mkdir -p "${BUILD_DIR}"
fi

cd "${BUILD_DIR}"

cmake -DCXX_STANDARD=98 -DCMAKE_BUILD_TYPE="${BUILD_TYPE}" "${SCRIPT_DIR}" || {
    echo -e "${RED}CMake configuration failed!${NC}"
    exit 1
}

cmake --build . --config "${BUILD_TYPE}" -j$(nproc) || {
    echo -e "${RED}Build failed!${NC}"
    exit 1
}

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}C++98 Build completed successfully!${NC}"
echo -e "${GREEN}========================================${NC}"
echo -e "Executable: ${GREEN}${BUILD_DIR}/bin/colorcodex${NC}"
echo ""
