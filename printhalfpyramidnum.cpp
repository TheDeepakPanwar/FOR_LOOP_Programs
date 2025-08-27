/*
   This program prints a right-angled number pyramid pattern.  
   - The user enters the number of rows (n).  
   - Numbers start from 1 and increase sequentially across the rows.  
   - Each new row contains one more number than the previous row.  

   Example:  
   Input: n = 4  
   Output:  
   1  
   2 3  
   4 5 6  
   7 8 9 10  
*/


#include <iostream>
using namespace std;

int main()
{
    int n;
    cout << "Enter number of rows: ";
    cin >> n;

    int num = 1;
    for (int i = 1; i <= n; i++)
    {
        for (int j = 1; j <= i; j++)
        {
            cout << num << " ";
            num++;
        }
        cout << endl;
    }
    return 0;
}
