/*
   This program takes two integers from the user: a starting number and an ending number.  
   It then prints all the even numbers in that range (inclusive).  
*/

#include <iostream>
using namespace std;

int main()
{
    int start, end;

    // take input from user
    cout << "Enter the starting number: ";
    cin >> start;
    cout << "Enter the ending number: ";
    cin >> end;

    cout << "Even numbers between " << start << " and " << end << " are: " << endl;

    // make sure loop starts from the first even number
    if(start % 2 != 0)
        start++; // if start is odd, move to next even number

    for(int i = start; i <= end; i += 2)
    {
        cout << i << "\t";
    }

    cout << endl;

    return 0;
}
