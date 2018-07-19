echo "Building libfmodgms..."
clang++ -std=c++14 -stdlib=libstdc++ -m64 -Wall -Wno-unknown-pragmas -fPIC -c fmodgms.cpp
clang++ -m64 -shared -Wl,-soname,libfmodgms.so.0 -o libfmodgms.so fmodgms.o -L. -lfmod
#ln -sf libfmodgms.so.0.10 libfmodgms.so
#ln -sf libfmodgms.so.0.10 libfmodgms.so.0
echo "Finished"