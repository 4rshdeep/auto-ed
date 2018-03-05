#include <bits/stdc++.h>
using namespace std;

struct coordinates
{
    int x;
    int y;
    int z;
};

struct adjacency_list
{
	vector<coordinates> adj_list;
	coordinates coord;
};

struct graph
{
	vector<adjacency_list> g;
};

class input
{
public:
	
	int select_mode() {
	/*! Asks the user to choose the mode of operation out of the following:
	* 	1.  3D input to orthographic views or
	*	2. 	2D orthographic views as input to generate isometric views.
	*/
	}

	void get_input() {
	/*! Fetches the input file and validates the format in accordance with the mode seleted by the user. 		
	*/
	}

	void threeD_to_graph() {
	/*! Converts the given 3D input into a graph. Graph is described as follows
	* 	- Graph is a list of vertices
	*	- Each vertex itself has a coordinate value associated with itself 
	*	- Each vertex also has an adjacency list that stores the coordinates of its neighbours (i.e the vertices with the current vertex shares an edge)
	*/
	}

	void twoD_to_graph() {
	/*! Converts the 2D input to a probable 3D graph descriptions according to the following procedure.
	* 	- Find correspondence of different points in all 3 orthographic views to get the 3D description of the vertices in the 3D model.
	*	- Find and add all the probable edges to the graph formed in last step. 
	*	- Check for the presence of redundant edges and vertices in the graph formed.
	* 	- Get orthographic views of the graph generated and match with the initial input orthographic views.
	* 	- If the views match then the graph is the final description of the 3D model.
	*	- Else check again for redundancy until the views match with each other.
	*/
	}

};
