#include<bits/stdc++.h>

struct coordinate
{
    double x;
    double y;
    double z;
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

