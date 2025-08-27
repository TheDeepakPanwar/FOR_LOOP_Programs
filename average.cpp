// C++ Program to Find Average of N Numbers using For loop
#include <iostream>
using namespace std;

int main() {
    int x, i;
    float avg = 0, y;
    
    // x - To store the number of elements
    // avg - To store the total average value
    // y - To store the total input numbers

    cout << "Enter the number of elements to calculate the average::\n";
    cin >> x;
    
    cout << "Enter " << x << " elements one by one\n\n";
    for(i = 0; i < x; i++) {
        cin >> y;
        avg += y;
    }

    avg /= x;
    cout << "\nThe average of the entered input numbers is = " << avg;
    return 0;
}
