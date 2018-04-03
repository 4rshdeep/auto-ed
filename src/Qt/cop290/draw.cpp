#include <math.h>
#include <QtCore>
#include <QtGui>
#include "struct.h"

using namespace Qt;
using namespace std;

//vector<node> get_3D_graph(string filename="input_3D.txt") {

//    int size;
//    // input stream for reading from a file
//    ifstream inFile;
//    vector<node> v;

//    // opening the input stream
//    inFile.open(filename);
//    if (!inFile) {
//        cout << "Unable to open file" ;
//        return v;
//    }

//    inFile >> size;

//    // file contains coordinates and edges
//    // edges have been described using two numbers corresponding
//    // to the index they appear in the file starting from zero
//    int iter = size;
//    while (iter > 0) {
//        node n;
//        inFile >> n.coord.x;
//        inFile >> n.coord.y;
//        inFile >> n.coord.z;

//        v.push_back(n);
//        iter--;
//    }

//    //  Take edges.
//    int edges;
//    inFile >> edges;
//    int idx1;
//    int idx2;
//    for (int i = 0; i < edges; ++i)
//    {
//        inFile >> idx1;
//        inFile >> idx2;
//        v[idx1].adj_list.push_back(&v[idx2]);
//        v[idx2].adj_list.push_back(&v[idx1]);
//    }
//    inFile.close();

//    return v;
//}
// vector<node> get_3D_graph(string filename = "input_3D.txt")
// {

//     int size;
//     // input stream for reading from a file
//     ifstream inFile;
//     vector<node> v;

//     // opening the input stream
//     inFile.open(filename);
//     if (!inFile)
//     {
//         cout << "Unable to open file";
//         return v;
//     }

//     inFile >> size;

//     // file contains coordinates and edges
//     // edges have been described using two numbers corresponding
//     // to the index they appear in the file starting from zero
//     int iter = size;
//     while (iter > 0)
//     {
//         node n;
//         inFile >> n.coord.x;
//         inFile >> n.coord.y;
//         inFile >> n.coord.z;

//         v.push_back(n);
//         iter--;
//     }

//     //  Take edges.
//     int edges;
//     inFile >> edges;
//     int idx1;
//     int idx2;
//     for (int i = 0; i < edges; ++i)
//     {
//         inFile >> idx1;
//         inFile >> idx2;
//         v[idx1].adj_list.push_back(&v[idx2]);
//         v[idx2].adj_list.push_back(&v[idx1]);
//     }
//     inFile.close();

//     return v;
// }

threeView get_three_views(string filename)
{
    threeView tv;
    int size;


    ifstream inFile;
    inFile.open(filename);
    if (!inFile)
    {
        cout << "Unable to open file";
        return tv;
    }

    inFile >> size;
    int iter = size;
    while (iter > 0)
    {
        node n;
        inFile >> n.coord.x;
        inFile >> n.coord.y;
        inFile >> n.coord.z;
        tv.n1.push_back(n);
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
        tv.n1[idx1].adj_list.push_back(&tv.n1[idx2]);
        tv.n1[idx2].adj_list.push_back(&tv.n1[idx1]);

        edge e;
        e.n1 = &tv.n1[idx1];
        e.n2 = &tv.n1[idx2];

        tv.e1.push_back(e);
    }

    inFile >> size;
    iter = size;
    while (iter > 0)
    {
        node n;
        inFile >> n.coord.x;
        inFile >> n.coord.y;
        inFile >> n.coord.z;

        tv.n2.push_back(n);
        iter--;
    }

    //  Take edges.
    inFile >> edges;
    for (int i = 0; i < edges; ++i)
    {
        inFile >> idx1;
        inFile >> idx2;
        tv.n2[idx1].adj_list.push_back(&tv.n2[idx2]);
        tv.n2[idx2].adj_list.push_back(&tv.n2[idx1]);

        edge e;
        e.n1 = &tv.n2[idx1];
        e.n2 = &tv.n2[idx2];
        tv.e2.push_back(e);
    }

    inFile >> size;
    iter = size;
    while (iter > 0)
    {
        node n;
        inFile >> n.coord.x;
        inFile >> n.coord.y;
        inFile >> n.coord.z;

        tv.n3.push_back(n);
        iter--;
    }

    //  Take edges.
    inFile >> edges;
    for (int i = 0; i < edges; ++i)
    {
        inFile >> idx1;
        inFile >> idx2;
        tv.n3[idx1].adj_list.push_back(&tv.n3[idx2]);
        tv.n3[idx2].adj_list.push_back(&tv.n3[idx1]);

        edge e;
        e.n1 = &tv.n3[idx1];
        e.n2 = &tv.n3[idx2];

        tv.e3.push_back(e);
    }

    inFile.close();
    return tv;
}

coordinate get_average(vector<node> v)
{
    coordinate c;
    c.x = 0;
    c.x = 0;
    c.x = 0;

    node temp;
    for (int i = 0; i < static_cast<int>(v.size()); ++i)
    {
        temp = v[i];
        c.x += temp.coord.x;
        c.y += temp.coord.y;
        c.z += temp.coord.z;
    }

    c.x /= static_cast<int>(v.size());
    c.y /= static_cast<int>(v.size());
    c.z /= static_cast<int>(v.size());

    c.x = -c.x;
    c.y = -c.y;
    c.z = -c.z;
    return c;
}

// int main(int argc, char *argv[])
// {
//     QApplication a(argc, argv);
//     QLabel l;
//     QPicture pi;
//     QPainter p(&pi);

//     p.setRenderHint(QPainter::Antialiasing);
//     p.setPen(QPen(Qt::black, 5, Qt::SolidLine, Qt::RoundCap));
//     p.drawLine(-150, -150, -151, -151);
//     // vector<node> v = get_3D_graph();
//     vector<node> v = get_3D_graph("draw.txt");
//     for (int iter = 0; iter < static_cast<int>(v.size()); iter++)
//     {
//         node n = v[iter];
//         int x1 = n.coord.x;
//         int y1 = n.coord.y;
//           cout << x1 << " " << y1 ;
//         //   int z1 = n.coord.z;

//         for (int i = 0; i < static_cast<int>(n.adj_list.size()); ++i)
//         {
//             node *n2 = n.adj_list[i];
//             int x2 = n2->coord.x;
//             int y2 = n2->coord.y;
//             // cout << x2 << " " << y2 ;
//             // int z2 = n2->coord.z;
//             p.drawLine(x1, y1, x2, y2);
//             //   cout << x1 << " " << y1 << " " << z1 << endl;
//             //   cout << n2->coord.x << " " << endl;
//         }
//    }
//    p.end(); // Don't forget this line!

//    l.setPicture(pi);
//    l.show();
//    return a.exec();
// }
