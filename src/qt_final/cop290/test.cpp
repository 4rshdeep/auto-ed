#include <bits/stdc++.h>
#include <armadillo>
#include "struct.h"
// #include "input.cpp"
// #include "threeD_to_ortho.cpp"
#include <math.h>
// #include "draw.cpp"
using namespace std;
using namespace arma;
#define PI 3.1415926536

void print_nodes(vector<node> v) {
    for(int i = 0; i < static_cast<int>(v.size()); i++) {
        cout << v[i].coord.x << " " << v[i].coord.y << " " << v[i].coord.z << " \n";
    }
}


rot_matrix rot_about_coord_axis(direction theta)
{
    double sin_theta = sin(theta.theta_x * PI / 180.00);
    double cos_theta = cos(theta.theta_x * PI / 180.00);
    mat Rx = eye(4, 4);
    mat Ry = eye(4, 4);
    mat Rz = eye(4, 4);

    Rx(1, 1) = cos_theta;
    Rx(1, 2) = sin_theta;
    Rx(2, 1) = -sin_theta;
    Rx(2, 2) = cos_theta;

    // UNUSED VAR
    // double invsqrt3 = 1 / sqrt(3);

    // Rx.print("Rx : ");

    sin_theta = sin(theta.theta_y * PI / 180.00);
    cos_theta = cos(theta.theta_y * PI / 180.00);

    Ry(0, 0) = cos_theta;
    Ry(0, 2) = -sin_theta;
    Ry(2, 0) = sin_theta;
    Ry(2, 2) = cos_theta;

    // Ry.print("Ry : ");
    sin_theta = sin(theta.theta_y * PI / 180.00);
    cos_theta = cos(theta.theta_y * PI / 180.00);

    Rz(0, 0) = cos_theta;
    Rz(0, 1) = sin_theta;
    Rz(1, 0) = -sin_theta;
    Rz(1, 1) = cos_theta;
    // Rz.print("Rz : ");

    rot_matrix r;
    r.Rx = Rx;
    r.Ry = Ry;
    r.Rz = Rz;

    return r;
}

mat graph_to_mat(vector<node> nodes, int cols=4){
    mat A = zeros(nodes.size(), cols);
    for (int i=0; i < static_cast<int>(nodes.size()); ++i){
            A(i, 0) = nodes[i].coord.x;
            A(i, 1) = nodes[i].coord.y;
            A(i, 2) = nodes[i].coord.z;
            A(i, 3) = 1;
    }
    return A;
}

vector<node> mat_to_graph(mat A, vector<node> vec){
    
    for (int i=0; i < static_cast<int>(vec.size()); ++i){
        vec[i].coord.x = A(i, 0);
        vec[i].coord.y = A(i, 1);
        vec[i].coord.z = A(i, 2);
    }
    // print_nodes(vec);
    return vec;
}


void print_edges(vector<edge> v) {
    for(int iter = 0 ; iter < static_cast<int>(v.size()); ++iter) {
        cout << v[iter].node1->coord.x << " " << v[iter].node1->coord.y << " " << v[iter].node2->coord.x << " " << v[iter].node2->coord.y << "\n";
    }
}

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
    v = mat_to_graph(A, v);
    // return v;
}


int main(int argc, char const *argv[])
{
    mat A = ones<mat>(5, 3);
    // A.print();
    vector<node> v; 
    for(int i=0; i<5; ++i) {
        node n;
        v.push_back(n);
    }

    v = mat_to_graph(A, v);
    
    // cout << v.size();
    // print_nodes(v);
    direction theta;
    
    theta.theta_x = 180;
    theta.theta_y = 0;
    theta.theta_z = 0;


    rotate_graph(v, theta, 1, 0, 0);

    A = graph_to_mat(v);
    A.print();

    return 0;
}