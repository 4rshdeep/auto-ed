#include <iostream>
#include <iomanip>
#include <fstream>
#include <armadillo>

using namespace std;

struct coordinate
{
    double x;
    double y;
    double z;
};

struct node
{
    vector<node*> adj_list; // pointer to neighbours
    coordinate coord;
};


int main() {
    double x;
    double y;
    double z;
    int size;
    

    ifstream inFile;
    
    inFile.open("input.txt");
    if (!inFile) {
        cout << "Unable to open file";
        return 0;
        // exit(1); // terminate with error
    }

    inFile >> size;
    double data[size][3];

    int i=0;
    int j = 0;

    std::vector<node> v;
    
    while (inFile >> x) {
        inFile >> y;
        inFile >> z;

        node n;
        n.coord.x = x;
        n.coord.y = y;
        n.coord.z = z;

        // cout << n.coord.x << " " << n.coord.y << " " << n.coord.z << endl;
        v.push_back(n);
        // if (j%3==0)
        // {
        //     i++;
        //     j = 0;
        // }
        // data[i][j] = x;
        // // sum = sum + x;
        // cout << "Last Input = " << x << "  and   data[" << i << "][" << j << "] = " << data[i][j] << endl;
        // j++;    
    }
    
    for (int i = 0; i < v.size(); ++i)
    {
        
        node n = v[i];
        cout << n.coord.x << " " << n.coord.y << " " << n.coord.z << endl;
    }


    inFile.close();
    return 0;
}