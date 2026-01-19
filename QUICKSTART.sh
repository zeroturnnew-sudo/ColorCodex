#!/bin/bash

# ColorCodex - Quick Start Guide
# Fast setup and build instructions

cat << 'EOF'

╔════════════════════════════════════════════════════════════════════╗
║                   ColorCodex - Quick Start Guide                  ║
║                   CMake Build System Setup                         ║
╚════════════════════════════════════════════════════════════════════╝

🚀 GETTING STARTED IN 3 STEPS:

Step 1: Build the project
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    ./build.sh Debug

This will:
  • Create a build/ directory
  • Run CMake configuration
  • Compile all source files with debug symbols
  • Output executable to: build/bin/colorcodex


Step 2: Run tests
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    ./test.sh

This will:
  • Verify the executable runs
  • Check build configuration
  • Confirm compiler flags are set
  • Run CTest suite
  • Validate build artifacts


Step 3: Run the application
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    ./build/bin/colorcodex

The ColorCodex game will start!


════════════════════════════════════════════════════════════════════════

📚 BUILD OPTIONS:

Debug Build (default):
  ./build.sh Debug
  - Includes debug symbols (-g)
  - No optimization (-O0)
  - Slower execution, easier debugging

Release Build (optimized):
  ./build.sh Release
  - Full optimization (-O3)
  - Smaller size
  - Faster execution

Alternative: Using Make
  make debug              # Build debug version
  make release            # Build release version
  make test               # Run tests
  make clean              # Clean build directory


════════════════════════════════════════════════════════════════════════

⚙️  COMPILER FLAGS IN USE:

Enabled by default:
  ✓ -Wall           - All standard warnings
  ✓ -Wextra         - Extra warnings
  ✓ -Wpedantic      - Strict ISO C++ compliance
  ✓ -Werror         - Warnings treated as errors
  ✓ -Wshadow        - Variable shadowing detection
  ✓ -Wformat=2      - Format string security
  ✓ -Wnull-dereference - Null pointer detection

This ensures high code quality and catches potential bugs!


════════════════════════════════════════════════════════════════════════

❓ TROUBLESHOOTING:

Q: CMake command not found
A: sudo apt-get install cmake

Q: Build fails with compiler errors
A: Ensure GCC/Clang is installed: sudo apt-get install build-essential

Q: Want to rebuild from scratch
A: ./build.sh Debug  (automatically cleans and rebuilds)

Q: Want to see all available commands
A: make help


════════════════════════════════════════════════════════════════════════

📖 DOCUMENTATION FILES:

  README.md          - Full project documentation
  COMPILER_FLAGS.md  - Detailed compiler flags guide
  CMakeLists.txt     - CMake configuration details
  Makefile           - Make targets reference
  BUILD_SETUP.txt    - Complete setup summary


════════════════════════════════════════════════════════════════════════

✅ YOU'RE ALL SET!

Next steps:
  1. Run: ./build.sh Debug
  2. Run: ./test.sh
  3. Run: ./build/bin/colorcodex
  4. Read: README.md for more details

═════════════════════════════════════════════════════════════════════════

Version: 0.0.0.1
Organization: Zero Gravity Engineering (Pty) Ltd.
License: MIT

EOF
