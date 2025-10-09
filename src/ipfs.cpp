#include "ipfs.h"
#include <iostream>

void IPFS::addFile(const std::string& filename) {
    files.push_back(filename);
    std::cout << "Added file: " << filename << std::endl;
}

void IPFS::listFiles() const {
    std::cout << "Files in IPFS:" << std::endl;
    for (const auto& f : files) {
        std::cout << " - " << f << std::endl;
    }
}
