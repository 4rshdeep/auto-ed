#include <iostream>
#include <armadillo>

using namespace std;
using namespace arma;

int main()
  {
	// mat A = eye<mat>(5, 5); 
  	// mat B = ones<mat>(4 ,5);
  	int block_size = 3;
  	double *matrix = new double [block_size*block_size];
	arma::mat arma_matrix( matrix, block_size, block_size, true, true );
  	// mat arma_matrix(x, 3, 2, true, true );
	// arma::mat arma_matrix( matrix, block_size, block_size, true, true );
  	

 //  	mat A = { {1, 3, 5}, {2, 4, 6} };
 //  	mat B;

 //  	B << 1 << 3 << 5 << endr << 2 << 4 << 6 << endr;
	// cout << arma_matrix.n_elem << endl;
	cout << size(arma_matrix) << endl;
	// arma_matrix.print();
  	// cout << "am: " << arma_matrix(1, 0) << endl;
  	// for (int i = 0; i < 3; ++i)
  	// {
  	// 	for (int j = 0; j < 2; ++i)
  	// 	{
  	// 		cout << x[i][j] << endl;
  	// 	}
  	// }
  	// cout << B << endl;

  	// cout << A << endl;
  	// cout << 2*B.t() << endl;
  
  return 0;
  }

