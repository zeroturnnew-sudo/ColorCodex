#ifndef GAME_H 
#define GAME_H

#include "Zebdef0514.h"

#include "LinkedList.h"

class Game

{

public :

Game ( ) ;

~Game( ) {}

void Display(const LinkedList * pList)const

{

pList->Display() ;

}

void Play ( ) ;

const LinkedList & GetSolution ( ) const

{

return solution;

}

void Score(

const char * thisGuess, int & correct, int & position );


private:
    int round;
    int howManyPositions;
    int howManyLetters;
    bool duplicates;
    int HowMany(const char* theString, char theChar);
    LinkedList solution;

};

#endif