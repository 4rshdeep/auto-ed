#include <bits/stdc++.h>
#include <iostream>
#include <iomanip>
#include <fstream>
#include <armadillo>
#include "struct.h"

using namespace std;
using namespace arma;


// returns empty vector if can't read the file else a vector of nodes.
graph get_3D_graph(string filename="input_3D.txt") {
    graph g;
    int size;
    // input stream for reading from a file
    ifstream inFile;
    vector<node> v;
    vector<edge> e;
    // opening the input stream
    inFile.open(filename);
    if (!inFile) {
        cout << "Unable to open file" ;
        return g;
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

        edge ed;
        ed.node1 = &v[idx1];
        ed.node2 = &v[idx2];
        e.push_back(ed);
        pair_ p;
        p.a = idx1;
        p.b = idx2;
        g.edge_corr.push_back(p);
    }
    inFile.close();
    g.nodes = v;
    g.edges = e;
    return g;
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