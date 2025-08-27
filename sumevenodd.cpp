/** 
 This code accepts N numbers from the user, then prints 
 the sum of even numbers and sum of odd numbers 
*/

#include <iostream>
using namespace std;

int main()
{
    int N; // how many numbers
    int n; // current number
    int sumeven = 0; // sum of even numbers
    int sumodd = 0;  // sum of odd numbers

    // ask user how many numbers they want
    cout << "Enter how many numbers you want to input: ";
    cin >> N;

    for(int i = 1; i <= N; i++)
    {
        cout << "Enter number " << i << " : ";
        cin >> n;

        if (n % 2 == 0) // even
        {
            sumeven += n;
        }
        else // odd
        {
            sumodd += n;
        }
    }

    // print results
    cout << "The sum of even numbers is : " << sumeven << endl;
    cout << "The sum of odd numbers is  : " << sumodd << endl;

    return 0; // signal to OS everything works fine
}
/** End of main function */
