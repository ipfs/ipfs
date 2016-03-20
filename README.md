# IPFS - The Permanent Web

[![ipfs](https://img.shields.io/badge/irc-%23ipfs-brightgreen.svg)](https://webchat.freenode.net/?channels=ipfs)

Welcome to IPFS! Why not [watch a video demo](https://www.youtube.com/watch?v=8CMxDNuuAiQ) to get started?

## Table of Contents (links)

- [IPFS Overview](#overview) and [Quick Summary](#quick-summary)
- [How IPFS Works](#how-ipfs-works)
  - [Papers](#ipfs-papers), [Talks, and Demos](#ipfs-talks)
- [About IPFS](#more-about-ipfs)
  - [Current State](#current-state-of-ipfs)
  - [Alpha Distribution](#alpha-distribution)
  - [Security Issues and Disclosures](#security-issues-and-disclosures)
- [Getting Started](#alpha-distribution) with the IPFS alpha distribution
  - [Install IPFS](https://ipfs.io/docs/install/)
  - [Setup IPFS](https://ipfs.io/docs/getting-started/#init-the-repo)
  - [Going Online](https://ipfs.io/docs/getting-started/#going-online)
- [Project and Community](#project-and-community)
  - [FAQs: Frequently Asked Questions](https://github.com/ipfs/faq)
  - [Support and Getting Help!](https://github.com/ipfs/support)
  - [Sprints + Project Management](https://github.com/ipfs/pm)
  - [Contributing Guidelines](https://github.com/ipfs/community/blob/master/contributing.md)
- [Project Links](#project-links)
  - [Protocol Implementations](#protocol-implementations)
  - [API Client Libraries](#api-client-libraries)
  - [Project Directory](#project-directory)

## Overview

IPFS ([the InterPlanetary File System](https://github.com/ipfs/faq/issues/76)) is a new hypermedia distribution protocol, addressed by content and identities. IPFS enables the creation of completely distributed applications. It aims to make the web faster, safer, and more open.

IPFS is a distributed file system that seeks to connect all computing devices with the same system of files. In some ways, this is similar to the original aims of the Web, but IPFS is actually more similar to a single bittorrent swarm exchanging git objects. You can read more about its origins in the paper [IPFS - Content Addressed, Versioned, P2P File System](https://github.com/ipfs/ipfs/blob/master/papers/ipfs-cap2pfs/ipfs-p2p-file-system.pdf?raw=true).

IPFS is becoming a new major subsystem of the internet. If built right, it could complement or replace HTTP. It could complement or replace even more. It sounds crazy. It _is_ crazy.

[![Alpha Demo](img/ipfs-alpha-video.png)](https://www.youtube.com/watch?v=8CMxDNuuAiQ)

Want to see more? Check out Juan Benet's talk at Sourcegraph - [IPFS: The Permanent Web](https://www.youtube.com/watch?v=Fa4pckodM9g).

### Quick Summary

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

## How IPFS Works

To learn more about how IPFS works take a look at the [Papers](#ipfs-papers) or [Talks](#ipfs-talks). You can also explore the [Specs](https://github.com/ipfs/specs) in writing.

#### IPFS Papers

- [IPFS - Content Addressed, Versioned, P2P File System (draft 3)](https://github.com/ipfs/ipfs/blob/master/papers/ipfs-cap2pfs/ipfs-p2p-file-system.pdf?raw=true)
- [Specifications](https://github.com/ipfs/specs) (work in progress)
- see also: https://github.com/ipfs/papers

#### IPFS Talks

This is a short selection of introductory talks. In time we will collect more here.

- 2014-07-21 - [IPFS: The Permanent Web](https://www.youtube.com/watch?v=Fa4pckodM9g) at [Sourcegraph](https://sourcegraph.com/) (first public talk)
- 2015-02-20 - [IPFS Alpha Demo](https://www.youtube.com/watch?v=8CMxDNuuAiQ)
- 2015-06-03 - [IPFS Hands on Introduction](https://www.youtube.com/watch?v=h73bd9b5pPA) at Ethereum SV Meetup
- **2015-10-22 - [IPFS: The Distributed, Permanent Web](https://www.youtube.com/watch?v=HUVmypx9HGI) at Stanford Seminar (best overview of project)**


## More About IPFS

The IPFS project seeks to evolve the infrastructure of the Internet and the Web, with many things we've learned from successful systems, like [Git](http://git-scm.com/), [BitTorrent](http://bittorrent.org/), [Kademlia](http://en.wikipedia.org/wiki/Kademlia), [Bitcoin](http://bitcoin.org), and many, many more. This is the sort of thing that would have come out of ARPA/DARPA/IETF/BellLabs in another age. IPFS is a Free Open Source project, with hundreds of contributors.

### Current State of IPFS

#### IPFS is a work in progress!

Please note that IPFS is a work in progress. It is an ambitious plan to make the internet more free, open, secure, and high performance. It builds on the good ideas of numerous battle-tested distributed systems.

Today, there is one main IPFS Protocol implementation (in [Go](https://github.com/ipfs/go-ipfs)) with [more on the way](#protocol-implementations) ([Javascript](https://github.com/ipfs/js-ipfs), and [Python](https://github.com/ipfs/py-ipfs)).

### Alpha Distribution

In February of 2015, the [go-ipfs](https://github.com/ipfs/go-ipfs) implementation was released as an "Alpha Distribution". Since then, go-ipfs has been making regular releases on the road towards Beta. Both [js-ipfs](https://github.com/ipfs/js-ipfs) and [py-ipfs](https://github.com/ipfs/py-ipfs) are in progress.

- [Install IPFS Alpha Distribution](http://ipfs.io/docs/install)
- [Setup IPFS and Getting Started](http://ipfs.io/docs/getting-started)
- [Going Online](http://ipfs.io/docs/getting-started/#going-online)
- [More Examples](https://ipfs.io/docs/examples/)

For an in-depth tutorial, see a [Hands on Introduction](https://www.youtube.com/watch?v=h73bd9b5pPA).

### Security Issues and Disclosures

The IPFS protocol and its implementations are still in heavy development. This means that there may be problems in our protocols, or there may be mistakes in our implementations. And -- though IPFS is not production-ready yet -- many people are already running nodes in their machines. So we take security vulnerabilities very seriously. If you discover a security issue, please bring it to our attention right away!

If you find a vulnerability that may affect live deployments -- for example, by exposing a remote execution exploit -- please send your report privately to security@ipfs.io. Please DO NOT file a public issue.

If the issue is a protocol weakness that cannot be immediately exploited or something not yet deployed, just discuss it openly.


## Project and Community

The IPFS Project is now very large, with hundreds of contributors in our community. You are invited to join it! Here are some links to our communication channels:

- [FAQs: Frequently Asked Questions](https://github.com/ipfs/faq)
- [Support and Getting Help!](https://github.com/ipfs/faq)
- [Sprints + Project Management](https://github.com/ipfs/pm)
- [Contributing Guidelines](https://github.com/ipfs/community/blob/master/contributing.md)

You can also find our community on:

- IRC: [#ipfs on chat.freenode.net](http://chat.ipfs.io) for live help + some dev discussions ([Logs](https://botbot.me/freenode/ipfs/))
- Google Group: [ipfs-users@groups.google.com](https://groups.google.com/forum/#!forum/ipfs-users) (low traffic)
- Twitter: [@IPFSbot](https://twitter.com/ipfsbot) for some news.


## Project Links

The IPFS Project is big -- there are many efforts subprojects and related efforts. We will document the core efforts here, though look around. The space is exploding and lots of new projects are springing up all the time.

For a community-curated lists of awesome projects using IPFS, check out [awesome-ipfs](https://github.com/ipfs/awesome-ipfs)!

#### Protocol Implementations

| Language | Project | Completeness |
|----------|---------|--------------|
| Go | https://github.com/ipfs/go-ipfs | **reference** |
| Javascript | https://github.com/ipfs/js-ipfs | incomplete |
| Python | https://github.com/ipfs/py-ipfs | starting |

If you would you like to start your own language implementation of IPFS, check out the [IPFS Implementation Guide](https://github.com/ipfs/specs/blob/master/overviews/implement-ipfs.md), and the [Specifications](https://github.com/ipfs/specs). The specs are still evolving, but the core formats are stable and can be built on. Make sure to post an issue if you would like to start an effort, as many people have expressed interest in contributing to new implementations.

#### API Client Libraries

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
| C# | https://github.com/TrekDev/net-ipfs-api | |
| C/C++ | contact: [@PayasR](https://github.com/PayasR) | 0% |
| Julia | contact: [@rened](https://github.com/rened) | 0% |
| Lua | contact: [@seclorum](https://github.com/seclorum) | 0% |
| Erlang | ! | 0% |
| Objective C | ! | 0% |

Please help by contributing to one of the above client libraries. If you would like to create another, please see the [IPFS API Client Implementation Guide](https://github.com/ipfs/go-ipfs/blob/master/docs/implement-api-bindings.md), and [tell us](https://github.com/ipfs/ipfs/issues/83) so we can help!

### Project Directory

This aims to be a directory of all the various repos in the [IPFS Github Organization](https://github.com/ipfs), and other closely related things.

#### Project Oranization

* [ipfs](https://github.com/ipfs/ipfs) - Master repo, intro, and news.
* [community](https://github.com/ipfs/community) - Community Discussions and documentation on community practices.
* [pm](https://github.com/ipfs/pm) - Community Sprints and Project Management.

#### Get Help!

* [FAQ](https://github.com/ipfs/faq) - Frequently Asked Questions, and answers. All questions are posed as GitHub issues.
* [support](https://github.com/ipfs/support) - Support and Help with running IPFS. Post an Issue and we will help there or route you.

#### Documents

* [papers](https://github.com/ipfs/papers) - Academic papers on IPFS.
* [specs](https://github.com/ipfs/specs) - Specifications on the IPFS protocol.
* [notes](https://github.com/ipfs/notes) - Various relevant notes and discussions (that do not fit elsewhere).

#### Discussions

* [apps](https://github.com/ipfs/apps) - Coordinating writing apps on top of ipfs.
* [archives](https://github.com/ipfs/archives) - Coordinating archival efforts with IPFS.

#### Specification Discussions

* [archive-format](https://github.com/ipfs/archive-format) - A DAG Archive format.
* [bitswap-ml](https://github.com/ipfs/bitswap-ml) - Bitswap and Machine Learning.
* [blockchain-data](https://github.com/ipfs/blockchain-data) - Using IPFS for storing data for Blockchain apps.

#### Protocol Implementations

* [go-ipfs](https://github.com/ipfs/go-ipfs) - Implementation in Go.
* [js-ipfs](https://github.com/ipfs/js-ipfs) - Implementation in Javascript.
* [py-ipfs](https://github.com/ipfs/py-ipfs) - Implementation in Python.

#### API Client Implementations

* [java-ipfs-api](https://github.com/ipfs/java-ipfs-api) - Implementation in Java.
* [js-ipfs-api](https://github.com/ipfs/js-ipfs-api) - Implementation in Javascript.
* [go-ipfs-api](https://github.com/ipfs/go-ipfs-api) - Implementation in Go.
* [python-ipfs-api](https://github.com/ipfs/python-ipfs-api) - Implementation in Python.
* [scala-ipfs-api](https://github.com/ipfs/scala-ipfs-api) - Implementation in Scala.
* [swift-ipfs-api](https://github.com/ipfs/swift-ipfs-api) - Implementation in Swift.

#### IPFS Node Apps

* [station](https://github.com/ipfs/station) - An IPFS Dektop app.
* [webui](https://github.com/ipfs/webui) - The IPFS WebUI app.

#### Apps on IPFS

* [astralboot](https://github.com/ipfs/astralboot) - Low level boot server that deploys directly out of IPFS (TFTP, PXE Boot).
* [ipfs-web-app](https://github.com/ipfs/ipfs-web-app) - IPFS web app interfaces.
* [starlog](https://github.com/ipfs/starlog) - Blog posts in IPFS.
* [container-demos](https://github.com/ipfs/container-demos) - Demos on how to boot docker images and VMs from IPFS.
* [ipfs-geoip](https://github.com/ipfs/ipfs-geoip) - Geoip over ipfs.
* [ipfs-npm](https://github.com/ipfs/ipfs-npm) - npm on IPFS.

#### Community Infrastructure

* [infrastructure](https://github.com/ipfs/infrastructure) - Tools and systems for the community.
* [blog](https://github.com/ipfs/blog) - The IPFS Blog
* [website](https://github.com/ipfs/website) - The source to the IPFS community website at http://ipfs.io.
* [distributions](https://github.com/ipfs/distributions) - Scripts to build the /install html page.
* [project-repos](https://github.com/ipfs/project-repos) CI status and other health metrics
* [weekly](https://github.com/ipfs/weekly) - Prepare and store IFPS Weekly roundups

Ref Lists

* [refs](https://github.com/ipfs/refs) - Tools for publishing lists of IPFS ref heads.
* [refs-denylists-dmca](https://github.com/ipfs/refs-denylists-dmca) - DMCA takedown notices for the IPFS Public Gateway.
* [refs-solarnet-storage](https://github.com/ipfs/refs-solarnet-storage) - Inventory of content archived on Solarnet storage hosts.

## Other Community Resources

* [examples](https://github.com/ipfs/examples) - Examples on how to use go-ipfs.
* [awesome-ipfs](https://github.com/ipfs/awesome-ipfs) - Useful resources for using IPFS and building things on top of it.
* [ipfs-readme-standard](https://github.com/ipfs/ipfs-readme-standard) - Standardize all IPFS Readme.md's and other markdown files.
* [logo](https://github.com/ipfs/logo) - The logo for IPFS.
* [translation project](https://www.transifex.com/ipfs/ipfs) - Crowdsourced translation of IPFS WebUI and the ipfs.io website.

#### IPFS Meetups

* [ipfs/lisbon](https://github.com/ipfs/sf) - The IPFS meetup in Lisbon.
* More repos coming here. Check [the community discussions](https://github.com/ipfs/community/issues) for other meetups. (There's many now!)

We encourage and support IPFS Meetups, please let us know if you would like to start one. Feel free to organize yourself through [the Community discussions](https://github.com/ipfs/community/issues) and [to advertise events in the main repository](https://github.com/ipfs/ipfs/issues).

#### Tools

Installing

* [install-go-ipfs](https://github.com/ipfs/install-go-ipfs) - Install go-ipfs shell script.
* [ipfs-update](https://github.com/ipfs/ipfs-update) - An updater tool for IPFS.
* [fs-repo-migrations](https://github.com/ipfs/fs-repo-migrations) - These are migrations for [IPFS fs-repo](https://github.com/ipfs/specs/blob/repo/fs-repo) versions.
* [npm-go-ipfs](https://github.com/ipfs/npm-go-ipfs) - Install go-ipfs from npm.

Other

* [dataviz](https://github.com/ipfs/dataviz) - IPFS data visualizations.
* [dir-index-html](https://github.com/ipfs/dir-index-html) - Directory listing html.
* [dnslink-deploy](https://github.com/ipfs/dnslink-deploy) - Automatically set DNS records on Digital Ocean.
* [file-browser](https://github.com/ipfs/file-browser) - Generic IPFS file browser UI
* [fs-stress-test](https://github.com/ipfs/fs-stress-test) - Stress testing IPFS filesystem capabilities.
* [ipfs-js-defaults](https://github.com/ipfs/ipfs-js-defaults) - Sane defaults for IPFS node configurations.
* [js-ipfsd-ctl](https://github.com/ipfs/js-ipfsd-ctl) - Control IPFS daemons from JavaScript.
* [ipfs-hubot](https://github.com/ipfs/ipfs-hubot) - Hubot for IPFS uses.

#### Implementation Submodules

Many more exist, but we will endeavor to find them and add them here.

* [api](https://github.com/ipfs/api) - The APIs IPFS implementations must conform to, with planned test suites to check conformity.
* [go-ipld](https://github.com/ipfs/go-ipld) - Implementation of [the IPLD spec](https://github.com/ipfs/specs/tree/master/merkledag/ipld.md) in Go.
* [js-ipfs-repo](https://github.com/ipfs/js-ipfs-repo) - Implementation of [the IPFS repo spec](https://github.com/ipfs/specs/tree/master/repo) in Javascript.
* [go-blocks](https://github.com/ipfs/go-blocks)
* [go-commands](https://github.com/ipfs/go-commands)
* [go-ipfs-util](https://github.com/ipfs/go-ipfs-util) - Common utilities used by go-ipfs and other related go packages.
* [go-iprs](https://github.com/ipfs/go-iprs) - Go-ipfs records.
* [go-libp2p](https://github.com/ipfs/go-libp2p) - libp2p is a networking stack and library modularized out of The IPFS Project, and bundled separately for other tools to use.
* [go-log](https://github.com/ipfs/go-log) - A logging library used by go-ipfs.
* [js-ipfs-path](https://github.com/ipfs/js-ipfs-path) - Javascript helper functions for IPFS path handling.
* [ipfs.js](https://github.com/ipfs/ipfs.js) - IPFS on the Browser.
* [ipfs-blob-store](https://github.com/ipfs/ipfs-blob-store) - A place to buy blobs.
