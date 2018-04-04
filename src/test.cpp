#include <bits/stdc++.h>
#include <armadillo>
#include "input.cpp"
#include "threeD_to_ortho.cpp"
#include <math.h>

using namespace std;
using namespace arma;

void rotate_graph(vector<node> &v, direction theta, int x, int y, int z) {
    rot_matrix r = rot_about_coord_axis(theta);
    mat A = graph_to_mat(v);
    if(x == 1) {
        A = A*r.Rx;
    }
    if(y == 1) {
        A = A*r.Ry;
    }
    if(z == 1) {
        A = A*r.Rz;
    }
    mat_to_graph(A, v);   
}

int main(int argc, char const *argv[])
{
    mat A = eye<mat>(5,5);
    vector<node> v;
    mat_to_graph(A, v);
    direction theta;
    
    theta.theta_x = 180;
    theta.theta_y = 0;
    theta.theta_z = 0;


    rotate_graph(v, theta, 1, 0, 0);

    A = graph_to_mat(v);
    A.print();

    return 0;
}