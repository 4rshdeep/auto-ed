/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.6.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QLabel *l1;
    QLabel *l2;
    QLabel *l3;
    QPushButton *pushButton;
    QLabel *l4;
    QLabel *l5;
    QTextEdit *t3;
    QTextEdit *t4;
    QPushButton *pushButton_2;
    QTextEdit *t1;
    QTextEdit *t2;
    QPushButton *moveX;
    QPushButton *moveY;
    QPushButton *moveZ;
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(1200, 1000);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        l1 = new QLabel(centralWidget);
        l1->setObjectName(QStringLiteral("l1"));
        l1->setGeometry(QRect(60, 50, 400, 400));
        l2 = new QLabel(centralWidget);
        l2->setObjectName(QStringLiteral("l2"));
        l2->setGeometry(QRect(600, 50, 400, 400));
        l3 = new QLabel(centralWidget);
        l3->setObjectName(QStringLiteral("l3"));
        l3->setGeometry(QRect(600, 500, 400, 400));
        pushButton = new QPushButton(centralWidget);
        pushButton->setObjectName(QStringLiteral("pushButton"));
        pushButton->setGeometry(QRect(20, 10, 117, 32));
        l4 = new QLabel(centralWidget);
        l4->setObjectName(QStringLiteral("l4"));
        l4->setGeometry(QRect(60, 500, 400, 400));
        l5 = new QLabel(centralWidget);
        l5->setObjectName(QStringLiteral("l5"));
        l5->setGeometry(QRect(28, 470, 561, 23));
        t3 = new QTextEdit(centralWidget);
        t3->setObjectName(QStringLiteral("t3"));
        t3->setGeometry(QRect(340, 470, 61, 21));
        t4 = new QTextEdit(centralWidget);
        t4->setObjectName(QStringLiteral("t4"));
        t4->setGeometry(QRect(280, 10, 311, 31));
        pushButton_2 = new QPushButton(centralWidget);
        pushButton_2->setObjectName(QStringLiteral("pushButton_2"));
        pushButton_2->setGeometry(QRect(150, 10, 117, 32));
        t1 = new QTextEdit(centralWidget);
        t1->setObjectName(QStringLiteral("t1"));
        t1->setGeometry(QRect(180, 470, 61, 21));
        t2 = new QTextEdit(centralWidget);
        t2->setObjectName(QStringLiteral("t2"));
        t2->setGeometry(QRect(260, 470, 61, 21));
        moveX = new QPushButton(centralWidget);
        moveX->setObjectName(QStringLiteral("moveX"));
        moveX->setGeometry(QRect(550, 470, 41, 32));
        moveY = new QPushButton(centralWidget);
        moveY->setObjectName(QStringLiteral("moveY"));
        moveY->setGeometry(QRect(620, 470, 41, 32));
        moveZ = new QPushButton(centralWidget);
        moveZ->setObjectName(QStringLiteral("moveZ"));
        moveZ->setGeometry(QRect(690, 470, 41, 32));
        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 1200, 28));
        MainWindow->setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainWindow->setStatusBar(statusBar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", 0));
        l1->setText(QApplication::translate("MainWindow", "View1", 0));
        l2->setText(QApplication::translate("MainWindow", "View2", 0));
        l3->setText(QApplication::translate("MainWindow", "View3", 0));
        pushButton->setText(QApplication::translate("MainWindow", "3D to 2D", 0));
        l4->setText(QString());
        l5->setText(QApplication::translate("MainWindow", "Direction Ratios", 0));
        pushButton_2->setText(QApplication::translate("MainWindow", "2D to 3D", 0));
        moveX->setText(QApplication::translate("MainWindow", "X", 0));
        moveY->setText(QApplication::translate("MainWindow", "Y", 0));
        moveZ->setText(QApplication::translate("MainWindow", "Z", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
