#include <bits/stdc++.h>
#include <armadillo>
#include "input.cpp"
#include <math.h>

using namespace std;
using namespace arma;
#define PI 3.1415926536

// class threeD_to_ortho
// {
// public:
// 	void get_direction_for_projection() {
// 	/*!	Asks the user for the direction along which it is desired to take the projection.
// 	*/
// 	}

// 	void get_transitions() {
// 	/*!	This functon takes the graph and the directions that the user has specified.
// 	* 	Finds and applies the transitions required to be applied to the graph in order to get the projection along the desired direction.
// 	*/
// 	}

// 	graph translate_graph(graph g, coordinate c) {
// 	/*!	Takes two inputs
// 	*	- The graph g which has to translated
// 	*	- The coordinate c of the point that would become the origin in the translated system.
// 	* 	This function makes multiple calls to the function translate_coordinate for all the vertices of the input graph.
// 	*/
// 	}

// 	coordinate translate_coordinate(coordinate c1, coordinate c2) {
// 	/*! Returns coordinate of c1 in the system in which c2 becomes the origin.
// 	*/
// 	}


// 	graph rotate_graph(graph g, direction c) {
// 	/*!	Takes two inputs
// 	*	- The graph g which has to rotated
// 	*	- The direction of the final line-of-sight.
// 	* 	This function makes multiple calls to the function rotate_coordinate for all the vertices of the input graph.
// 	*/
// 	}

// 	coordinate rotate_coordinate(coordinate c1, direction c2) {
// 	/*! Returns coordinate of c1 in the system in which c2 becomes the final line-of-sight.
// 	*/
// 	}

// 	void projection(graph x) {
// 	/*!	Returns the projection of the graph after applying all the required transitions using z axis as the line-of-sight.
// 	*/
// 	}

// };


dir_ratios get_dir_ratios(){
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
	return vec;
}

// input is mx4 matrix and translation factor
mat translate_graph(mat A, coordinate t_factor) {
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

mat find_rot(mat A, dir_ratios d){
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
	mat P = eye(4, 4);
	P(2, 2) = 0;
	A = A*P;
	return A;
}

vector<node> find_ortho(vector<node> graph){
	//Give Option for translation as well
	dir_ratios dir = get_dir_ratios();
	mat A = graph_to_mat(graph);
	A = find_rot(A, dir);
	A = find_projection(A);
	return mat_to_graph(A, graph);
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
}