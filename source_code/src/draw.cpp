#include <math.h>
#include <QtCore>
#include <QtGui>
#include "struct.h"

using namespace Qt;
using namespace std;

threeView get_three_views(string filename)
{
	threeView tv;

	int size, edges, idx1, idx2, iter;

	ifstream inFile;

	inFile.open(filename);
	if (!inFile)
	{
		cout << "Unable to open file";
		return tv;
	}

	inFile >> size;
	iter = size;
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
	inFile >> edges;
	for (int i = 0; i < edges; ++i)
	{
		inFile >> idx1;
		inFile >> idx2;
		tv.n1[idx1].adj_list.push_back(&tv.n1[idx2]);
		tv.n1[idx2].adj_list.push_back(&tv.n1[idx1]);

		edge e;
        e.node1 = &tv.n1[idx1];
        e.node2 = &tv.n1[idx2];

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
        e.node1 = &tv.n2[idx1];
        e.node2 = &tv.n2[idx2];
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
        e.node1 = &tv.n3[idx1];
        e.node2 = &tv.n3[idx2];
		tv.e3.push_back(e);
	}

	inFile.close();
	return tv;
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

coordinate get_average(vector<node> v)
{
	coordinate c;
	c.x = 0;
    c.y = 0;
    c.z = 0;

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

int get_max_y(vector<edge> v)
{
	int max = v[0].node1->coord.y;
	int temp1, temp2;
	for (int i = 0; i < static_cast<int>(v.size()); i++)
	{
		temp1 = v[i].node1->coord.y;
		temp2 = v[i].node2->coord.y;
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

int get_max_x(vector<edge> v)
{
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

int get_min_x(vector<edge> v)
{
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

int get_min_y(vector<edge> v)
{
	int min = v[0].node1->coord.y;
	int temp1, temp2;
	for (int i = 0; i < static_cast<int>(v.size()); i++)
	{
		temp1 = v[i].node1->coord.y;
		temp2 = v[i].node2->coord.y;
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

int get_min_z(vector<edge> v)
{
	int min = v[0].node1->coord.z;
	int temp1, temp2;
	for (int i = 0; i < static_cast<int>(v.size()); i++)
	{
		temp1 = v[i].node1->coord.z;
		temp2 = v[i].node2->coord.z;
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

int get_max_z(vector<edge> v)
{
	int max = v[0].node1->coord.z;
	int temp1, temp2;
	for (int i = 0; i < static_cast<int>(v.size()); i++)
	{
		temp1 = v[i].node1->coord.z;
		temp2 = v[i].node2->coord.z;
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

QPicture draw_views(vector<edge> v)
{
	int x1 = get_max_x(v);
	int y1 = get_max_y(v);
	int x2 = get_min_x(v);
	int y2 = get_min_y(v);
	cout << "x1 " << x1;
	int fact = max((x1 - x2), (y1 - y2));

	QPicture pi;
	QPainter p(&pi);
	p.setRenderHint(QPainter::Antialiasing);
	p.setPen(QPen(Qt::black, 5, Qt::SolidLine, Qt::RoundCap));
	p.drawLine(-150, -150, -150, -150);
	cout << "fact " << fact << endl;
	if (fact > 0)
	{
		fact = 250.0 / fact;
	}
	cout << "fact " << fact << endl;
	for (int iter = 0; iter < static_cast<int>(v.size()); iter++)
	{
		x1 = (v[iter].node1->coord.x) * fact;
		y1 = (v[iter].node1->coord.y) * fact;
		x2 = (v[iter].node2->coord.x) * fact;
		y2 = (v[iter].node2->coord.y) * fact;
		p.drawLine(x1, y1, x2, y2);
	}
	p.end();
	return pi;
}

QPicture draw_xy(vector<edge> v)
{
	int x1 = get_max_x(v);
	int y1 = get_max_y(v);
	int x2 = get_min_x(v);
	int y2 = get_min_y(v);
	cout << "x1 " << x1;
	int fact = max((x1 - x2), (y1 - y2));

	QPicture pi;
	QPainter p(&pi);
	p.setRenderHint(QPainter::Antialiasing);
	p.setPen(QPen(Qt::black, 5, Qt::SolidLine, Qt::RoundCap));
	p.drawLine(-150, -150, -150, -150);
	cout << "fact " << fact << endl;
	if (fact > 0)
	{
        fact = 200.0 / fact;
	}
	cout << "fact " << fact << endl;
	for (int iter = 0; iter < static_cast<int>(v.size()); iter++)
	{
		x1 = (v[iter].node1->coord.x) * fact;
		y1 = (v[iter].node1->coord.y) * fact;
		x2 = (v[iter].node2->coord.x) * fact;
		y2 = (v[iter].node2->coord.y) * fact;
		p.drawLine(x1, y1, x2, y2);
	}
	p.end();
	return pi;
}

QPicture draw_yz(vector<edge> v)
{
	int z1 = get_max_z(v);
	int y1 = get_max_y(v);
	int z2 = get_min_z(v);
	int y2 = get_min_y(v);
	int fact = max((z1 - z2), (y1 - y2));
	cout << "z1 " << z1;

	QPicture pi;
	QPainter p(&pi);
	p.setRenderHint(QPainter::Antialiasing);
	p.setPen(QPen(Qt::black, 5, Qt::SolidLine, Qt::RoundCap));
	p.drawLine(-150, -150, -150, -150);
	cout << "fact " << fact << endl;

	if (fact > 0)
	{
		fact = 250.0 / fact;
	}
	cout << "fact " << fact << endl;
	for (int iter = 0; iter < static_cast<int>(v.size()); iter++)
	{
		y1 = (v[iter].node1->coord.y) * fact;
		z1 = (v[iter].node1->coord.z) * fact;
		z2 = (v[iter].node2->coord.z) * fact;
		y2 = (v[iter].node2->coord.y) * fact;
		p.drawLine(z1, y1, z2, y2);
	}
	p.end();
	return pi;
}

QPicture draw_xz(vector<edge> v)
{
	int z1 = get_max_z(v);
	int x1 = get_max_y(v);
	int z2 = get_min_z(v);
	int x2 = get_min_y(v);
	int fact = max((z1 - z2), (x1 - x2));
	cout << "z1 " << z1;

	QPicture pi;
    QPainter p(&pi);
	p.setRenderHint(QPainter::Antialiasing);
	p.setPen(QPen(Qt::black, 5, Qt::SolidLine, Qt::RoundCap));
	p.drawLine(-150, -150, -150, -150);
	cout << "fact " << fact << endl;

	if (fact > 0)
	{
		fact = 250.0 / fact;
	}
	cout << "fact " << fact << endl;
	for (int iter = 0; iter < static_cast<int>(v.size()); iter++)
	{
		x1 = (v[iter].node1->coord.x) * fact;
		z1 = (v[iter].node1->coord.z) * fact;
		z2 = (v[iter].node2->coord.z) * fact;
		x2 = (v[iter].node2->coord.x) * fact;
		p.drawLine(z1, x1, z2, x2);
	}
	p.end();
	return pi;
}
