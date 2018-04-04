#include<bits/stdc++.h>
#include <armadillo>

using namespace arma;

struct coordinate
{
    double x;
    double y;
    double z;
};

struct pair {
	int a;
	int b;
};

struct node
{
    std::vector<node*> adj_list; // pointer to neighbours
    coordinate coord;
};

struct graph
{
	std::vector<node> g;
};

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