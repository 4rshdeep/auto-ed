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
    
    // input stream for reading from a file
    ifstream inFile;
    
    // opening the input stream
    inFile.open("input.txt");
    if (!inFile) {
        cout << "Unable to open file";
        return 0;
    }

    inFile >> size;
    double data[size][3];

    int i=0;
    int j = 0;


    // file contains coordinates and edges
    // edges have been described using two numbers corresponding
    // to the index they appear in the file starting from zero
    std::vector<node> v;
    int iter = size; 
    while (iter > 0) {
        iter--;
        inFile >> x;
        inFile >> y;
        inFile >> z;

        node n;
        n.coord.x = x;
        n.coord.y = y;
        n.coord.z = z;

        v.push_back(n);
    }
    
    //  Take edges.
    int edges;
    inFile >> edges;
    int idx1;
    int idx2;
    for (int i = 0; i < edges; ++i)
    {
        inFile >> idx1;
        inFile >> idx2;
        node* n1 = &v[idx1];
        node* n2 = &v[idx2];

        v[idx1].adj_list.push_back(n2);
        v[idx2].adj_list.push_back(n1);
    }

    //check whether it makes changes
    // v[0].coord.x = -1;

    // print coordinates and neighbours
    // for (int i = 0; i < v.size(); ++i)
    // {
    //     node n = v[i];
    //     cout << "Cordinates are " << n.coord.x << " " << n.coord.y << " " << n.coord.z << "  Neighbours are: ";
    //     for (int j = 0; j < n.adj_list.size(); ++j)
    //     {
    //         cout << j << ") " << (n.adj_list[j])->coord.x << endl;
    //     }
    //     cout << endl;
    // }

    inFile.close();
    return 0;
}