


## Useful notes on Eigen
How to access to the elements of a vector:


    x.segment(i,n)  -->  x(i:i+n)

    // x = [1, 2, 3, 4, 5, 6]
    x.segment(0,3)      // ans = {1, 2, 3}



Linspace-equivalent:    `VectorXd::LinSpaced(size, low, high)`    
