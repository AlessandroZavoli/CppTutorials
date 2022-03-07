## Summary

- Example 0: Hello world

- [Example 1](#example-1)  Using `Eigen` for vector/matrix operations




## Installation

The following steps show how to install and set up the optimal control library on a Ubuntu 20.04 system.
In order to compile the source files, a few external libraries must be installed on your machine.
Later we will see how to include and link them in your programs.

### Preliminaries
It is strongly suggested to run the following commands after installing Ubuntu

    $ sudo apt install build-essential
    $ sudo apt install checkinstall

Recall that to open a terminal in Ubuntu one has to press <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>T</kbd>.

Also, it is recommended to update all software packages and repositories before starting the installation process

    $ sudo apt update
    $ sudo apt upgrade

If the system requires to restart the machine, restart it before proceeding.

Install gnuplot on your system by entering

    $ sudo apt install gnuplot

Install git on your system by entering

    $ sudo apt install git

Configure your git credentials with your name (it can be different from the GitHub username) and email (it should be the same as the one you are using on GitHub)

    $ git config --global user.name "Your Name Comes Here"
    $ git config --global user.email you@yourdomain.example.com

Remember to enclose your name in quotes (e.g. "Mario Rossi"), while your email must not be enclosed in quotes.

### Visual Studio Code (Optional, but Strongly advised)

In order to edit and write new code, you will need an editor.
We recommend using VSCode, as it is quite easy to use and yet extremely powerful and customizable.

To install VSCode, download the latest .deb file from the official website (https://code.visualstudio.com/download) and save it (do not open it with a default application).
By default, the browser should save the file in ~/Downloads (or ~/Scaricati if you set Italian as default language for your OS).
Open a terminal, move to the download directory and enter

    $ sudo dpkg -i code_X.Y.Z_amd64.deb

where X.Y.Z is the number of the version that you downloaded. 
Rather than writing the whole filename, you can start typing it and hit <kbd>Tab</kbd> as soon as you entered enough characters to exclude any other possible file in the directory.
Once the installation is over, you can remove the .deb file 

    $ rm code_X.Y.Z_amd64.deb


### CMake

CMake is a tool used to generate Makefiles (i.e., compilation and linking istruction files) of large projects. 
This project heavily relies on it, so be sure to install it by typing in a terminal window

    $ sudo apt install cmake

### Eigen

Eigen is a set of open-source C++ libraries for linear algebra operations.
The latest stable release can be downloaded from the official website (http://eigen.tuxfamily.org/).
If the tar.bz2 archive is downloaded, the files can be extracted as

    $ sudo tar jxvf eigen-X.Y.Z.tar.bz2

To install Eigen to a default location, move into the new folder that contains all the extracted files by running 

    $ cd eigen-X.Y.Z

then run the following commands

    $ sudo mkdir build
    $ cd build
    $ sudo cmake ..
    $ sudo make install

The Eigen library will be installed in `/usr/local/include/eigenX/`.
Finally, both the archive and the folder of extracted files `eigen-X.Y.Z` can be deleted.

### YAML-cpp

YAML-cpp is an open-source parser and emitter of `.yaml` files. 
These are generally used as configuration files.
While they are not used in the core library, they are used in most recent examples, so it is highly recommended to install this library.

Download the latest tar.gz release from https://github.com/jbeder/yaml-cpp/releases and extract it as

    $ sudo tar zxvf yaml-cpp-yaml-cpp-X.Y.Z.tar.gz

Then, enter the new folder and run

    $ sudo mkdir build
    $ cd build
    $ sudo cmake ..
    $ sudo make install

Both the archive and the folder can be safely deleted.

## Examples

### Example 1

# Modifica da Boris
