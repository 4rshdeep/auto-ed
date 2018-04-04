#include <bits/stdc++.h>
#include <iostream>
#include <iomanip>
#include <fstream>
#include <armadillo>
#include "struct.h"
// #include "threeD_to_ortho.cpp"
// #include "twoD_to_threeD.cpp"

using namespace std;
using namespace arma;


// returns empty vector if can't read the file else a vector of nodes.
vector<node> get_3D_graph(string filename="input_3D.txt") {
    
    int size;
    // input stream for reading from a file
    ifstream inFile;
    vector<node> v;
    
    // opening the input stream
    inFile.open(filename);
    if (!inFile) {
        cout << "Unable to open file" ; 
        return v;
    }

    inFile >> size;

    // file contains coordinates and edges
    // edges have been described using two numbers corresponding
    // to the index they appear in the file starting from zero
    int iter = size; 
    while (iter > 0) {
        node n;
        inFile >> n.coord.x;
        inFile >> n.coord.y;
        inFile >> n.coord.z;

        v.push_back(n);
        iter--;
    }
    
    //  Take edges.
    int edges;
    inFile >> edges;
    int idx1;
    int idx2;
    for (int i = 0; i < edges; ++i)
    {
        inFile >> idx1;
        inFile >> idx2;
        v[idx1].adj_list.push_back(&v[idx2]);
        v[idx2].adj_list.push_back(&v[idx1]);
    }
    inFile.close();

    return v;
}

std::vector<node*> check_neighbours(int index,int size,vector<node*>* adj){
    bool flag = false;
    std::vector<node*> ans;
    for(int i=0; i<size; i++){
        for(int iter=0; iter< static_cast<int>(adj[1].size()); iter++){
            if( (adj[1])[iter] == (adj[0])[i] ){
                flag = true;
                break;
            }
        }
        if(flag == false) continue;    
        for(int iter=0; iter< static_cast<int>(adj[2].size()); iter++){
            if( (adj[2])[iter] == (adj[0])[i] ){
                flag = true;
                break;
            }
        }        
        if(flag == false) continue;                
    }
    return ans;
}

// void set_edges(vector<int> vertices, int* set, int size){
//     for(int i=0;i<static_cast<int>(vertices.size());i++){
//         for(int j=i+1;j<static_cast<int>(vertices);j++){
//             // set[vertices[i]*size+vertices[j]] = 
//         }
//     }
// }


void set_all( vector< vector<int> > mems, int* edges, int size){
    int no_of_inst = static_cast<int>(mems.size());
    int tmp[size];
    for(int i=0; i<size*size; i++){
        tmp[i]=edges[i];
        edges[i]=0;
    }
    for(int mm=0 ; mm<no_of_inst; mm++){    
        for(int i=0; i< static_cast<int>(mems[mm].size()) -1; i++){
            for(int j=i+1; j<static_cast<int>(mems[mm].size()) ; j++){
                if(tmp[size*mems[mm][i] + mems[mm][j]]==1){
                    cout << "setting " << mems[mm][i] << " " << mems[mm][j] << endl; 
                    edges[size*mems[mm][i] + mems[mm][j]]=1;
                    edges[size*mems[mm][j] + mems[mm][i]]=1;
                }
            }
        }
    }    
    return;
}


vector<node> get_2D_graph(string filename = "input_2D.txt"){


    int size;
    ifstream inFile;    // input stream for reading from a file
    vector<node> v;
    
    std::vector<node*> adj[3];

    
    // opening the input stream
    inFile.open(filename);
    if (!inFile) {
        cout << "Unable to open file" ; 
        return v;
    }

    inFile >> size;



    // int edge_set[size*size];
    // for(int i=0; i< size*size;i++){
    //     edge_set[i]=1;
    // }
    
    for(int i=0 ; i<3 ; i++){
        // file contains coordinates and edges
        // input is labelled and has different descriptions for all the respective orthographic views
        // XY plane comes first, then YZ plane and then the XZ plane.
        int iter = size; 
        for(iter = 0; iter < size; iter++) {
            if(i==0){
                node n;
                inFile >> n.coord.x;
                inFile >> n.coord.y;
                


                v.push_back(n);
            }
            else if(i==1){
                double tmp_y;
                inFile >> tmp_y; 
                if(v[iter].coord.y - tmp_y > 1e-5 ){
                    cout << "Invalid Input " << endl;
                    return v;
                }
                else{
                    inFile >> v[iter].coord.z; 
                }
            }
            else{
                double tmp_x, tmp_z;
                inFile >> tmp_z;
                inFile >> tmp_x;
                if ((v[iter].coord.x - tmp_x > 1e-5) || (v[iter].coord.z - tmp_z > 1e-5)) {
                    cout << "Invalid Input 3" << endl;
                    return v;
                }
            }

            
        }

    }


        int edges;
        int edge_set[size*size];
        inFile >> edges; 

        
        int m;
        for(int tt=0; tt<size*size; tt++){
            edge_set[tt]=1;
        }
            vector< vector<int> > members1;
        for(int tt=0; tt<edges; tt++){
            std::vector<int> tm;
            while(inFile >> m){
                if(m==-1) break;
                tm.push_back(m);
            }
            members1.push_back(tm);
    
            // cout << "members are " << members[0] << " and " << members[1] << endl;
            // cout << "edge_set[3*1 + 2] is " << edge_set[5]<< endl;

        }
            set_all(members1, edge_set, size);


            vector< vector<int> > members2;       
        for(int tt=0; tt<edges; tt++){
            std::vector<int> tm;
            while(inFile >> m){
                if(m==-1) break;
                tm.push_back(m);
            }
            members2.push_back(tm);
        }
            set_all(members2, edge_set, size);

            vector< vector<int> > members3;
        for(int tt=0; tt<edges; tt++){
            std::vector<int> tm;
            while(inFile >> m){
                if(m==-1) break;
                tm.push_back(m);
            }
            members3.push_back(tm);
        }
            set_all(members3, edge_set, size);

        for(int k=0; k<size-1; k++){
            for(int l=k+1; l<size; l++){
                if(edge_set[ size*k + l ]==1){
                    v[k].adj_list.push_back( &v[l] );
                    v[l].adj_list.push_back( &v[k] );
                }
            }
        }



        // std::vector<node*> adj[3];
        // inFile >> edges;

        // int t;
        // vector<int> vertices;
        // for(int i=0;i<edges;i++){
        //     whle(inFile >> t){
        //         if(t==-1) break;
        //         vertices.push_back(t);
        //     }
        //     set_edges(vertices,edge_set,size);
        // }



        // int idx1;
        // int idx2;
        // for (int i = 0; i < edges; ++i)
        // {
        //     inFile >> idx1;
        //     inFile >> idx2;
        //     adj[i].push_back(&v[idx2]);
        //     adj[i].push_back(&v[idx1]);
        // }    

    

        // for(int j=0; j<size;j++){
        //     v[j].adj_list = check_neighbours(j,size,adj);
        // }
    inFile.close();
    return v;
}

void check_graph(vector<node> v) {    
    //  v.size() if of type unsigned -> size_t
    for (size_t i = 0; i < v.size(); ++i)
    {
        node n = v[i];
        cout << "Cordinates are " << n.coord.x << " " << n.coord.y << " " << n.coord.z ;
        for (size_t j = 0; j < n.adj_list.size(); ++j)
        {
            cout << "  Neighbours are: " << (n.adj_list[j])->coord.x << "," << (n.adj_list[j])->coord.y << "," << (n.adj_list[j])->coord.z;
        }
        cout << endl;
    }
}

mat get_mx4_matrix(vector<node> v, int cols=4) {
    mat A = zeros(v.size(), cols);
    for (int i = 0; i < static_cast<int>(v.size()); ++i)
    {
            A(i, 0) = v[i].coord.x;
            A(i, 1) = v[i].coord.y;
            A(i, 2) = v[i].coord.z;
            A(i, 3) = 1;
    }
    return A;
}

int main() {
    std::vector<node> v = get_2D_graph();
    // cout << "ashjdbasdkb  " << v[1].adj_list.size() << endl;
    check_graph(v);
    // mat A = get_mx4_matrix(v);
    // A.print();
    return 0;
}




// class input
// {
// public:
// 
	// int select_mode() {
	// /*! Asks the user to choose the mode of operation out of the following:
	// * 	1.  3D input to orthographic views or
	// *	2. 	2D orthographic views as input to generate isometric views.
	// */
	// }
	// 
	// int* get_input() {
	// /*! Fetches the input file and validates the format in accordance with the mode seleted by the user. 		
	// */
	// }
// 
	// graph threeD_to_graph() {
	// /*! Converts the given 3D input into a graph. Graph is described as follows
	// * 	- Graph is a list of vertices
	// *	- Each vertex itself has a coordinate value associated with itself 
	// *	- Each vertex also has an adjacency list that stores the coordinates of its neighbours (i.e the vertices with the current vertex shares an edge)
	// */
	// }
// 
	// graph twoD_to_graph() {
	// /*! Converts the 2D input to a probable 3D graph descriptions according to the following procedure.
	// * 	- Find correspondence of different points in all 3 orthographic views to get the 3D description of the vertices in the 3D model.
	// *	- Find and add all the probable edges to the graph formed in last step. 
	// *	- Check for the presence of redundant edges and vertices in the graph formed.
	// * 	- Get orthographic views of the graph generated and match with the initial input orthographic views.
	// * 	- If the views match then the graph is the final description of the 3D model.
	// *	- Else check again for redundancy until the views match with each other.
	// */
	// }
// 
// };
