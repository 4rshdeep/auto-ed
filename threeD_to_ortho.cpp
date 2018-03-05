#include <bits/stdc++.h>
#include <Output.cpp>
#include <matrices.cpp>

using namespace std;

struct direction
{
	float theta_x;
	float theta_y;
	float theta_z;

};

class threeD_to_ortho
{
public:
	void get_direction_for_projection() {
	/*!	Asks the user for the direction along which it is desired to take the projection.
	*/	
	}

	void get_transitions() {
	/*!	This functon takes the graph and the directions that the user has specified.
	* 	Finds and applies the transitions required to be applied to the graph in order to get the projection along the desired direction. 
	*/
	}

	graph translate_graph(graph g, coordinate c) {
	/*!	Takes two inputs
	*	- The graph g which has to translated
	*	- The coordinate c of the point that would become the origin in the translated system.
	* 	This function makes multiple calls to the function translate_coordinate for all the vertices of the input graph.
	*/
	}

	coordinate translate_coordinate(coordinate c1, coordinate c2) {
	/*! Returns coordinate of c1 in the system in which c2 becomes the origin.
	*/
	}


	graph rotate_graph(graph g, direction c) {
	/*!	Takes two inputs
	*	- The graph g which has to rotated
	*	- The direction of the final line-of-sight.
	* 	This function makes multiple calls to the function rotate_coordinate for all the vertices of the input graph.
	*/	
	}

	coordinate rotate_coordinate(coordinate c1, direction c2) {
	/*! Returns coordinate of c1 in the system in which c2 becomes the final line-of-sight.
	*/
	}

	void projection(graph x) {
	/*!	Returns the projection of the graph after applying all the required transitions using z axis as the line-of-sight. 
	*/
	}

};