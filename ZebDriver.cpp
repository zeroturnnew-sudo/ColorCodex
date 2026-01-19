#include "Zebdef0514.h"
#include "Game.h"
#include <iostream>

using namespace std;

int main()
{
    cout << "Original version - Decryptix. (c)Copyright 1999 Liberty ";
    cout << "Associates, Inc. Version 0.3\n\n" << endl;
    cout << "New version - ColorCodex. (c)Copyright 2026 Zero Gravity Engineering (Pty) Ltd. Version 0.0.0.1\n\n" << endl;
    cout << "Re-engineered and refactored entirely on new code for MIT and similar" << endl;
    cout << "license by grace and through the work of Zebbediah Winston Beck" << endl;
    cout << "for Zero Gravity Engineering (Pty) Ltd. " << endl;

    bool playAgain = true;

    while (playAgain)
    {
        char choice = ' ';
        Game theGame;
        theGame.Play();

        cout << "\nThe answer: ";
        theGame.GetSolution().Display();
        cout << "\n\n" << endl;

        while (choice != 'y' && choice != 'n')
        {
            cout << "\nPlay again (y/n): ";
            cin >> choice;
        }

        playAgain = (choice == 'y') ? true : false;
    }

    return 0;
}

