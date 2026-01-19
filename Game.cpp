#include <time.h>
#include <cstring>
#include "Game.h"
#include "Zebdef0514.h"

Game::Game() :
    round(1),
    howManyPositions(0),
    howManyLetters(0),
    duplicates(false)
{
    bool valid = false;

    while (!valid)
    {
        while (howManyLetters < minLetters || howManyLetters > maxLetters)
        {
            cout << "How many letters? (" ;
            cout << minLetters << " - " << maxLetters << "): ";
            cin >> howManyLetters;

            if (howManyLetters < minLetters || howManyLetters > maxLetters)
            {
                cout << "please enter a number between ";
                cout << minLetters << " and " << maxLetters << endl;
            }
        }

        while (howManyPositions < minPos || howManyPositions > maxPos)
        {
            cout << "How many positions? (";
            cout << minPos << " - " << maxPos << "): ";
            cin >> howManyPositions;

            if (howManyPositions < minPos || howManyPositions > maxPos)
            {
                cout << "please enter a number between ";
                cout << minPos << " and " << maxPos << endl;
            }
        }

        char choice = ' ';

        while (choice != 'y' && choice != 'n')
        {
            cout << "Allow duplicates (y/n)? ";
            cin >> choice;
        }

        duplicates = (choice == 'y') ? true : false;
        solution.SetDuplicates(duplicates);

        if (!duplicates && howManyPositions > howManyLetters)
        {
            cout << "I can't put " << howManyLetters << " letters in " << howManyPositions;
            cout << " positions without duplicates! Please try again.\n";
            howManyLetters = 0;
            howManyPositions = 0;
        }
        else
        {
            valid = true;
        }
    }

    srand((unsigned)time(NULL));

    for (int i = 0; i < howManyPositions;)
    {
        int nextValue = rand() % (howManyLetters);
        char theChar = alpha[nextValue];
        if (solution.Add(theChar))
            i++;
    }

    cout << "Exiting constructor. List: ";
    solution.Display();
    cout << endl;
}

inline int Game::HowMany(const char* theString, char theChar)
{
    int count = 0;
    for (int i = 0; i < (int)strlen(theString); i++)
        if (theString[i] == theChar)
            count++;
    return count;
}

void Game::Play()
{
    char guess[80];
    int correct = 0;
    int position = 0;

    while (position < howManyPositions)
    {
        cout << "\nRound " << round;
        cout << " Enter " << howManyPositions;
        cout << " letters between " ;
        cout << alpha[0] << " and " ;
        cout << alpha[howManyLetters - 1] << ": ";
        cin >> guess;

        if ((int)strlen(guess) != howManyPositions)
        {
            cout << "\n ** Please enter exactly ";
            cout << howManyPositions << " letters. ** \n";
            continue;
        }

        round++;
        cout << "\nYour guess: " << guess << endl;
        Score(guess, correct, position);

        cout << "\t\t" << correct << " correct, ";
        cout << position << " in position." << endl;
    }

    cout << " \n\nCongratulations ! It took you ";

    if (round <= 6)
        cout << "only ";

    if (round - 1 == 1)
        cout << "one round!" << endl;
    else
        cout << round - 1 << " rounds." << endl;
}

void Game::Score(const char* thisGuess, int& correct, int& position)
{
    correct = 0;
    position = 0;

    for (int i = 0; i < howManyLetters; i++)
    {
        int howManyInGuess = HowMany(thisGuess, alpha[i]);
        int howManyInAnswer = solution.HowMany(alpha[i]);
        correct += howManyInGuess < howManyInAnswer ? howManyInGuess : howManyInAnswer;
    }

    for (int i = 0; i < howManyPositions; i++)
    {
        if (thisGuess[i] == solution[i])
            position++;
    }

    ASSERT(position <= correct);
}