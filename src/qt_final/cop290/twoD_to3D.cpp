#include <bits/stdc++.h>
#include <iostream>
#include <iomanip>
#include <fstream>
#include <armadillo>
#include "struct.h"

using namespace std;
using namespace arma;

vector<node> get_2D_graph(string filename){
    int size;
    ifstream inFile;    // input stream for reading from a file
    vector<node> v;

    std::vector<node*> adj[3];

    cout << filename;

    // opening the input stream
    inFile.open(filename);
    if (!inFile) {
        cout << "Unable to open file" ;
        return v;
    }

    inFile >> size;

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
        int edge_set1[size*size];
        int edge_set2[size*size];
        int edge_set3[size*size];
        for(int xx=0; xx<size*size; xx++){
            edge_set1[xx]=0;
            edge_set2[xx]=0;
            edge_set3[xx]=0;
        }

        int t1=0;
        int t2=0;

        //////////////////////////////////////////////
                        // First view
        //////////////////////////////////////////////
        inFile >> edges ;
        // cout << "Edges for 1st " << edges << endl;
        for(int xx=0; xx<edges; xx++){
            // cout << "hi xx is " << xx << endl;
            inFile >> t1;
            inFile >> t2;
            // cout << "t1 is " << t1 << "     t2 is " << t2 << endl;
            edge_set1[t1*size+t2]=1;
            edge_set1[t2*size+t1]=1;
            // cout << "bye xx is " << xx << endl;
        }

        //////////////////////////////////////////////
                         // Second view
        //////////////////////////////////////////////
        inFile >> edges ;
        // cout << "Edges for 2nd " << edges << endl;
        for(int xx=0; xx<edges; xx++){
            inFile >> t1;
            inFile >> t2;
            edge_set2[t1*size+t2]=1;
            edge_set2[t2*size+t1]=1;
        }

        //////////////////////////////////////////////
                        // Third view
        //////////////////////////////////////////////
        inFile >> edges ;
        // cout << "Edges for 3rd " << edges << endl;
        for(int xx=0; xx<edges; xx++){
            inFile >> t1;
            inFile >> t2;
            edge_set3[t1*size+t2]=1;
            edge_set3[t2*size+t1]=1;
        }

        for(int xx=0; xx<size*size; xx++){
            edge_set1[xx] = edge_set1[xx]*edge_set2[xx]*edge_set3[xx];
        }


        for(int k=0; k<size-1; k++){
            for(int l=k+1; l<size; l++){
                if(edge_set1[ size*k + l ]==1){
                    v[k].adj_list.push_back( &v[l] );
                    v[l].adj_list.push_back( &v[k] );
                }
            }
        }

    inFile.close();
    return v;
}

vector<pair_> get_pair_2D(string filename){
    int size;
    ifstream inFile;    // input stream for reading from a file
    vector<pair_> v;

    // opening the input stream
    inFile.open(filename);
    if (!inFile) {
        cout << "Unable to open file" ;
        return v;
    }

    inFile >> size;
    int t1;
    for(int t=0;t<6*size;t++){
        inFile >> t1;
    }
    int edges;

        int t2=0;
        int edge_set1[size*size];
        int edge_set2[size*size];
        int edge_set3[size*size];
        for(int xx=0; xx<size*size; xx++){
            edge_set1[xx]=0;
            edge_set2[xx]=0;
            edge_set3[xx]=0;
        }

        //////////////////////////////////////////////
                        // First view
        //////////////////////////////////////////////
        inFile >> edges ;
        // cout << "Edges for 1st " << edges << endl;
        for(int xx=0; xx<edges; xx++){
            inFile >> t1;
            inFile >> t2;
            edge_set1[t1*size+t2]=1;
            edge_set1[t2*size+t1]=1;
        }

        //////////////////////////////////////////////
                         // Second view
        //////////////////////////////////////////////
        inFile >> edges ;
        for(int xx=0; xx<edges; xx++){
            inFile >> t1;
            inFile >> t2;
            edge_set2[t1*size+t2]=1;
            edge_set2[t2*size+t1]=1;
        }

        //////////////////////////////////////////////
                        // Third view
        //////////////////////////////////////////////
        inFile >> edges ;
        for(int xx=0; xx<edges; xx++){
            inFile >> t1;
            inFile >> t2;
            edge_set3[t1*size+t2]=1;
            edge_set3[t2*size+t1]=1;
        }

        for(int xx=0; xx<size*size; xx++){
            edge_set1[xx] = (edge_set1[xx])*(edge_set2[xx])*(edge_set3[xx]);
        }

        vector<pair_> ans;

        for(int k=0; k<size-1; k++){
            for(int l=k+1; l<size; l++){
                pair_ p;
                if(edge_set1[ size*k + l ]==1){
                    p.a = k;
                    p.b = l;
                    ans.push_back(p);
                }
            }
        }


        return ans;

}

void check_graph(vector<node> v) {
    //  v.size() if of type unsigned -> size_t
    cout << "\n";
    for (size_t i = 0; i < v.size(); ++i)
    {
        node n = v[i];
        cout << i << "Cordinates are " << n.coord.x << " " << n.coord.y << " " << n.coord.z ;
        for (size_t j = 0; j < n.adj_list.size(); ++j)
        {
            cout << "Neighbours are: " << (n.adj_list[j])->coord.x << "," << (n.adj_list[j])->coord.y << "," << (n.adj_list[j])->coord.z;
        }
        cout << endl;
    }
}

//int main(int argc, char const *argv[])
//{
//    string fname = "input_2D_cube.txt";
//    std::vector<node> v = get_2D_graph(fname);

//    check_graph(v);
//    std::vector<pair_> vec = get_pair_2D(fname);

//    cout << "pairs \n";
//    for (int i = 0; i < static_cast<int>(vec.size()); ++i)
//    {
//        cout << vec[i].a << " " << vec[i].b << endl;
//    }

//    return 0;
//}
