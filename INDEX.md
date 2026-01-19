# ColorCodex Project - File Index

## Quick Navigation

### 🚀 START HERE
- [QUICKSTART.sh](QUICKSTART.sh) - Interactive 3-step quick start guide (read this first!)

### 📚 Documentation
- [README.md](README.md) - Complete project documentation, build guide, troubleshooting
- [COMPILER_FLAGS.md](COMPILER_FLAGS.md) - Detailed compiler flags reference (287 lines)
- [BUILD_SETUP.txt](BUILD_SETUP.txt) - Setup summary and overview
- [MIGRATION_SUMMARY.md](MIGRATION_SUMMARY.md) - What was changed and why
- **This File** - Navigation guide

### 🔨 Build System
- [CMakeLists.txt](CMakeLists.txt) - CMake configuration for cross-platform builds
- [Makefile](Makefile) - GNU Make alternative (make debug, make test, etc.)
- [build.sh](build.sh) - Automated build script (./build.sh Debug)
- [test.sh](test.sh) - Test automation script (./test.sh)

### 💻 Source Code
- [Game.h](Game.h) / [Game.cpp](Game.cpp) - Game logic
- [LinkedList.h](LinkedList.h) / [LinkedList.cpp](LinkedList.cpp) - Data structures
- [ZebDriver.cpp](ZebDriver.cpp) - Main entry point
- [Zebdef0514.h](Zebdef0514.h) - Definitions and constants

---

## Recommended Reading Order

1. **First Time?** → Start with [QUICKSTART.sh](QUICKSTART.sh)
2. **Want Details?** → Read [README.md](README.md)
3. **Compiler Flags?** → Check [COMPILER_FLAGS.md](COMPILER_FLAGS.md)
4. **What Changed?** → See [MIGRATION_SUMMARY.md](MIGRATION_SUMMARY.md)
5. **Setup Reference?** → Look at [BUILD_SETUP.txt](BUILD_SETUP.txt)

---

## Common Commands

### Build
```bash
./build.sh Debug              # Build with debug symbols
./build.sh Release            # Build optimized
make debug                    # Alternative: using make
make release                  # Alternative: release with make
```

### Test
```bash
./test.sh                     # Run test suite
make test                     # Alternative: using make
```

### Run
```bash
./build/bin/colorcodex        # Execute the game
```

### Clean
```bash
make clean                    # Remove build artifacts
rm -rf build                  # Manual cleanup
```

---

## File Purposes

| File | Type | Purpose |
|------|------|---------|
| CMakeLists.txt | Config | Cross-platform build configuration |
| Makefile | Config | GNU Make targets |
| build.sh | Script | Automated build (recommended) |
| test.sh | Script | Test automation |
| README.md | Docs | Full documentation |
| COMPILER_FLAGS.md | Docs | Flag reference guide |
| QUICKSTART.sh | Docs | Interactive quick start |
| BUILD_SETUP.txt | Docs | Setup overview |
| MIGRATION_SUMMARY.md | Docs | Migration details |

---

## Compiler Flags Enabled

### All Builds
- `-Wall -Wextra -Wpedantic -Werror`
- `-Wshadow -Wdouble-promotion -Wformat=2 -Wnull-dereference`

### Debug
- `-g -O0 -DDEBUG`

### Release
- `-O3 -DNDEBUG`

---

## Project Info

- **Project:** ColorCodex
- **Version:** 0.0.0.1
- **Organization:** Zero Gravity Engineering (Pty) Ltd.
- **License:** MIT
- **C++ Standard:** C++17 (required)

---

## Support

For help:
1. Check [README.md](README.md) troubleshooting section
2. Review [COMPILER_FLAGS.md](COMPILER_FLAGS.md) for flag details
3. Read [BUILD_SETUP.txt](BUILD_SETUP.txt) for complete overview

---

**Last Updated:** January 19, 2026
