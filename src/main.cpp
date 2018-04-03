#include "threeD_to_ortho.cpp"

using namespace std;
void threeD_to_twoD() {
	// cout << "Filename :" << endl;
	cin >> filename;
    graph g = get_3D_graph();
//    mat A = get_mx4_matrix(v);
    // A.print("Before ");

	v = find_ortho(v);
//    v contains vector of nodes.

//    A = graph_to_mat(v);
    cout << endl;
    // A.print("After");

    return;
}

int main()
{
	int mode;
	cout << "Enter (0) for 3d to 2d, (1) for 2d to 3d.  Change here later.";
	// cin >> mode;
	mode = 0;
	if(mode == 0) {
		threeD_to_twoD();
	}

 	return 0;
}
