
#include <iostream>
#include <iomanip>
#include <fstream>
using namespace std;

int main() {
    float sum = 0;
    float x;
    ifstream inFile;
    
    inFile.open("input.txt");
    if (!inFile) {
        cout << "Unable to open file";
        return 0;
        // exit(1); // terminate with error
    }
    
    while (inFile >> x) {
        sum = sum + x;
        cout << "Last Input = " << x << "  and   Sum = " << sum << endl;    
    }
    
    inFile.close();
    return 0;
}