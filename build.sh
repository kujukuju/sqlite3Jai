mkdir -p build/
rm -rf build/*
cd build/
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_C_COMPILER="/usr/bin/gcc" -DCMAKE_CXX_COMPILER="/usr/bin/g++" ../sqlite3
make

cd ../

mkdir -p bin/
rm -rf bin/*
cp build/libsqlite3.so bin/libsqlite3.so