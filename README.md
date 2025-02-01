# InterPlanetary File System (IPFS)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A peer-to-peer hypermedia protocol designed to make the web faster, safer, and more open.

IPFS is a distributed system for storing and accessing files, websites, applications, and data through content-addressing instead of traditional location-based addressing.

## Key Features

- **Decentralized Architecture**: No single point of failure - files are stored across a network of nodes
- **Content Addressing**: Files are identified by cryptographic hashes (CID - Content Identifier)
- **Data Integrity**: Built-in verification through cryptographic hashing
- **Peer-to-Peer Network**: Direct data transfer between nodes without central servers
- **Versioning Support**: Automatic file versioning and historical archiving
- **Efficient Distribution**: Files are chunked and distributed across the network using BitSwap protocol

## Getting Started

### Prerequisites
- Go 1.16+ (for building from source)
- npm/node.js (for web UI development)

### Installation

#### Linux/macOS
```bash
curl -O https://dist.ipfs.tech/kubo/v0.23.0/kubo_v0.23.0_darwin-amd64.tar.gz # macOS
# curl -O https://dist.ipfs.tech/kubo/v0.23.0/kubo_v0.23.0_linux-amd64.tar.gz # Linux
tar -xvzf kubo_v0.23.0*.tar.gz
cd kubo
sudo ./install.sh
```

#### Windows
Download the latest MSI installer from [dist.ipfs.tech](https://dist.ipfs.tech) and follow the installation wizard.

#### Build from Source
```bash
git clone https://github.com/ipfs/kubo.git
cd kubo
make install
```

### Initialize IPFS
```bash
ipfs init
ipfs daemon
```
The web interface will be available at [http://localhost:5001/webui](http://localhost:5001/webui)

### Basic Usage

#### Add a File to IPFS
```bash
echo "Hello IPFS" > hello.txt
ipfs add hello.txt
# Output: added QmXgZAUWd8... hello.txt
```

#### Read Content from CID
```bash
ipfs cat QmXgZAUWd8...
```

#### Pin Content Locally
```bash
ipfs pin add QmXgZAUWd8...
```

#### Access via Gateway
```
https://ipfs.io/ipfs/QmXgZAUWd8...
```

### Use IPFS Companion Browser Extension
Install the IPFS Companion to access IPFS resources directly from your browser.

## Academic Research
IPFS is built on cutting-edge research in distributed systems. Key papers include:

- **IPFS - Content Addressed, Versioned, P2P File System**
- **BitSwap Protocol Specification**
- **libp2p Networking Framework**

See the [IPFS Documentation](https://docs.ipfs.tech) for complete academic references and technical specifications.

## Contributing
We welcome contributions! Please follow these guidelines:

1. Check open issues on our [GitHub Issues](https://github.com/ipfs/kubo/issues) page
2. Fork the repository and create your feature branch
3. Submit a pull request with a clear description of changes

All contributors must adhere to our [Code of Conduct](https://github.com/ipfs/community/blob/master/code-of-conduct.md).

### Development Setup
```bash
make build
make test
```

## License
This project is licensed under the MIT License - see the [LICENSE](https://opensource.org/licenses/MIT) file for details.

## Additional Resources
- [Official Website](https://ipfs.io)
- [IPFS Documentation](https://docs.ipfs.tech)
- [IPFS Blog](https://blog.ipfs.tech)
- [IPFS GitHub Organization](https://github.com/ipfs)
- [IPFS Discussion Forum](https://discuss.ipfs.tech)

---

