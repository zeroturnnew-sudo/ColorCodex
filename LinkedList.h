#ifndef LINKEDLIST_H 
#define LINKEDLIST_H 

#include "Zebdef0514.h"



class Node // abstract data type
{
public:
    Node() {}
    virtual ~Node() {}
    virtual void Display() const { }
    virtual int HowMany(char c) const = 0;
    virtual Node* Insert(char theCharacter) = 0;
    virtual char operator[](int offset) = 0;
private:
};



class InternalNode : public Node
{
public:
    InternalNode(char theCharacter, Node* next);
    virtual ~InternalNode();
    virtual void Display() const;
    virtual int HowMany(char c) const;
    virtual Node* Insert(char theCharacter);
    virtual char operator[](int offset);



private:

char myChar;

Node * nextNode;

};



class TailNode : public Node
{
public:
    TailNode() {}
    virtual ~TailNode() {}
    virtual int HowMany(char c) const;
    virtual Node* Insert(char theCharacter);
    virtual char operator[](int offset);

private :



};


class LinkedList : public Node {

public:

LinkedList () ;

virtual ~LinkedList () ;

virtual void Display() const;

virtual int HowMany (char c) const;

virtual char operator[ ] (int offset);


bool Add(char c) ;

void SetDuplicates(bool dupes);



private:

Node * Insert(char c);

bool duplicates;

Node * nextNode;

};



#endif
