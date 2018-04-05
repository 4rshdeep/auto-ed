#include <bits/stdc++.h>
#include <armadillo>
#include "input.cpp"
#include <math.h>

using namespace std;
using namespace arma;
#define PI 3.1415926536

dir_ratios get_dir_ratios(){
	/*!	Asks the user for the direction along which it is desired to take the projection.
	*/
	dir_ratios dir;
	double x,y,z;
	cout << "Please Enter Direction Ratios of the line-of-sight" << endl;
	cout << "Direction Ratio Component along X : ";
	cin >> x;
	cout << "Direction Ratio Component along Y : ";
	cin >> y;
	cout << "Direction Ratio Component along Z : ";
	cin >> z;
	dir.a = x;
	dir.b = y;
	dir.c = z;
	return dir;
}


mat graph_to_mat(vector<node> nodes, int cols=4){
	/*!	Takes a graph as an input.
	*	Converts the graph into a 4X4 coordinate matrix as specified in the mathematical model.
	*/
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
	/*!	Takes a coordinate matrix as an input.
	*	Converts 4X4 coordinate matrix to the graph which would lead to constriuction of this matrix.
	*/
	for (int i=0; i < static_cast<int>(vec.size()); ++i){
		vec[i].coord.x = A(i, 0);
		vec[i].coord.y = A(i, 1);
		vec[i].coord.z = A(i, 2);
	}
	return vec;
}

// input is mx4 matrix and translation factor
mat translate_graph(mat A, coordinate t_factor) {
	/*!	Takes two inputs
	*	- The matrix A (for the corresponding graph) which has to translated
	*	- The coordinate t_factor of the point that would become the origin in the translated system.
	* 	This function makes multiple calls to the function translate_coordinate for all the vertices of the input graph.
	*/
	mat T = eye(4,4);
	T(3, 0) = t_factor.x;
	T(3, 1) = t_factor.y;
	T(3, 2) = t_factor.z;
	T = A*T;
	return T;
}


// theta is in degrees
rot_matrix rot_about_coord_axis(direction theta)
{
	/*!	Takes the direction ratios as the input
	*	It returns the rotation matrices which are to be multiplied to the coordinate matrix so as to make the Z axis coincide with the given direction theta.
	*	It returns a struct of rot_matrix type which contains the three rotation matrices namely Rx, Ry and Rz.
	*/
	double sin_theta = sin(theta.theta_x * PI / 180.00);
	double cos_theta = cos(theta.theta_x * PI / 180.00);
	mat Rx = eye(4, 4);
	mat Ry = eye(4, 4);
	mat Rz = eye(4, 4);

	Rx(1, 1) = cos_theta;
	Rx(1, 2) = sin_theta;
	Rx(2, 1) = -sin_theta;
	Rx(2, 2) = cos_theta;

	sin_theta = sin(theta.theta_y * PI / 180.00);
	cos_theta = cos(theta.theta_y * PI / 180.00);

	Ry(0, 0) = cos_theta;
	Ry(0, 2) = -sin_theta;
	Ry(2, 0) = sin_theta;
	Ry(2, 2) = cos_theta;

    sin_theta = sin(theta.theta_z * PI / 180.00);
    cos_theta = cos(theta.theta_z * PI / 180.00);

	Rz(0, 0) = cos_theta;
	Rz(0, 1) = sin_theta;
	Rz(1, 0) = -sin_theta;
	Rz(1, 1) = cos_theta;

	rot_matrix r;
	r.Rx = Rx;
	r.Ry = Ry;
	r.Rz = Rz;

	return r;
}

mat find_rot(mat A, dir_ratios d){
	/*!	Takes two inputs
	*	- The matrix A which has to translated
	*	- The direction ratios of the direction which has to become the line of sight for taking the projections.
	* 	This function calls the function rot_about_coord_axis to get the rotation matrices and then multiplies the matrices with the coordinate matrix.
	* 	It returns the coordinate matrix after multiplying it with the rotation matrices.
	*/
	direction dir;		//Using constructor
	dir.theta_x = 0.00;
	dir.theta_y = 0.00;
	dir.theta_z = 0.00;
	if(d.b-0.00 > 1e-5) {
		dir.theta_x = (( acos(d.c/(sqrt( d.a*d.a + d.b*d.b )))) *(180)/ PI)*(fabs(d.b)/d.b) ;   	// into |b|/b
	}
	if(d.a-0.00 > 1e-5) {
		dir.theta_y = (-(acos (sqrt ( (d.b*d.b + d.c*d.c)/(d.a*d.a + d.b*d.b + d.c*d.c) ) )) * 180 / PI)*(fabs(d.a)/d.a) ;	// into |a|/a
	}

	rot_matrix r = rot_about_coord_axis(dir);
	mat res;
	res = A*r.Rx;
	res = res*r.Ry;

	return res;
}

mat find_projection(mat A) {
	/*!	Returns the projection of the graph after applying all the required transitions using z axis as the line-of-sight. 
	*/
	mat P = eye(4, 4);
	P(2, 2) = 0;
	A = A*P;
	return A;
}

vector<node> find_ortho(vector<node> graph){
	/*!	Takes the graph whose projection is required to be taken as an argument.
	*	Then asks the user about the direction ratios of the desired line of sight.
	*	Then converts the graph to a matrix.
	*	Finds the transitions to be done.
	*	Applies the transitions to the coordinate matrx.
	*	Converts the matrix back to a graph and returns it.
	*/
    dir_ratios dir = get_dir_ratios();
	mat A = graph_to_mat(graph);
	A = find_rot(A, dir);
	A = find_projection(A);
	return mat_to_graph(A, graph);
}


void rotate_graph(vector<node> &v, direction theta, int x, int y, int z) {
	/*!	Rotate the given graph about axis (X, Y or Z axis) depending on the input x, y and z
	* 	Finsd the rotations matrix for the given direction theta and applies only those whose corresponding input is 1.
	* 	For Rx, x is to be 1.
	* 	For Ry, y is to be 1.
	* 	For Rz, z is to be 1.
	*/
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
}
