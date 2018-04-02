#include <math.h>
#include <QtCore>
#include <QtGui>

#define PI 3.1415926536
#define SIZE 200
#define FACTOR 100

const float STEP = 2*PI/SIZE;

using namespace Qt;


int main(int argc, char *argv[])
{
   QApplication a(argc, argv);
   QLabel l;
   QPicture pi;
   QPainter p(&pi);
   
   p.setRenderHint(QPainter::Antialiasing);
   p.setPen(QPen(Qt::black, 5, Qt::SolidLine, Qt::RoundCap));
   // p.drawLine(0, 0, 200, 200);
   
   // float x, y, prev_x=0, prev_y=0 ;
   p.drawLine(0, 0, 700, 0);
   p.drawLine(700, 0, 700, 700);
   p.drawLine(700, 700, 0, 700);
   p.drawLine(0, 700, 0, 0);
   
   p.drawLine(10, 10, 490, 10);
   p.drawLine(490, 10, 490, 490);
   p.drawLine(490, 490, 10, 490);
   p.drawLine(10, 490, 10, 10);

 //   for (int i = 1; i < SIZE; ++i){
	// 	x = i*STEP;
	// 	y = sin(x);
 //      // y = x;
	// 	p.drawLine(FACTOR*prev_x, FACTOR*prev_y, FACTOR*x, FACTOR*y);

	// 	prev_x = x;
	// 	prev_y = y;
	// }

   p.end(); // Don't forget this line!

   l.setPicture(pi);
   l.show();
   return a.exec();
}
