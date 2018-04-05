# Automating Engineering Drawing
This repository hosts the mathematical modelling, functional model, documentation for automating engineering drawing made as part of the course [COP290: Design Practices in CS](http://www.cse.iitd.ac.in/~suban/COP290/semII-2017-2018/)

The package has the following functionalities:
* Given the 3D model description it can generate projections on to any cross section or cutting plane.
* Given appropriate projections is  able to interactively recover the 3D description and produce an isometric drawing from any view direction. 

## How to run?
Run the following in the terminal
  ```
  cd
  qmake
  make
  cd bin
  ./autoed
  ```


## Input File Format
* For 3D to 2D
    * First line has V, the number of vertices.
    * Next V lines should contain 3 doubles, x, y and z co-ordinates.
    * Next line gives E, the number of edges.
    * Next E lines should contain 2 integers, i, j 
     denoting an edge between vertex i and vertex j as 
     per the order of input of the vertices.
* For 2D to 3D
  * First line has number of vertices V
  * Next V lines contains coordinates of those V vertices in XY plane.
  * Next V lines contains coordinates of those V vertices in YZ plane.
  * Next V lines contains coordinates of those V vertices in ZX plane.
  * Next it has number of edges in XY, YZ, ZY planes each with 2 integers, i, j 
     denoting an edge between vertex i and vertex j as 
     per the order of input of the vertices.
     
## Authors
Arshdeep Singh [@4rshdeep](https://github.com/4rshdeep/)    
Ansh Sapra [@ansh2233](https://github.com/ansh2233/)
