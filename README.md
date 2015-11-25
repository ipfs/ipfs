# IPFS - The Permanent Web

[![ipfs](http://img.shields.io/irc/%23ipfs.png)](https://webchat.freenode.net/?channels=ipfs)

Welcome to **IPFS**, the **I**nter**P**lanetary **F**ile **S**ystem! Get started by watching [IPFS: The Distributed, Permenent Web](https://www.youtube.com/watch?v=HUVmypx9HGI).

## Table of Contents (links)

- [Overview](#overview) ([Security Warnings](#security-warnings))
- [How IPFS Works](#how-ipfs-works)
  - [Talks](#talks)
  - [Demos](#demos-and-examples)
  - [Papers](#papers)
- [Get Started](https://ipfs.io/docs/getting-started) ([Installation](https://ipfs.io/docs/install), [Setup](https://ipfs.io/docs/getting-started#init-the-repo) & [Going Online](https://ipfs.io/docs/getting-started/#going-online))
- [Specifications](https://github.com/ipfs/specs#ipfs-specs)
- [Protocol Implementations](#protocol-implementations)
- [API Client Libraries](#api-client-libraries)
- [Community](https://github.com/ipfs/community)
  - [Projects which use IPFS](#community-projects)
  - [How to Contribute](https://github.com/ipfs/community/blob/master/contributing.md)
  - [Development Environment](https://github.com/ipfs/infrastructure)
  - [Roadmap](https://github.com/ipfs/pm) [![Ready](https://badge.waffle.io/ipfs/ipfs.png?label=ready&title=Backlog)](https://waffle.io/ipfs/ipfs)
- [FAQs: Frequently Asked Questions](#faq)

## Security Warnings

Please note that IPFS is a work in progress. It is an ambitious plan to make the internet more free, open, secure, and high performance. It builds on the good ideas of numerous battle-tested distributed systems.

The IPFS protocol and its implementations are still in heavy development. This means that there may be problems in our protocols, or there may be mistakes in our implementations. And -- though IPFS is not production-ready yet -- many people are already running nodes in their machines. So we take security vulnerabilities very seriously. If you discover a security issue, please bring it to our attention right away!

If you find a vulnerability that may affect live deployments -- for example, by exposing a remote execution exploit -- please send your report privately to security@ipfs.io. Please DO NOT file a public issue.

If the issue is a protocol weakness that cannot be immediately exploited or something not yet deployed, just discuss it openly.

## Overview

IPFS ([InterPlanetary File System](#why-the-name-ipfs)) is an Open Source distributed file system that seeks to connect all computing devices with the same system of files. In some ways, this is similar to the original aims of the Web, but IPFS is actually more similar to a single bittorrent swarm exchanging git objects. You can read more about its origins in the paper [IPFS - Content Addressed, Versioned, P2P File System](https://github.com/ipfs/ipfs/blob/master/papers/ipfs-cap2pfs/ipfs-p2p-file-system.pdf?raw=true).

IPFS could become a new major subsystem of the internet. If built right, it could complement or replace HTTP. It could complement or replace even more. It sounds crazy. It _is_ crazy.

## Talks

- [Intro to IPFS](https://www.youtube.com/watch?v=HUVmypx9HGI)
- [IPFS Alpha Demo](https://www.youtube.com/watch?v=8CMxDNuuAiQ)
- [Decentralizing The Web With The Inter-Planetary File System (IPFS)](https://www.youtube.com/watch?v=erB7i6Uc4DM)
- [The Permanent Web](https://www.youtube.com/watch?v=Fa4pckodM9g).

## Demos & Examples

* [container-demos](https://github.com/ipfs/container-demos)
    Demos on how to boot docker images and VMs.

* [examples](https://github.com/ipfs/examples)
    Examples on how to use go-ipfs.
    
## Papers

- [IPFS - Content Addressed, Versioned, P2P File System](https://github.com/ipfs/ipfs/blob/master/papers/ipfs-cap2pfs/ipfs-p2p-file-system.pdf?raw=true)

## How IPFS Works

IPFS is a protocol:
- defines a content-addressed file system
- coordinates content delivery
- combines Kademlia + BitTorrent + Git

IPFS is a filesystem:
- has directories and files
- mountable filesystem (via FUSE)

IPFS is a web:
- can be used to view documents like the web
- files accessible via HTTP at `http://ipfs.io/<path>`
- browsers or extensions can learn to use `ipfs://` directly
- hash-addressed content guarantees authenticity

IPFS is modular:
- connection layer over any network protocol
- routing layer
- uses a routing layer DHT (kademlia/coral)
- uses a path-based naming service
- uses bittorrent-inspired block exchange

IPFS uses crypto:
- cryptographic-hash content addressing
- block-level deduplication
- file integrity + versioning
- filesystem-level encryption + signing support

IPFS is p2p:
- worldwide peer-to-peer file transfers
- completely decentralized architecture
- **no** central point of failure

IPFS is a cdn:
- add a file to the filesystem locally, and it's now available to the world
- caching-friendly (content-hash naming)
- bittorrent-based bandwidth distribution

IPFS has a name service:
- IPNS, an SFS inspired name system
- global namespace based on PKI
- serves to build trust chains
- compatible with other NSes
- can map DNS, .onion, .bit, etc to IPNS

# Protocol Implementations

For a list of IPFS API Client Libraries, please refer to *[Client Libraries](#client-libraries)*

| Language | Project | Completeness |
|----------|---------|--------------|
| Go (reference) | https://github.com/ipfs/go-ipfs | |
| Javascript | https://github.com/ipfs/js-ipfs | |
| Python | https://github.com/ipfs/py-ipfs | |
| Haskell | https://github.com/cleichner/haskell-ipfs | |
| .net | https://github.com/wasabii/dotnet-ipfs | |
| C++ | https://github.com/subtly/cpp-ipfs | |
| Rust | https://github.com/rschulman/rust-ipfs | |

Would you like to start your own language implementation of IPFS? Check out the [IPFS Implementation Guide](https://github.com/ipfs/specs/blob/overviews/overviews/implement-ipfs.md). There is at present no "perfect spec" and many protocol details are still to be decided upon.

## API Client Libraries

For a list of IPFS protocol implementations, please refer to *[Language Implementations](#language-implementations).

| Language | Client Library | Completeness |
|----------|----------------|--------------|
| Go | https://github.com/ipfs/go-ipfs-api | |
| Java | https://github.com/ipfs/java-ipfs-api | |
| Javascript | https://github.com/ipfs/js-ipfs-api | |
| Python | https://github.com/ipfs/python-ipfs-api | |
| Scala | https://github.com/ipfs/scala-ipfs-api | |
| Haskell | https://github.com/davidar/hs-ipfs-api | |
| Swift | https://github.com/ipfs/swift-ipfs-api | |
| CommonLisp | https://github.com/WeMeetAgain/cl-ipfs-api | |
| Rust | https://github.com/rschulman/rust-ipfs-api | |
| Ruby | https://github.com/Fryie/ipfs-ruby | |
| Swift | https://github.com/NeoTeo/ipfs-osx-service | |
| PHP | https://github.com/cloutier/php-ipfs-api | |
| C/C++ | contact: [@PayasR](https://github.com/PayasR) | 0% |
| Julia | contact: [@rened](https://github.com/rened) | 0% |
| Lua | contact: [@seclorum](https://github.com/seclorum) | 0% |
| Erlang | ! | 0% |
| Objective C | ! | 0% |

Want to contribute one of the above client libraries? [Tell us](https://github.com/ipfs/ipfs/issues/83) so we can help!

# Community Projects

| Project | Description |
|---------|-------------|
| [astralboot](https://github.com/ipfs/astralboot) | A low level boot server that deploys directly out of IPFS.|
| [ipfs-web-app](https://github.com/ipfs/ipfs-web-app) | IPFS web app interface. |
| [starlog](https://github.com/ipfs/starlog) | Logging the development of an interplanetary filesystem. This will evenutlaly be a way of making blog posts with IPFS. |
| [station](https://github.com/ipfs/station) | Electron Shell based IPFS app. |
| [webui](https://github.com/ipfs/webui) | The IPFS webui accessible from the api gateway typically at port 500.1 |


## FAQ

Feel free to submit more questions as issues or via my email.

#### What is the goal of IPFS?

To evolve infrastructure of the internet and the web, with many things we've learned from successful systems, like [Git](http://git-scm.com/), [BitTorrent](http://bittorrent.org/), [Kademlia](http://en.wikipedia.org/wiki/Kademlia), [Bitcoin](http://bitcoin.org), and many more.

This is the sort of thing that would have come out of ARPA/DARPA/IETF/BellLabs in another age. In this age, these things "come out of the woodwork", which is coming to mean "from the internet", despite wood being a subpar computer construction material.


#### Is this open-source?

Yes! 100% raw, unadulterated, Free Open Source Software.


#### How do I help!?

Please read [CONTRIBUTE.md](CONTRIBUTE.md). Help with the design. Write or contribute to an implementation or application.


#### How is this different from X?

There is probably a specific discussion about that in the issues. If not, start it.


#### Who designed it?

IPFS is the brainchild of [Juan Benet](http://juan.benet.ai).

But IPFS has been designed by the internet at large. The ideas behind IPFS have been around for many years, in the form of excellent open source systems and research. If it gets far at all, IPFS will be standing on the wigs of giants.

And, there are [many people](contributors.md) whose papers, conversations, or work have directly contributed to its design and implementation.

#### What is the relation to [Filecoin](http://filecoin.io)?

Filecoin is the sister protocol of IPFS. While neither protocol depends on each other, they are perfectly complementary. IPFS handles high performance distribution of objects; Filecoin handles incentivizing the world to backup/seed objects.

#### Why the name IPFS?

The original name was GFS, which stood for the Global File System and seemed more accurate than GitFS. But that exact name was already [taken](http://en.wikipedia.org/wiki/GFS2). So I switched Global for Galactic, in an homage to Licklider's [Intergalactic Computer Network](http://en.wikipedia.org/wiki/Intergalactic_Computer_Network), and because peer-to-peer systems look like galaxies to me. But GFS caused confusion with yet another [GFS](http://en.wikipedia.org/wiki/Google_File_System), even though that one is not even open source.

By popular demand (there were votes and a pronouncement of "GFS is dead. Long live IPFS!" and everything), I switched it to IPFS - InterPlanetary File System, which has several nice properties:

- IP evokes the goal better: internet infrastructure
- InterPlanetary still pays a weaker homage to Licklider
- [If all](http://github.com/ipfs/ipfs/issues) [goes well](http://spacex.com), it may some day actually be InterPlanetary.
- Name clashes less.

Though it gets harder every day, I can still be convinced to change the name.
If you have _the_ killer name, drop me a line.
