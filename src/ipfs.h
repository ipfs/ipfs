#ifndef IPFS_H
#define IPFS_H

#include <string>
#include <vector>

class IPFS {
public:
    void addFile(const std::string& filename);
    void listFiles() const;

private:
    std::vector<std::string> files;
};

#endif
