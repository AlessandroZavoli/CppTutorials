#include <iostream>
using namespace std;

#include "eigen3/Eigen/Dense"
using Eigen::VectorXd;
using Eigen::MatrixXd;

int main()
{

    std::cout << "hello world" << std::endl;


    /* Vector initialization */
    //initialize a vector of size 5 with values 1, 2, ... 5

    VectorXd a(5);  
    a << 1., 2., 3., 4., 5.;

    //alternatively
    VectorXd b(5);
    b(0)=1;
    b(1)=2;
    b(2)=3;
    b(3)=4;
    b(4)=5;
    
    cout << "a^T = " << a.transpose() << endl;
    cout << "b^T = " << b.transpose() << endl;
    
    return 0;
}