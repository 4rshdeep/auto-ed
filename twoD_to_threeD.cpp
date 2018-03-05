#include <bits/stdc++.h>
#include <"input.cpp">

using namespace std;

struct line
{
	coordinate c1;
	coordinate c2;
};

struct plane
{
	coordinate c1;
	coordinate c2;
	coordinate c3;
};

class twoD_to_threeD
{
public:

	// @2D to 3D transformation
	/*We take the input in the form of 2D vertices and 2D Lines.  Now point of intersections
of all the 2D lines are added to the list of 2D vertices.  Point of intersection of two 2D
lines can be obtained by standard methods.  While constructing a 3D object, we consider
each quantity as a probable quantity since that quantity may not be present in the final
analysis.*/
	vector<coordinate> find_correspondence() {

	}

	// involves  both  the  generation  of  probable-edges  and  checking  the  validity  of
// probable-vertices.  If any probable-vertex is found to be invalid, that probable-vertex is
// deleted and the procedure goes back to the beginning of this step.
	vector<line> generate_lines(){

	}

	vector<plane> generate_face() {

	}

	vector<adjacency_list> generate_3D_graph() {

	}

	vector<adjacency_list>  check_edges() {

	}

	vector<adjacency_list> check_vertices() {

	}	

	vector<adjacency_list>  check_faces() {

	}

};