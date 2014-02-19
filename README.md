# GFS - the Galactic File System

The Galactic File System (GFS) is a distributed file system that seeks to
connect all computing devices with the same system of files. In some ways,
this is similar to the original aims of the Web, but GFS is actually more
similar to a single bittorrent swarm exchanging files.

A note on the name: the original GFS acronym stood for the Global File System.
But that exact name is already [taken](http://en.wikipedia.org/wiki/GFS2).
So I switched Global for Galactic, in an homage to Licklider's
[Intergalactic Computer Network](http://en.wikipedia.org/wiki/Intergalactic_Computer_Network),
and because peer-to-peer systems look like galaxies to me.

## Features

GFS is modular:
- uses a DHT (kademlia)
- uses a path-based naming service
- uses file chunking
- uses bittorrent-inspired peer-to-peer block exchanges

GFS is a filesystem:
- has directories and files
- mountable filesystem (via FUSE)

GFS uses crypto:
- cryptographic-hash content addressing
- file deduplication
- file versioning
- filesystem-level encryption + signing support

GFS is p2p:
- worldwide peer-to-peer file transfers
- completely decentralized architecture
- **no** central point of failure

GFS is a cdn:
- add a file to the filesystem locally, and it's now available to the world
- caching-friendly (content-hash naming)
- bittorrent-based bandwidth distribution

GFS is a web:
- can be used to view documents like the web
- files accessible via HTTP at `http://gfs.io/<path>`
- browsers or extensions can learn to use `gfs://` directly
- hash-addressed content guarantees authenticity

## Design

See the [paper](https://github.com/jbenet/gfs/raw/master/paper/gfs.pdf).

Submodules

- kademlia
- coral
- bitswap

BitSwap to implement:

- PropShare
- BEP0026
- BEP0040
- BEP0042
