# ColorCodex

A refactored and re-engineered C++ guessing game with support for C++98, C++11, C++14, and C++17.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![C++ Standard: 98/11/14/17](https://img.shields.io/badge/C%2B%2B-98%2F11%2F14%2F17-blue)
![Platform: Cross-Platform](https://img.shields.io/badge/Platform-Cross--Platform-brightgreen)

---

## 📋 Overview

**ColorCodex** is a complete refactoring and re-engineering of the original "Decryptix" game (1999). It implements a guessing game where players try to guess a randomly selected sequence of letters.

**Key Features:**
- Pure C++98 with raw pointers and pointer arithmetic
- Multi-standard support (C++98, C++11, C++14, C++17)
- CMake build system with compiler flag optimization
- Comprehensive test suite
- Cross-platform compatibility (Windows, Linux, macOS)
- Strict compiler warnings enabled by default
- Linked list data structure implementation

**Version:** 0.0.0.1  
**License:** MIT License

---

## 🎯 Original Attribution

**Original Game:** Decryptix v0.3 (1999)  
**Original Copyright:** © 1999 Liberty Associates, Inc.

**Refactored & Re-engineered (2026):**
- **Chief Designer:** Zebbediah Winston Beck
- **Organization:** Zero Gravity Engineering (Pty) Ltd
- **License:** MIT License

This project maintains the original game logic while completely refactoring the codebase for modern development practices, code quality, and maintainability.

---

## 🚀 Quick Start

### Prerequisites
- CMake 3.10+
- GCC, Clang, or MSVC compiler
- Make (for traditional builds)

### Build (Default: C++98)

```bash
./build.sh Debug      # Debug build with symbols
./build.sh Release    # Optimized release build
```

### Build with Specific C++ Standard

```bash
# C++98 (maximum compatibility)
./build-cpp98.sh Debug

# C++11
./build-cpp11.sh Debug

# C++14
./build-cpp14.sh Debug

# C++17
./build-cpp17.sh Debug
```

### Run Tests

```bash
./test.sh
```

### Run Application

```bash
./build/bin/colorcodex
```

---

## 🏗️ Project Structure

```
ColorCodex/
├── CMakeLists.txt              # CMake configuration (multi-standard)
├── build.sh                    # Default build script (C++98)
├── build-cpp98.sh             # C++98 build
├── build-cpp11.sh             # C++11 build
├── build-cpp14.sh             # C++14 build
├── build-cpp17.sh             # C++17 build
├── test.sh                     # Test suite
├── Makefile                    # GNU Make alternative
│
├── Game.h / Game.cpp          # Game logic
├── LinkedList.h / LinkedList.cpp  # Linked list implementation
├── ZebDriver.cpp              # Main entry point
├── Zebdef0514.h              # Definitions and constants
│
├── LICENSE                    # MIT License with attribution
├── README.md                  # This file
├── COMPILER_FLAGS.md          # Detailed compiler flags guide
│
└── build/                     # Generated binaries (C++98)
    ├── build-cpp11/          # C++11 build artifacts
    ├── build-cpp14/          # C++14 build artifacts
    └── build-cpp17/          # C++17 build artifacts
```

---

## 🔧 Compiler Flags

### All Builds (C++98, C++11, C++14, C++17)

**Common Flags:**
```
-Wall -Wextra -Wpedantic -Werror
-Wshadow -Wdouble-promotion -Wformat=2 -Wnull-dereference
```

**Debug Configuration:**
```
-g -O0 -DDEBUG_MODE
```

**Release Configuration:**
```
-O3 -DNDEBUG
```

---

## 🛠️ Build with CMake Directly

### C++98 (Default)
```bash
mkdir -p build && cd build
cmake -DCXX_STANDARD=98 -DCMAKE_BUILD_TYPE=Debug ..
cmake --build . -j$(nproc)
ctest --output-on-failure
```

### C++11
```bash
mkdir -p build-cpp11 && cd build-cpp11
cmake -DCXX_STANDARD=11 -DCMAKE_BUILD_TYPE=Debug ..
cmake --build . -j$(nproc)
ctest --output-on-failure
```

### C++14
```bash
mkdir -p build-cpp14 && cd build-cpp14
cmake -DCXX_STANDARD=14 -DCMAKE_BUILD_TYPE=Debug ..
cmake --build . -j$(nproc)
ctest --output-on-failure
```

### C++17
```bash
mkdir -p build-cpp17 && cd build-cpp17
cmake -DCXX_STANDARD=17 -DCMAKE_BUILD_TYPE=Debug ..
cmake --build . -j$(nproc)
ctest --output-on-failure
```

---

## 🧪 Test Suite

The comprehensive test suite validates:

1. ✓ Executable runs successfully
2. ✓ Build configuration verified
3. ✓ Compiler flags configured correctly
4. ✓ CTest suite execution
5. ✓ Build artifacts validation

Run tests:
```bash
./test.sh
```

---

## 🎮 Game Instructions

1. **Start the game:**
   ```bash
   ./build/bin/colorcodex
   ```

2. **Follow prompts:**
   - Enter number of letters (2-26)
   - Enter number of positions (2-10)
   - Choose to allow duplicates (y/n)

3. **Play:**
   - Enter guesses matching the format
   - Receive feedback on correct letters and positions
   - Try to guess the solution in minimum rounds

---

## 🔐 License & Attribution

This project is licensed under the **MIT License**. See [LICENSE](LICENSE) file for details.

### Original Work
- **Game:** Decryptix v0.3 (1999)
- **Original Copyright:** © 1999 Liberty Associates, Inc.

### Modern Implementation
- **Refactored:** 2026
- **Developer:** Zebbediah Winston Beck
- **Organization:** Zero Gravity Engineering (Pty) Ltd

---

## 🌍 Platform Support

| Platform | Status | Notes |
|----------|--------|-------|
| Linux (GCC) | ✅ Supported | Primary development platform |
| Linux (Clang) | ✅ Supported | Full C++98-C++17 support |
| Windows (MSVC) | ✅ Supported | Visual C++ 2015+ |
| macOS (Clang) | ✅ Supported | Full C++98-C++17 support |

---

## 📚 Standards Compliance

✅ **C++98:** Full compatibility with ISO/IEC 14882:1998  
✅ **C++11:** Forward compatible with ISO/IEC 14882:2011  
✅ **C++14:** Forward compatible with ISO/IEC 14882:2014  
✅ **C++17:** Forward compatible with ISO/IEC 14882:2017  

All standards build with `-Werror` (warnings as errors) for code quality.

---

**Made with ❤️ by Zero Gravity Engineering (Pty) Ltd**

*Refactoring excellence. Engineering integrity. Code quality.*

**Last Updated:** January 19, 2026  
**Version:** 0.0.0.1  
**License:** MIT
