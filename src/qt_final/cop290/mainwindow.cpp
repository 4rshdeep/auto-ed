#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <bits/stdc++.h>
#include <QtCore>
#include <QtGui>
#include <QLabel>
#include <armadillo>
#include "draw.cpp"
#include "threeD_to_ortho.cpp"

using namespace std;
using namespace Qt;

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent),
                                          ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

//void threeD_to_twoD()
//{

//    // cout << "Filename :" << endl;
//    cin >> filename;
//    std::vector<node> v = get_3D_graph();
//    mat A = get_mx4_matrix(v);
//    // A.print("Before ");

//    v = find_ortho(v);

//    A = graph_to_mat(v);
//    cout << endl;
//    // A.print("After");

//    return;
//}


coordinate add_coord(coordinate c1, coordinate c2)
{
    coordinate cf;
    cf.x = c1.x + c2.x;
    cf.y = c1.y + c2.y;
    cf.z = c1.z + c2.z;
    return cf;
}

// input is mx4 matrix and translation factor
void translate_graph(vector<node> &v, coordinate c)
{
    for (int i = 0; i < static_cast<int>(v.size()); i++)
    {
        v[i].coord = add_coord(v[i].coord, c);
    }
    // return v;
}


void print_nodes(vector<node> v) {
    for(int i = 0; i < static_cast<int>(v.size()); i++) {
        cout << v[i].coord.x << " " << v[i].coord.y << " " << v[i].coord.z << " \n";
    }
}

void print_edges(vector<edge> v) {
    for(int iter = 0 ; iter < static_cast<int>(v.size()); ++iter) {
        cout << v[iter].node1->coord.x << " " << v[iter].node1->coord.y << " " << v[iter].node2->coord.x << " " << v[iter].node2->coord.y << "\n";
    }
}

void MainWindow::on_pushButton_clicked()
{
    graph g = get_3D_graph("3dcube.txt");
    vector<node> nodes = g.nodes;
    vector<edge> edges = g.edges;
    vector<pair_> edge_codes = g.edge_corr;

    vector<node> nodes_copy(nodes);

    dir_ratios dir;
    dir.a = 1;
    dir.b = 0;
    dir.c = 0;

    print_nodes(nodes);
    mat A = graph_to_mat(nodes);
    A.print("Before");
    A = find_rot(A, dir);
    A = find_projection(A);

    vector<node> v = mat_to_graph(A, nodes);
    A = graph_to_mat(v);
    A.print("After");

    vector<edge> e;
    pair_ p;
    for (int i = 0; i < static_cast<int>(edge_codes.size()); i++)
    {
        p = edge_codes[i];
        edge e1;
        e1.node1 = &v[p.a];
        e1.node2 = &v[p.b];
        e.push_back(e1);
    }

     coordinate av = get_average(v);
     translate_graph(v, av);
     QPicture pi = draw_xy(e);
     ui->l1->setPicture(pi);
     ui->l1->show();

//  clear edges
    e.clear();

    dir.a = 0;
    dir.b = 1;
    dir.c = 0;
    vector<node> nodes_copy2(nodes_copy);

    cout << "2\n";
    nodes = nodes_copy;
    print_nodes(nodes);
    A = graph_to_mat(nodes);
    A.print("Before");
    A = find_rot(A, dir);
    A = find_projection(A);

    v = mat_to_graph(A, nodes);
    A = graph_to_mat(v);
    A.print("After");

    for (int i = 0; i < static_cast<int>(edge_codes.size()); i++)
    {
        p = edge_codes[i];
        edge e1;
        e1.node1 = &v[p.a];
        e1.node2 = &v[p.b];
        e.push_back(e1);
    }

    av = get_average(v);
    translate_graph(v, av);
    pi = draw_xy(e);
    ui->l2->setPicture(pi);
    ui->l2->show();
    //  clear edges
    e.clear();

    dir.a = 0;
    dir.b = 0;
    dir.c = 1;
    nodes = nodes_copy2;
    cout << "3\n";
    print_nodes(nodes);
    A = graph_to_mat(nodes);
    A.print("Before");
    A = find_rot(A, dir);
    A = find_projection(A);

    v = mat_to_graph(A, nodes);
    A = graph_to_mat(v);
    A.print("After");

    for (int i = 0; i < static_cast<int>(edge_codes.size()); i++)
    {
        p = edge_codes[i];
        edge e1;
        e1.node1 = &v[p.a];
        e1.node2 = &v[p.b];
        e.push_back(e1);
    }

    av = get_average(v);
    translate_graph(v, av);
    pi = draw_xy(e);
    ui->l3->setPicture(pi);
    ui->l3->show();
    //  clear edges
    e.clear();

    // vector<node> a = get_3D_graph("draw.txt");
    // threeView n = get_three_views("draw.txt");
    //  coordinate av_coordinate = get_average(n.n1);
    //  vector<node> nodes = translate_graph(n.n1, av_coordinate);

    // vector<edge> v = n.e1;

    // cout << "l1" << endl;
    // QPicture pi = draw_views(v);
    // ui->l1->setPicture(pi);
    // ui->l1->show();

    // cout << "l2" << endl;
    // v = n.e2;
    // pi = draw_views(v);
    // ui->l2->setPicture(pi);
    // ui->l2->show();

    // cout << "l3" << endl;
    // v = n.e3;
    // pi = draw_views(v);
    // ui->l3->setPicture(pi);
    // ui->l3->show();
    // vector<node> a = get_3D_graph("draw.txt");
    // threeView n = get_three_views("draw.txt");

    // // print_nodes(n.n1);

    // coordinate av_coordinate = get_average(n.n1);
    // translate_graph(n.n1, av_coordinate);

    // vector<edge> v = n.e1;
    // cout << "l1" << endl;
    // print_edges(n.e1);
    // QPicture pi = draw_views(v);
    // ui->l1->setPicture(pi);
    // ui->l1->show();

    // // n = get_three_views("draw.txt");

    // av_coordinate = get_average(n.n2);
    // translate_graph(n.n2, av_coordinate);
    // cout << "l2" << endl;
    // v = n.e2;
    // print_edges(n.e2);
    // pi = draw_views(v);
    // ui->l2->setPicture(pi);
    // ui->l2->show();

    // // n = get_three_views("draw.txt");

    // cout << "before";
    // print_edges(n.e3);
    // av_coordinate = get_average(n.n3);
    // print_nodes(n.n3);
    // cout << av_coordinate.x << " " << av_coordinate.y << " " << av_coordinate.z << "\n";
    // translate_graph(n.n3, av_coordinate);
    // print_nodes(n.n3);
    // cout << "l3" << endl;
    // v = n.e3;
    // print_edges(n.e3);
    // pi = draw_views(v);
    // ui->l3->setPicture(pi);
    // ui->l3->show();
}
