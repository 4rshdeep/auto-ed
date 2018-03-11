#include <bits/stdc++.h>
#include <iostream>
#include <iomanip>
#include <fstream>
#include <armadillo>
#include "struct.h"
// #include "threeD_to_ortho.cpp"
// #include "twoD_to_threeD.cpp"

using namespace std;
using namespace arma;


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
    v[0].coord.x = -1;
    
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
            A(i, 3) = 1;
    }
    return A;
}

// int main() {
//     std::vector<node> v = get_2d_graph();
//     // check_graph(v);
//     mat A = get_mx4_matrix(v);
//     A.print();
//     return 0;
// }




// class input
// {
// public:
// 
	// int select_mode() {
	// /*! Asks the user to choose the mode of operation out of the following:
	// * 	1.  3D input to orthographic views or
	// *	2. 	2D orthographic views as input to generate isometric views.
	// */
	// }
	// 
	// int* get_input() {
	// /*! Fetches the input file and validates the format in accordance with the mode seleted by the user. 		
	// */
	// }
// 
	// graph threeD_to_graph() {
	// /*! Converts the given 3D input into a graph. Graph is described as follows
	// * 	- Graph is a list of vertices
	// *	- Each vertex itself has a coordinate value associated with itself 
	// *	- Each vertex also has an adjacency list that stores the coordinates of its neighbours (i.e the vertices with the current vertex shares an edge)
	// */
	// }
// 
	// graph twoD_to_graph() {
	// /*! Converts the 2D input to a probable 3D graph descriptions according to the following procedure.
	// * 	- Find correspondence of different points in all 3 orthographic views to get the 3D description of the vertices in the 3D model.
	// *	- Find and add all the probable edges to the graph formed in last step. 
	// *	- Check for the presence of redundant edges and vertices in the graph formed.
	// * 	- Get orthographic views of the graph generated and match with the initial input orthographic views.
	// * 	- If the views match then the graph is the final description of the 3D model.
	// *	- Else check again for redundancy until the views match with each other.
	// */
	// }
// 
// };
