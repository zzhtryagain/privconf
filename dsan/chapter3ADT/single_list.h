#ifndef SINGLE_LIST_H
#define SINGLE_LIST_H

typedef int ElementType;
typedef struct Nodes* List;
typedef struct Nodes* Position;
typedef struct Nodes{
    ElementType element;
    Position next;
}Node;

List MakeEmpty(List list);
int IsEmpty(List list);
int IsLast(Position position, List list);
Position Find(ElementType x, List list);
Position FindPrivous(ElementType x, List list);
void Delete(ElementType x, List list);
void Insert(ElementType x, List list, Position position);
void DeleteList(List list);
Position Header(List list);
Position First(List list);
Position Advance(Position position);
ElementType Retrieve(Position position);
List ReverseList(List list);

#endif //SINGLE_LIST_H