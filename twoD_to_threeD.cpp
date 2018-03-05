#include <bits/stdc++.h>
#include <Output.cpp>
#include <matrices.cpp>

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

	graph find_correspondence( orthographic x ) {
	/*!	Takes 3 orthographic views as input and returns a graph by finding correspondence between the points in all 3 views.
	*/
	}

	graph generate_lines(graph x, orthographic y){
	/*!	Genrates possible vertices according to all 3 orthographic views given in the graph given.
	*/
	}

	vector<plane> generate_face(graph x , orthographic y) {
	/*!	Finds possible faces according to all 3 orthographic views given.
	*/
	}

	graph check_edges(graph x , orthographic y) {
	/*!	Checks for the presence of redundant egdes in the given graph by comparing with the given orthographic views and returns the edited graph.
	*/
	}

	graph check_vertices(graph x , orthographic y) {
	/*!	Checks for the presence of redundant vertices in the given graph by comparing with the given orthographic views and returns the edited graph.
	*/
	}	

	vector<plane>  check_faces(graph x , orthographic y, vector<plane>) {
	/*!	Checks for the presence of redundant planes in the given graph by comparing with the given orthographic views and returns the edited vector of planes.
	*/
	}

	bool matches (graph x , orthographic y){
	/*!	Checks if the orthographic views generated from the given graph matches with the orthographic views "y". 
	*	Returns true if they match, else returns false.
	*/		
	}

};