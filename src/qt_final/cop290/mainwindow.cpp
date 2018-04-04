#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <bits/stdc++.h>
#include <QtCore>
#include <QtGui>
#include <QLabel>
#include <armadillo>
#include "draw.cpp"
#include "threeD_to_ortho.cpp"
#include "twoD_to3D.cpp"

using namespace std;
using namespace Qt;
vector<node> nodeRot;


MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent),
                                          ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

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



void MainWindow::on_pushButton_clicked()
{
    QString qs = ui->t4->toPlainText();
//    "3dcube.txt"
    string s = qs.toStdString();
//    std::string s = qs.toUtf8().constData();
//    ui->l2->setText(QString::fromStdString(s));
    cout << s;
//    return;
    graph g = get_3D_graph(s);
    if (g.nodes.size()==0) {
        ui->l1->setText("File Not Found");
        return;
    }
    vector<node> nodes = g.nodes;
    vector<edge> edges = g.edges;
    vector<pair_> edge_codes = g.edge_corr;
    copy(nodes.begin(), nodes.end(), back_inserter(nodeRot));
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
    vector<node> nodes_copy3(nodes_copy2);
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


//    dir = get_dir_ratios();
    QString t1 = ui->t1->toPlainText();
    QString t2 = ui->t2->toPlainText();
    QString t3 = ui->t3->toPlainText();
    dir.a = t1.toInt();
    dir.b = t2.toInt();
    dir.c = t3.toInt();
    cout << dir.a << " " << dir.b << " " << dir.c << endl;
//    string s = "Direction Ratios: "+to_string(dir.a) + " " + to_string(dir.b) + " " + to_string(dir.c);
//    ui->l5->setText(QString::fromStdString(s));
    nodes = nodes_copy3;
    cout << "Required Projection\n";
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
    ui->l4->setPicture(pi);
    ui->l4->show();
    //  clear edges
    e.clear();
}

void MainWindow::on_pushButton_2_clicked()
{

}


void MainWindow::on_moveX_clicked()
{
    QString qs = ui->t4->toPlainText();
    string s = qs.toStdString();
    graph g = get_3D_graph(s);
    if (g.nodes.size()==0) {
        ui->l1->setText("File Not Found");
        return;
    }
    vector<node> nodes = g.nodes;
    vector<pair_> edge_codes = g.edge_corr;
    QString t1 = ui->t1->toPlainText();
    QString t2 = ui->t2->toPlainText();
    QString t3 = ui->t3->toPlainText();
    dir_ratios dir;
    dir.a = t1.toInt();
    dir.b = t2.toInt();
    dir.c = t3.toInt();
    direction d;
    d.theta_x = 10;
    rotate_graph(nodeRot, d, 1, 0, 0);

    mat A = graph_to_mat(nodeRot);
    A.print("Before");
    A = find_rot(A, dir);
    A = find_projection(A);

    vector<node> v = mat_to_graph(A, nodeRot);
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
    ui->l4->setPicture(pi);
    ui->l4->show();
    //  clear edges
    e.clear();
}

void MainWindow::on_moveY_clicked()
{
    QString qs = ui->t4->toPlainText();
    string s = qs.toStdString();
    graph g = get_3D_graph(s);
    if (g.nodes.size()==0) {
        ui->l1->setText("File Not Found");
        return;
    }
    vector<node> nodes = g.nodes;
    vector<pair_> edge_codes = g.edge_corr;
    QString t1 = ui->t1->toPlainText();
    QString t2 = ui->t2->toPlainText();
    QString t3 = ui->t3->toPlainText();
    dir_ratios dir;
    dir.a = t1.toInt();
    dir.b = t2.toInt();
    dir.c = t3.toInt();
    direction d;
    d.theta_y = 10;
    rotate_graph(nodeRot, d, 0, 1, 0);

    mat A = graph_to_mat(nodeRot);
    A.print("Before");
    A = find_rot(A, dir);
    A = find_projection(A);

    vector<node> v = mat_to_graph(A, nodeRot);
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
    ui->l4->setPicture(pi);
    ui->l4->show();
    //  clear edges
    e.clear();
}

void MainWindow::on_moveZ_clicked()
{
    QString qs = ui->t4->toPlainText();
    string s = qs.toStdString();
    graph g = get_3D_graph(s);
    if (g.nodes.size()==0) {
        ui->l1->setText("File Not Found");
        return;
    }
    vector<node> nodes = g.nodes;
    vector<pair_> edge_codes = g.edge_corr;
    QString t1 = ui->t1->toPlainText();
    QString t2 = ui->t2->toPlainText();
    QString t3 = ui->t3->toPlainText();
    dir_ratios dir;
    dir.a = t1.toInt();
    dir.b = t2.toInt();
    dir.c = t3.toInt();
    direction d;
    d.theta_y = 10;
    rotate_graph(nodeRot, d, 0, 0, 1);

    mat A = graph_to_mat(nodeRot);
    A.print("Before");
    A = find_rot(A, dir);
    A = find_projection(A);

    vector<node> v = mat_to_graph(A, nodeRot);
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
    ui->l4->setPicture(pi);
    ui->l4->show();
    //  clear edges
    e.clear();

}
