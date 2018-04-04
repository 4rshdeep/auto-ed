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

vector<node> node_0; // node when mode is 0
vector<node> node_1; // node when mode is 1
vector<pair_> edge_codes_1;
int mode; // mode is 0 for 3d to 2d else 1

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
    mode = 0;
    QString qs = ui->t4->toPlainText();
    string s = qs.toStdString();
    graph g = get_3D_graph(s);

    if (g.nodes.size()==0) {
        ui->l1->setText("File Not Found");
        ui->t4->setText("3dcube.txt");
        return;
    }
    vector<node> nodes = g.nodes;
    vector<edge> edges = g.edges;
    vector<pair_> edge_codes = g.edge_corr;
    copy(nodes.begin(), nodes.end(), back_inserter(node_0));
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

    e.clear();

    dir.a = 0;
    dir.b = 1;
    dir.c = 0;
    vector<node> nodes_copy2(nodes_copy);

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

    QString t1 = ui->t1->toPlainText();
    QString t2 = ui->t2->toPlainText();
    QString t3 = ui->t3->toPlainText();
    dir.a = t1.toInt();
    dir.b = t2.toInt();
    dir.c = t3.toInt();
    cout << dir.a << " " << dir.b << " " << dir.c << endl;

    nodes = nodes_copy3;

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
    // clear edges
    e.clear();
}

void MainWindow::on_pushButton_2_clicked()
{
    mode = 1;
    QString qs = ui->t4->toPlainText();
    string fname = qs.toStdString();
    std::vector<node> v = get_2D_graph(fname);
    if(v.size()==0) {
        ui->l1->setText("File Not Found");
        ui->t4->setText("input_2D_cube.txt");
        return;
    }
    copy(v.begin(), v.end(), back_inserter(node_1));
    check_graph(v);
    std::vector<pair_> edge_codes = get_pair_2D(fname);
    copy(edge_codes.begin(), edge_codes.end(), back_inserter(edge_codes_1));

    pair_ p;
    vector<edge> e;

    dir_ratios dir;
    dir.a = 1;
    dir.b = 0;
    dir.c = 0;
    mat A = graph_to_mat(v);
    A.print("Before");
    A = find_rot(A, dir);
    A = find_projection(A);

    v = mat_to_graph(A, v);
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

    coordinate av = get_average(v);
    translate_graph(v, av);
    QPicture pi = draw_xy(e);
    ui->l1->setPicture(pi);
    ui->l1->show();
    //  clear edges
    e.clear();

    // view 2
    dir.a = 0;
    dir.b = 1;
    dir.c = 0;

    v = get_2D_graph(fname);
    A = graph_to_mat(v);
    A.print("Before");
    A = find_rot(A, dir);
    A = find_projection(A);

    v = mat_to_graph(A, v);
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

    // 3rd view
    dir.a = 0;
    dir.b = 0;
    dir.c = 1;
    v = get_2D_graph(fname);
    A = graph_to_mat(v);
    A.print("Before");
    A = find_rot(A, dir);
    A = find_projection(A);

    v = mat_to_graph(A, v);
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

    QString t1 = ui->t1->toPlainText();
    QString t2 = ui->t2->toPlainText();
    QString t3 = ui->t3->toPlainText();

    dir.a = t1.toInt();
    dir.b = t2.toInt();
    dir.c = t3.toInt();
    v = get_2D_graph(fname);
    A = graph_to_mat(v);
    A.print("Before");
    A = find_rot(A, dir);
    A = find_projection(A);

    v = mat_to_graph(A, v);
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

void MainWindow::on_moveX_clicked()
{
    cout << "moveX pressed \n";
    if(mode == 0){
        // 3d to 2d
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
        rotate_graph(node_0, d, 1, 0, 0);

        mat A = graph_to_mat(node_0);
        A.print("Before");
        A = find_rot(A, dir);
        A = find_projection(A);

        vector<node> v = mat_to_graph(A, node_0);
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
        e.clear();
    }
    else {
        vector<pair_> edge_codes = edge_codes_1;
        QString t1 = ui->t1->toPlainText();
        QString t2 = ui->t2->toPlainText();
        QString t3 = ui->t3->toPlainText();
        dir_ratios dir;
        dir.a = t1.toInt();
        dir.b = t2.toInt();
        dir.c = t3.toInt();
        direction d;
        d.theta_x = 5;
        rotate_graph(node_1, d, 1, 0, 0);

        mat A = graph_to_mat(node_1);
        A.print("Before");
        A = find_rot(A, dir);
        A = find_projection(A);

        vector<node> v = mat_to_graph(A, node_1);
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
        e.clear();
    }
}

void MainWindow::on_moveY_clicked()
{
    cout << "moveY pressed \n";
    if(mode == 0){
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
        d.theta_y = 5;
        rotate_graph(node_0, d, 0, 1, 0);

        mat A = graph_to_mat(node_0);
        A.print("Before");
        A = find_rot(A, dir);
        A = find_projection(A);

        vector<node> v = mat_to_graph(A, node_0);
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
    else{
        vector<pair_> edge_codes = edge_codes_1;
        QString t1 = ui->t1->toPlainText();
        QString t2 = ui->t2->toPlainText();
        QString t3 = ui->t3->toPlainText();
        dir_ratios dir;
        dir.a = t1.toInt();
        dir.b = t2.toInt();
        dir.c = t3.toInt();
        direction d;
        d.theta_y = 10;
        rotate_graph(node_1, d, 0, 1, 0);

        mat A = graph_to_mat(node_1);
        A.print("Before");
        A = find_rot(A, dir);
        A = find_projection(A);

        vector<node> v = mat_to_graph(A, node_1);
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
        e.clear();
    }
}

void MainWindow::on_moveZ_clicked()
{
    cout << "moveZ pressed \n";
    if(mode == 0){
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
        d.theta_z = 10;
        rotate_graph(node_0, d, 0, 0, 1);

        mat A = graph_to_mat(node_0);
        A.print("Before");
        A = find_rot(A, dir);
        A = find_projection(A);

        vector<node> v = mat_to_graph(A, node_0);
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
        e.clear();
    }
    else{
        vector<pair_> edge_codes = edge_codes_1;
        QString t1 = ui->t1->toPlainText();
        QString t2 = ui->t2->toPlainText();
        QString t3 = ui->t3->toPlainText();
        dir_ratios dir;
        dir.a = t1.toInt();
        dir.b = t2.toInt();
        dir.c = t3.toInt();
        direction d;
        d.theta_z = 10;
        rotate_graph(node_1, d, 0, 0, 1);

        mat A = graph_to_mat(node_1);
        A.print("Before");
        A = find_rot(A, dir);
        A = find_projection(A);

        vector<node> v = mat_to_graph(A, node_1);
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
        e.clear();
    }

}
