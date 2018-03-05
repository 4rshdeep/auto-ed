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

class input
{
public:
	vector< vector<adjacency_list> > graph;
	/* selects mode */
	int select_mode() {
		return 1;
	}

	void get_input() {

	}

	void threeD_to_graph() {

	}

	void twoD_to_graph() {

	}

};

