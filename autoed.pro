#-------------------------------------------------
#
# Project created by QtCreator 2018-03-14T09:28:25
#
#-------------------------------------------------

QT       += core gui
QT += widgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = autoed
DESTDIR = bin/
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

MOC_DIR     = ./build/moc
OBJECTS_DIR = ./build/obj
RCC_DIR     = ./build/qrc
UI_DIR      = ./build/uic

SOURCES += ./src/*.cpp
HEADERS += ./include/*.h

FORMS += ./forms/*.ui \

LIBS += \
    -larmadillo