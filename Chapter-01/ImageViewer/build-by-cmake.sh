#!/bin/bash

DIR="build"
if [ -d $DIR ]; then
    echo $DIR Exists!
    rm -rf $DIR
fi

mkdir build && cd build

cmake -DQt5_DIR=$(brew --prefix qt5)/lib/cmake/Qt5 ..

make

