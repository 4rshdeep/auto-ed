#include "mainwindow.h"
#include <QApplication>
#include <bits/stdc++.h>

using namespace std;

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    cout << "start";
    w.show();

    return a.exec();
}
