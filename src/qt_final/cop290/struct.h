#ifndef STRUCT_H
#define STRUCT_H


#include <bits/stdc++.h>
#include <armadillo>

using namespace arma;
using namespace std;

struct coordinate
{
    double x;
    double y;
    double z;
};

struct node
{
    std::vector<node *> adj_list; // pointer to neighbours
    coordinate coord;
};

struct edge
{
    node *node1;
    node *node2;
};

struct pair_
{
    int a;
    int b;
};

struct graph
{
    vector<node> nodes;
    vector<edge> edges;
    vector<pair_> edge_corr;
};

struct threeView
{
    vector<node> n1;
    vector<edge> e1;
    vector<node> n2;
    vector<edge> e2;
    vector<node> n3;
    vector<edge> e3;
};

// struct graph
// {
// 	std::vector<node> g;
// };

struct direction
{
    double theta_x;
    double theta_y;
    double theta_z;
};

struct rot_matrix
{
    mat Rx;
    mat Ry;
    mat Rz;
};

struct dir_ratios
{
    double a;
    double b;
    double c;
};
#endif // STRUC_H
