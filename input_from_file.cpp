#include <iostream>
#include <iomanip>
#include <fstream>
#include <armadillo>

using namespace std;

int main() {
    // float sum = 0;
    float x;
    ifstream inFile;
    
    inFile.open("input.txt");
    if (!inFile) {
        cout << "Unable to open file";
        return 0;
        // exit(1); // terminate with error
    }

    int num;
    inFile >> num;
    cout << num;
    x = num;
    double data[num][3];

    int i=0;
    int j = 0;

    while (inFile >> x) {
        if (j%3==0)
        {
            i++;
            j = 0;
        }
        data[i][j] = x;
        // sum = sum + x;
        cout << "Last Input = " << x << "  and   data[" << i << "][" << j << "] = " << data[i][j] << endl;
        j++;    
    }
    

    // arma::mat arma_matrix( data, 6, 3, true, true );
    // arma_matrix.print();
    // cout << num;

    inFile.close();
    return 0;
}