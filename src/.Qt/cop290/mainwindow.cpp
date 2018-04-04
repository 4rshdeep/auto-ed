#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <bits/stdc++.h>
#include <QtCore>
#include <QtGui>
#include <QLabel>
//#include "struct.h"
#include <armadillo>
#include "draw.cpp"

using namespace std;
using namespace Qt;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}


coordinate add_coord(coordinate c1, coordinate c2) {

    coordinate cf;

    cf.x = c1.x+c2.x;
    cf.y = c1.y+c2.y;
    cf.z = c1.z+c2.z;

    return cf;
}

// input is mx4 matrix and translation factor
vector<node> translate_graph(vector<node> v, coordinate c) {
    for(int i =0; i< static_cast<int>(v.size()); i++) {
        v[i].coord = add_coord(v[i].coord, c);
    }
    return v;
}

QPicture draw_views(vector<edge> v) {
    QPicture pi;
    QPainter p(&pi);
    p.setRenderHint(QPainter::Antialiasing);
    p.setPen(QPen(Qt::black, 5, Qt::SolidLine, Qt::RoundCap));
    p.drawLine(-150, -150, -150, -150);

    for (int iter = 0; iter < static_cast<int>(v.size()); iter++)
    {
        cout << "\n" << v[iter].c1.x << " " << v[iter].c1.y << " " << v[iter].c2.x << " " << v[iter].c2.y << "\n";
        p.drawLine(v[iter].c1.x, v[iter].c1.y, v[iter].c2.x, v[iter].c2.y);
    }
    p.end();

    return pi;

}

void MainWindow::on_pushButton_clicked()
{
    graph g = get_3D_graph();
    vector<node> nodes = g.nodes;
    vector<edge> edges = g.edges;
    vector<pair_> edge_codes = g.edge_corr;

    dir_ratios dir;
    dir.a = 1;
    dir.b = 0;
    dir.c = 0;

    mat A = graph_to_mat(nodes);
    A = find_rot(A, dir);
    A = find_projection(A);
    vector<node> v = mat_to_graph(A, graph);

    vector<edge> e;
    pair_ p;
    for(int i=0; i< static_cast<int>(edges_code.size()); i++) {
        p = edge_codes[i];
        edge e1;
        e1.n1 = &v[p.a];
        e1.n2 =
    }


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
}

