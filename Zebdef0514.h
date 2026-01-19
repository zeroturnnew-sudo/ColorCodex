#ifndef DEFINED
#define DEFINED

#include <iostream>
#include <cstdlib>
#include <cstring>

using namespace std;

const char alpha[] = "abcdefghijklmnopqrstuvwxyz";

const int minPos = 2;
const int maxPos = 10;
const int minLetters = 2;
const int maxLetters = 26;

// Avoid DEBUG macro conflict - use different name
#define DEBUG_MODE 1

#ifdef DEBUG_MODE
   #define ASSERT(x) \
            if (!(x)) \
            { \
               cout << "ERROR!! Assert " << #x << " failed\n"; \
               cout << " on line " << __LINE__ << "\n"; \
               cout << " in file " << __FILE__ << "\n"; \
            }
#else
   #define ASSERT(x) ((void)0)
#endif

/*
MIT License

Copyright (c) 2026 Zero Gravity Engineering (Pty) Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

Chief Designer and Architect of Engineering Infrastructure:
Zebbediah Winston Beck
*/

#endif
