#include "LinkedList.h"

InternalNode::InternalNode(char theCharacter, Node* next)
    : myChar(theCharacter), nextNode(next)
{
}

InternalNode::~InternalNode()
{
    delete nextNode;
}

void InternalNode::Display() const
{
    cout << myChar;
    nextNode->Display();
}

int InternalNode::HowMany(char theChar) const
{
    int myCount = 0;
    if (myChar == theChar)
        myCount++;
    return myCount + nextNode->HowMany(theChar);
}

Node* InternalNode::Insert(char theCharacter)
{
    nextNode = nextNode->Insert(theCharacter);
    return this;
}

char InternalNode::operator[](int offset)
{
    if (offset == 0)
        return myChar;
    else
        return (*nextNode)[offset - 1];
}

int TailNode::HowMany(char) const
{
    return 0;
}

Node* TailNode::Insert(char theChar)
{
    return new InternalNode(theChar, this);
}

char TailNode::operator[](int)
{
    ASSERT(false);
    return ' ';
}

LinkedList::LinkedList() : duplicates(true)
{
    nextNode = new TailNode();
}

LinkedList::~LinkedList()
{
    delete nextNode;
}

void LinkedList::Display() const
{
    nextNode->Display();
}

int LinkedList::HowMany(char theChar) const
{
    return nextNode->HowMany(theChar);
}

Node* LinkedList::Insert(char theChar)
{
    nextNode = nextNode->Insert(theChar);
    return this;
}

char LinkedList::operator[](int offset)
{
    return (*nextNode)[offset];
}

bool LinkedList::Add(char c)
{
    if (!duplicates && HowMany(c))
        return false;
    Insert(c);
    return true;
}

void LinkedList::SetDuplicates(bool dupes)
{
    duplicates = dupes;
}
