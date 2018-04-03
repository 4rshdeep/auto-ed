#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <bits/stdc++.h>
#include <QtCore>
#include <QtGui>
#include <QLabel>
//#include "struct.h"
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

void threeD_to_twoD()
{
    // cout << "Filename :" << endl;
    cin >> filename;
    std::vector<node> v = get_3D_graph();
    mat A = get_mx4_matrix(v);
    // A.print("Before ");

    v = find_ortho(v);

    A = graph_to_mat(v);
    cout << endl;
    // A.print("After");

    return;
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

int get_max_y (vector<edge> v) {
    int max = v[0].node1->coord.y;
    int temp1, temp2;
    for(int i=0; i < static_cast<int>(v.size()); i++){
        temp1 = v[i].node1->coord.y;
        temp2 = v[i].node2->coord.y;
        if (temp1 > max) {
            max = temp1;
        }
        if(temp2 > max) {
            max = temp2;
        }
    }
    return max;
}

int get_max_x (vector<edge> v) {
    int max = v[0].node1->coord.x;
    int temp1, temp2;
    for (int i = 0; i < static_cast<int>(v.size()); i++)
    {
        temp1 = v[i].node1->coord.x;
        temp2 = v[i].node2->coord.x;
        if (temp1 > max)
        {
            max = temp1;
        }
        if (temp2 > max)
        {
            max = temp2;
        }
    }
    return max;
}

int get_min_x (vector<edge> v) {
    int min = v[0].node1->coord.x;
    int temp1, temp2;
    for (int i = 0; i < static_cast<int>(v.size()); i++)
    {
        temp1 = v[i].node1->coord.x;
        temp2 = v[i].node2->coord.x;
        if (temp1 < min)
        {
            min = temp1;
        }
        if (temp2 < min)
        {
            min = temp2;
        }
    }
    return min;
}

int get_min_y (vector<edge> v) {
    int min = v[0].node1->coord.x;
    int temp1, temp2;
    for (int i = 0; i < static_cast<int>(v.size()); i++)
    {
        temp1 = v[i].node1->coord.x;
        temp2 = v[i].node2->coord.x;
        if (temp1 < min)
        {
            min = temp1;
        }
        if (temp2 < min)
        {
            min = temp2;
        }
    }
    return min;
}

QPicture draw_views(vector<edge> v)
{

    int x1 = get_max_x(v);
    int y1 = get_max_y(v);
    int x2 = get_min_x(v);
    int y2 = get_min_y(v);
    cout << "x1 " << x1;
    int fact = max((x1-x2), (y1- y2));

    QPicture pi;
    QPainter p(&pi);
    p.setRenderHint(QPainter::Antialiasing);
    p.setPen(QPen(Qt::black, 5, Qt::SolidLine, Qt::RoundCap));
    p.drawLine(-150, -150, -150, -150);
    cout << "fact " << fact << endl;
    if(fact > 0){
        fact = 250.0/fact;
    }
    cout << "fact " << fact << endl;
    for (int iter = 0; iter < static_cast<int>(v.size()); iter++)
    {
        x1 = (v[iter].node1->coord.x)*fact;
        y1 = (v[iter].node1->coord.y)*fact;
        x2 = (v[iter].node2->coord.x)*fact;
        y2 = (v[iter].node2->coord.y)*fact;
        p.drawLine(x1, y1, x2, y2);
    }
    p.end();
    return pi;
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
    // vector<node> a = get_3D_graph("draw.txt");
    threeView n = get_three_views("draw.txt");

    // print_nodes(n.n1);

    coordinate av_coordinate = get_average(n.n1);
    translate_graph(n.n1, av_coordinate);

    vector<edge> v = n.e1;
    cout << "l1" << endl;
    print_edges(n.e1);
    QPicture pi = draw_views(v);
    ui->l1->setPicture(pi);
    ui->l1->show();

    // n = get_three_views("draw.txt");

    av_coordinate = get_average(n.n2);
    translate_graph(n.n2, av_coordinate);
    cout << "l2" << endl;
    v = n.e2;
    print_edges(n.e2);
    pi = draw_views(v);
    ui->l2->setPicture(pi);
    ui->l2->show();

    // n = get_three_views("draw.txt");

    cout << "before";
    print_edges(n.e3);
    av_coordinate = get_average(n.n3);
    print_nodes(n.n3);
    cout << av_coordinate.x << " " << av_coordinate.y << " " << av_coordinate.z << "\n";
    translate_graph(n.n3, av_coordinate);
    print_nodes(n.n3);
    cout << "l3" << endl;
    v = n.e3;
    print_edges(n.e3);
    pi = draw_views(v);
    ui->l3->setPicture(pi);
    ui->l3->show();
}
