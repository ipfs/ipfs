#include <iostream>
#include "ipfs.h"

int main() {
    IPFS ipfs;

    ipfs.addFile("file1.txt");
    ipfs.addFile("file2.txt");

    ipfs.listFiles();

    std::cout << "IPFS simulation complete!" << std::endl;
    return 0;
}
