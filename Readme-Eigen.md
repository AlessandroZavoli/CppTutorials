
# Create project directories
In the root level of the project, always create
- `src`:    for all .cpp files
- `include` for all .h files
- `data`    for numerical datas [optional]
- `results` for the output of the program [optional]

# Compilation commands
1. create a `build` directory and move into

    $ mkdir build
    $ cd build

2. from `build/` launch `cmake` to create the makefile

    $ cmake ../CMakeLists.txt

3. then launch `make` to compile the code

    $ make

4. launch the executable from the `build` directory

    $ ./nome_project

Would you need to reset up to point (2.), use the command  `$ make clean`





## Useful notes on Eigen
How to access to the elements of a vector:


    x.segment(i,n)  -->  x(i:i+n)

    // x = [1, 2, 3, 4, 5, 6]
    x.segment(0,3)      // ans = {1, 2, 3}



Linspace-equivalent:    `VectorXd::LinSpaced(size, low, high)`    
