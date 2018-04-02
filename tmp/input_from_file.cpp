#include <iostream>
#include <iomanip>
#include <fstream>
#include <armadillo>

using namespace std;
using namespace arma;

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

// returns empty vector if can't read the file else a vector of nodes.
vector<node> get_2d_graph(string filename="input.txt") {
    
    int size;
    // input stream for reading from a file
    ifstream inFile;
    vector<node> v;
    
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

void check_graph(vector<node> v) {
    //check whether it makes changes
    // v[0].coord.x = -1;
    // print coordinates and neighbours
    //  v.size() if of type unsigned -> size_t
    for (size_t i = 0; i < v.size(); ++i)
    {
        node n = v[i];
        cout << "Cordinates are " << n.coord.x << " " << n.coord.y << " " << n.coord.z ;
        for (size_t j = 0; j < n.adj_list.size(); ++j)
        {
            cout << "  Neighbours are: " << (n.adj_list[j])->coord.x;
        }
        cout << endl;
    }
}

mat get_mx4_matrix(vector<node> v, int cols=4) {
    mat A = zeros(v.size(), cols);
    for (int i = 0; i < static_cast<int>(v.size()); ++i)
    {
            A(i, 0) = v[i].coord.x;
            A(i, 1) = v[i].coord.y;
            A(i, 2) = v[i].coord.z;
            A(i, 3) = 0;
    }
    return A;
}

int main() {
    std::vector<node> v = get_2d_graph();
    check_graph(v);
    mat A = get_mx4_matrix(v);
    A.print();
    return 0;
}