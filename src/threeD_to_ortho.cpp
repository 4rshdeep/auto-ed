#include <bits/stdc++.h>
#include <armadillo>
#include "input.cpp"
#include <math.h>  

#define PI 3.14159265



using namespace std;
using namespace arma;

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
rot_matrix rot_about_coord_axis(mat A, direction theta) {
	double sin_theta = sin(theta.theta_x*PI/180.00);
	double cos_theta = cos(theta.theta_x*PI/180.00);
	mat Rx = eye(4,4);
	mat Ry = eye(4,4);
	mat Rz = eye(4,4);

	Rx(1, 1) = cos_theta;
	Rx(1, 2) = sin_theta;
	Rx(2, 1) = -sin_theta;
	Rx(2, 2) = cos_theta;
	double invsqrt3 = 1/sqrt(3);

	// Rx.print("Rx : ");

	sin_theta = sin(theta.theta_y*PI/180.00);
	cos_theta = cos(theta.theta_y*PI/180.00);

	Ry(0, 0) = cos_theta;
	Ry(0, 2) = -sin_theta;
	Ry(2, 0) = sin_theta;
	Ry(2, 2) = cos_theta;

	// Ry.print("Ry : ");
	sin_theta = sin(theta.theta_y*PI/180.00);
	cos_theta = cos(theta.theta_y*PI/180.00);

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

int main(int argc, char const *argv[])
{
	std::vector<node> v = get_2d_graph();
    
    mat A = get_mx4_matrix(v);
    A.print("Before ");

    coordinate c1;
    c1.x = 2;
    c1.y = 4.5;
    c1.z = -0.5;


	// mat T = translate_graph(A, c1);
	// T.print("\nAfter rot_about_coord_axis");
	cout << endl;
	direction theta;
	theta.theta_x = 30;
	theta.theta_y = 30;
	theta.theta_z = 30;
	rot_matrix r = rot_about_coord_axis(A, theta);
	r.Rx.print();
	r.Ry.print();
	r.Rz.print();

 	return 0;
}