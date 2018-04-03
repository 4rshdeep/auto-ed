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
