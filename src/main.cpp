#include "threeD_to_ortho.cpp"

void threeD_to_twoD() {
	std::vector<node> v = get_2d_graph();
    mat A = get_mx4_matrix(v);
    A.print("Before ");

	v = find_ortho(v);

    A = graph_to_mat(v);
    cout << endl;
    A.print("After");

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
