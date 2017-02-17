echo "Building libfmodgms..."
clang++ -std=c++11 -stdlib=libc++ -m32 -Wall -Wno-unknown-pragmas -fPIC -c fmodgms.cpp
clang++ -m32 -shared -Wl,-soname,libfmodgms.so.0 -o libfmodgms.so fmodgms.o -L. -lfmod
#ln -sf libfmodgms.so.0.8 libfmodgms.so
#ln -sf libfmodgms.so.0.8 libfmodgms.so.0
echo "Finished"
