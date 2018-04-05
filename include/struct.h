#ifndef STRUCT_H
#define STRUCT_H


#include <bits/stdc++.h>
#include <armadillo>

using namespace arma;
using namespace std;
/*! 
 * A structure to represent 3d coordinate
  */
struct coordinate
{
    double x;
    double y;
    double z;
};

/*! 
 * structure for node of a graph which has coordinates as well as an adjacency list
 */
struct node
{
    std::vector<node *> adj_list; // pointer to neighbours
    coordinate coord;
};

/*! 
 * structure for edge in a graph with reference to nodes at its endpoints 
 */
struct edge
{
    node *node1;
    node *node2;
};

/*! 
 * structure used for a representing a pair of integers
 */
struct pair_
{
    int a;
    int b;
};

/*! 
 * structure for a graph with a vector of nodes, edges and edge correspondence which 
 * stores indexes of nodes which have a edge between them
 */
struct graph
{
    vector<node> nodes;
    vector<edge> edges;
    vector<pair_> edge_corr;
};

/*! 
 * structure for three orthographic views
 */

struct threeView
{
    vector<node> n1;
    vector<edge> e1;
    vector<node> n2;
    vector<edge> e2;
    vector<node> n3;
    vector<edge> e3;
};

/*! 
 * structure for representing direction
 */

struct direction
{
    double theta_x;
    double theta_y;
    double theta_z;
};

/*! 
 * structure for representing rotation matrix
 */
struct rot_matrix
{
    mat Rx;
    mat Ry;
    mat Rz;
};

/*! 
 * structure for storing direction ratios
 */
struct dir_ratios
{
    double a;
    double b;
    double c;
};
#endif // STRUC_H
