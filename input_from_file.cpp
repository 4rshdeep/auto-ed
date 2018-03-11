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

vector<node> get_2d_graph(string filename="input.txt") {
    
    int size;
    // input stream for reading from a file
    ifstream inFile;
    vector<node> v;
    
    return v;
    // opening the input stream
    inFile.open(filename);
    if (!inFile) {
        cout << "Unable to open file";
        return v;
    }

    inFile >> size;

    // file contains coordinates and edges
    // edges have been described using two numbers corresponding
    // to the index they appear in the file starting from zero
    int iter = size; 
    while (iter > 0) {
        node n;
        inFile >> n.coord.x;
        inFile >> n.coord.y;
        inFile >> n.coord.z;

        v.push_back(n);
        iter--;
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
        v[idx1].adj_list.push_back(&v[idx2]);
        v[idx2].adj_list.push_back(&v[idx1]);
    }
    inFile.close();

    return v;
}


int main() {
    string filename = "input.txt";
    double x;
    double y;
    double z;
    int size;
    
    // input stream for reading from a file
    ifstream inFile;
    
    // opening the input stream
    inFile.open(filename);
    if (!inFile) {
        cout << "Unable to open file";
        return 1;
    }

    inFile >> size;
    int i=0;
    int j = 0;

    // file contains coordinates and edges
    // edges have been described using two numbers corresponding
    // to the index they appear in the file starting from zero
    std::vector<node> v;
    int iter = size; 
    while (iter > 0) {
        node n;
        inFile >> n.coord.x;
        inFile >> n.coord.y;
        inFile >> n.coord.z;

        v.push_back(n);
        iter--;
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
        // node* n1 = &v[idx1];
        // node* n2 = &v[idx2];
        // v[idx1].adj_list.push_back(n2);
        v[idx1].adj_list.push_back(&v[idx2]);
        v[idx2].adj_list.push_back(&v[idx1]);
        // v[idx2].adj_list.push_back(n1);
    }

    //check whether it makes changes
    v[0].coord.x = -1;

    // print coordinates and neighbours
    // for (int i = 0; i < v.size(); ++i)
    // {
    //     node n = v[i];
    //     cout << "Cordinates are " << n.coord.x << " " << n.coord.y << " " << n.coord.z << "  Neighbours are: ";
    //     for (int j = 0; j < n.adj_list.size(); ++j)
    //     {
    //         cout << (n.adj_list[j])->coord.x << endl;
    //     }
    //     cout << endl;
    // }

    inFile.close();
    return 0;
}