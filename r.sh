#!/usr/bin/env bash

# Run the build script
python3 build.py

# If not successful, remove trash files and quit
if [ -f "exec" ]; then
    echo "Build successful"
else
    echo "Build failed"
    rm -f exec
    rm -rf build
    rm -rf dist
    rm -f main.spec
    echo "Exiting"
    exit 1
fi

# Run the executable
echo "Running current build"
echo
sleep 1
./exec