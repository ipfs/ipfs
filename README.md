# IPFS powers the Distributed Web

### A peer-to-peer hypermedia protocol to make the web faster, safer, and more open.

[![Forum](https://img.shields.io/badge/Discourse-%23Discussion%20forums-blue.svg)](https://discuss.ipfs.io)
[![Matrix](https://img.shields.io/badge/matrix-%23ipfs%3Amatrix.org-blue.svg?style=flat-square)](https://matrix.to/#/#ipfs:matrix.org)
[![IRC](https://img.shields.io/badge/irc-%23ipfs-brightgreen.svg?style=flat-square)](https://webchat.freenode.net/?channels=ipfs)
[![Discord](https://img.shields.io/discord/475789330380488707?color=blueviolet&label=discord&style=flat-square)](https://discord.gg/24fmuwR)
[![Changelog #204](https://img.shields.io/badge/changelog-%23204-lightgrey.svg)](https://changelog.com/204)

## TL;DR

- Visit the [IPFS website](https://www.ipfs.io)
- Watch Juan Benet's [Why IPFS?](https://www.youtube.com/watch?v=zE_WSLbqqvo) keynote from IPFS Camp 2019
- Watch Juan's Stanford Seminar talk on [IPFS: The Distributed, Permanent Web](https://www.youtube.com/watch?v=HUVmypx9HGI)
- Watch a video demo [of the IPFS alpha](https://www.youtube.com/watch?v=8CMxDNuuAiQ)
- Dive in to the [IPFS Docs](https://docs-beta.ipfs.io )
- Talk about your questions and ideas in the [IPFS Forums](https://discuss.ipfs.io)
- Subscribe to the [weekly IPFS newsletter](http://eepurl.com/gL2Pi5) and [read the blog](https://blog.ipfs.io/).

*Or read this in other languages: [Portuguese](translations/pt_BR/README.md).*

## Full contents

- [Quick summary](#quick-summary)
- [Learn how IPFS works](#learn-how-ipfs-works)
- [Current state of IPFS](#current-state-of-ipfs)
  - [Try it out](#alpha-distribution)
  - [A word on security](#a-word-on-security)
- [Project and community](#project-and-community)
- [Help and documentation](#help-and-documentation)
- [Links and resources](#links-and-resources)
  - [Protocol implementations](#protocol-implementations)
  - [HTTP client libraries](#http-client-libraries)
  - [GUIs and helper apps](#guis-and-helper-apps)
  - [Apps and data sets on IPFS](#apps-and-data-sets-on-IPFS)
  - [Specs, papers, and discussion](#specs-papers-and-discussion)
  - [Installation and update tools](#installation-and-update-tools)
  - [Other tools](#other-tools)
  - [Community infrastructure](#community-infrastructure)
- [License](#license)

## Quick summary

The IPFS project seeks to evolve the infrastructure of the Internet and the Web, with many things we've learned from successful systems, like [Git](https://git-scm.com/), [BitTorrent](http://bittorrent.org/), [Kademlia](https://en.wikipedia.org/wiki/Kademlia), [Bitcoin](https://bitcoin.org/), and many, many more. This is the sort of thing that would have come out of ARPA/DARPA, IETF, or Bell Labs in another age. IPFS is a free, open-source project with thousands of contributors.

IPFS ([the InterPlanetary File System](https://docs-beta.ipfs.io/concepts/what-is-ipfs/)) is a hypermedia distribution **protocol** addressed by content and identities. It enables the creation of completely distributed applications, and in doing so aims to make the web faster, safer, and more open. 

IPFS is a **distributed file system** that seeks to connect all computing devices with the same system of files. In some ways, this is similar to the original aims of the Web, but IPFS is actually more similar to a single BitTorrent swarm exchanging Git objects. You can read more about its origins in the paper [IPFS - Content Addressed, Versioned, P2P File System](https://github.com/ipfs/ipfs/blob/master/papers/ipfs-cap2pfs/ipfs-p2p-file-system.pdf?raw=true).

IPFS is becoming a **new major subsystem of the internet**. If built right, it could complement or replace HTTP. It could complement or replace even more. Let's go point-by-point into how.

IPFS is a **protocol**:
- Defines a content-addressed file system
- Coordinates content delivery
- Combines Kademlia + BitTorrent + Git

IPFS is a **file system**:
- Has directories and files
- Is a mountable filesystem (via FUSE)

IPFS is a **web**:
- Can be used to view documents like the conventional web
- Files are accessible via HTTP at `https://ipfs.io/<path>`
- Browsers and extensions can learn to use the `ipfs://` URL or `dweb:/ipfs/` URI schemes directly
- Hash-addressed content guarantees authenticity

IPFS is **modular**:
- Connection layer over any network protocol
- Routing layer
- Uses a routing layer DHT (Kademlia/Coral)
- Uses a path-based naming service
- Uses a BitTorrent-inspired block exchange

IPFS uses **crypto**:
- Cryptographic-hash content addressing
- Block-level deduplication
- File integrity plus versioning
- File-system-level encryption plus signing support

IPFS is **p2p**:
- Worldwide peer-to-peer file transfers
- Completely decentralized architecture
- **No** central point of failure

IPFS is **a CDN**:
- Add a file to the file system locally, and it's now available to the world
- Caching-friendly (content-hash naming)
- BitTorrent-based bandwidth distribution

IPFS has **a name service**:
- IPNS, an SFS-inspired name system
- Global namespace based on PKI
- It serves to build trust chains
- It's compatible with other NSes
- Can map DNS, .onion, .bit, etc to IPNS

## Learn how IPFS works

To learn more about how IPFS works, explore the following resources:
- [IPFS Docs: How IPFS Works](https://docs-beta.ipfs.io/concepts/how-ipfs-works)
- [IPFS Specifications](https://github.com/ipfs/specs)
- IPFS-related papers:
  - [IPFS - Content Addressed, Versioned, P2P File System (draft 3)](https://github.com/ipfs/ipfs/blob/master/papers/ipfs-cap2pfs/ipfs-p2p-file-system.pdf?raw=true)
  - For academic papers on IPFS, visit the [ipfs/papers](https://github.com/ipfs/papers) repo.
  - For papers that you can read to understand IPFS and its underlying technologies, check out the ["Further Reading"](https://docs-beta.ipfs.io/concepts/further-reading/academic-papers) section of the [IPFS Docs](https://docs-beta.ipfs.io).
- [IPFS Videos & Media](https://ipfs.io/media/) for a regularly-updated list of videos and media/news coverage, including these highlights:
  - [IPFS: The Distributed, Permanent Web](https://www.youtube.com/watch?v=HUVmypx9HGI) at Stanford Seminar (best overview of project)
  - [IPFS: The Permanent Web](https://www.youtube.com/watch?v=Fa4pckodM9g) at [Sourcegraph](https://sourcegraph.com/) (first public talk)
  - [IPFS Alpha Demo](https://www.youtube.com/watch?v=8CMxDNuuAiQ)
  - [The Decentralized Web, IPFS and Filecoin](https://www.youtube.com/watch?v=cU-n_m-snxQ)
  - [IPFS Hands-on Introduction](https://www.youtube.com/watch?v=h73bd9b5pPA) at Ethereum SV Meetup
  - [Distributed Apps with IPFS](https://www.youtube.com/watch?v=jONZtXMu03w)

## Current state of IPFS

**IPFS is a work in progress!** It is an ambitious plan to make the internet more free, open, secure, and high-performance. It builds on the good ideas of numerous battle-tested distributed systems.

Today, there is one main IPFS protocol implementation (in [Go](https://github.com/ipfs/go-ipfs)) with [more on the way](#protocol-implementations) (including [JavaScript](https://github.com/ipfs/js-ipfs) and [Python](https://github.com/ipfs/py-ipfs)).

### Try it out

In February of 2015, the [go-ipfs](https://github.com/ipfs/go-ipfs) implementation was released as an alpha distribution. Since then, go-ipfs has been making regular releases on the road towards beta. Notably, [js-ipfs](https://github.com/ipfs/js-ipfs) is also well along the way in progress. Want to get started with the IPFS alpha? Try these resources:

- [Install IPFS](https://docs-beta.ipfs.io/install/)
- [Command-line quick start guide](https://docs-beta.ipfs.io/how-to/command-line-quick-start/)
- [Taking your node online](https://docs-beta.ipfs.io/how-to/command-line-quick-start/#take-your-node-online)
- [More how-tos and tutorials](https://docs-beta.ipfs.io/how-to/)
- [Hands-on introductory video](https://www.youtube.com/watch?v=h73bd9b5pPA).

### A word on security

The IPFS protocol and its implementations are still in heavy development. This means that there may be problems in our protocols, or there may be mistakes in our implementations. And — though IPFS is not production-ready yet — many people are already running nodes on their machines, so we take security vulnerabilities very seriously. If you discover a security issue, please bring it to our attention right away!

If you find a vulnerability that may affect live deployments — for example, by exposing a remote execution exploit — please send your report privately to security@ipfs.io. **Please do not file a public issue.**

If the issue is a protocol weakness that cannot be immediately exploited, or something not yet deployed, just discuss it openly.

## Project and community

[![](https://cdn.rawgit.com/jbenet/contribute-ipfs-gif/master/img/contribute.gif)](https://github.com/ipfs/community/blob/master/CONTRIBUTING.md)

The IPFS project is big — with thousands of contributors in our community — and you're invited to join! Check out the [Community section of the IPFS Docs](https://docs-beta.ipfs.io/community/) for all the details on how to get involved, including the official [IPFS forums](https://discuss.ipfs.io), our [IRC channels](https://docs-beta.ipfs.io/community/irc), [social media](https://docs-beta.ipfs.io/community/social-media), [meetups and ProtoSchool workshops](https://github.com/ipfs/community#events), and more.

If you're interested in how the project is organized at a higher level, visit the [IPFS Team & Project Management](https://github.com/ipfs/team-mgmt) repo.

There's also a weekly IPFS newsletter ([subscribe here](http://eepurl.com/gL2Pi5)) and [regularly-updated blog](https://blog.ipfs.io/).

## Help and documentation

If you're looking for help learning about or building with IPFS, start with these resources:

- [IPFS Documentation](https://docs-beta.ipfs.io)
- [IPFS Forums](https://discuss.ipfs.io)

If you've found a bug or want to make a feature request regarding a specific component of IPFS, please open an issue in the appropriate repo so that it can be triaged and responded to as quickly as possible.

## Links and resources

The IPFS project is big (and expanding every day!), so we've excerpted some frequently-used links and other resources below. However, we encourage you to explore both the main [IPFS GitHub org](https://github.com/ipfs) (for core implementations and other mission-critical work) and the [IPFS Shipyard GitHub org](https://github.com/ipfs-shipyard), home to incubated projects by the IPFS community.

### Protocol implementations

These are the current implementations of IPFS:

| Language | Project | Completeness |
|----------|---------|--------------|
| Go | https://github.com/ipfs/go-ipfs | **reference** |
| JavaScript | https://github.com/ipfs/js-ipfs | **alpha** |
| Python | https://github.com/ipfs/py-ipfs | starting |
| C | https://github.com/Agorise/c-ipfs | starting |

If you would you like to start your own language implementation of IPFS, check out the [IPFS Implementation Guide](https://github.com/ipfs/specs/blob/master/overviews/implement-ipfs.md), and the [Specifications](https://github.com/ipfs/specs). The specs are still evolving, but the core formats are stable and can be built on. Make sure to post an issue if you would like to start an effort, as many people have expressed interest in contributing to new implementations.

### HTTP client libraries

The following HTTP client libraries are either complete (marked with :white_check_mark:) or under development. All welcome contributions! If you would like to create a new library, please see the [IPFS HTTP Client Implementation Guide](https://github.com/ipfs/go-ipfs/blob/master/docs/implement-api-bindings.md), and [tell us](https://discuss.ipfs.io/) so we can help.

| Language      | Client library                                            |
|---------------|-----------------------------------------------------------|
| Go            | https://github.com/ipfs/go-ipfs-api                       |
| Java          | https://github.com/ipfs/java-ipfs-api                     |
| JavaScript 	:white_check_mark:   | https://github.com/ipfs/js-ipfs-api                       |
| Python        | https://github.com/ipfs/py-ipfs-api                       |
| Scala         | https://github.com/ipfs/scala-ipfs-api                    |
| Clojure       | https://github.com/keorn/clj-ipfs-api                     |
| Clojurescript 	:white_check_mark: | https://github.com/district0x/cljs-ipfs-http-client       |
| Haskell       | https://github.com/davidar/hs-ipfs-api                    |
| Swift         | https://github.com/ipfs/swift-ipfs-api                    |
| CommonLisp    | https://github.com/WeMeetAgain/cl-ipfs-api                |
| Rust          | https://github.com/ferristseng/rust-ipfs-api              |
|               | https://github.com/gkbrk/rust-ipfs-api                    |
|               | https://github.com/rmnoff/rust-ipfs-api                   |
|               | https://github.com/rschulman/rust-ipfs-api                |
| Ruby          | https://github.com/Fryie/ipfs-ruby                        |
| Mac Automator | https://github.com/NeoTeo/ipfs-osx-service                |
| Pharo         | https://github.com/khinsen/ipfs-pharo                     |
| PHP           | https://github.com/cloutier/php-ipfs-api                  |
|               | https://github.com/digitalkaoz/php-ipfs-api               |
| C#            | https://github.com/jeremy-ellis-tech/net-ipfs-http-client |
|               | https://github.com/richardschneider/net-ipfs-client       |
| C++           | https://github.com/vasild/cpp-ipfs-api                    |
| Erlang        | https://github.com/hendry19901990/erlang-ipfs-http-client |
| Objective-C   | None yet                                                  |
| Julia         | contact: [@rened](https://github.com/rened)               |
| Lua           | contact: [@seclorum](https://github.com/seclorum)         |

### GUIs and helper apps

- [ipfs-companion](https://github.com/ipfs-shipyard/ipfs-companion) - The IPFS web browser extension.
- [ipfs-webui](https://github.com/ipfs/webui) - The IPFS WebUI app.
- [ipfs-desktop](https://github.com/ipfs-shipyard/ipfs-desktop) - A menubar/tray desktop app.
- [ipfs-gui](https://github.com/ipfs/ipfs-gui) - Coordinating development, user experience, and maintenance of IPFS GUIs.
- [i18n](https://github.com/ipfs/i18n) - The IPFS Translation Project: crowdsourcing translations of IPFS GUIs and websites.

### Apps and data sets on IPFS

- [Awesome IPFS](https://awesome.ipfs.io) - an ever-growing list of apps, data sets, and other inspirational resources built on IPFS

### Specs, papers, and discussion

- [specs](https://github.com/ipfs/specs) - Specifications on the IPFS protocol.
- [papers](papers) - Academic papers on IPFS.
- [IPFS Docs: Further Reading](https://docs-beta.ipfs.io/concepts/further-reading/academic-papers) - Papers to read to understand IPFS and its underlying technologies.
- [notes](https://github.com/ipfs/notes) - The IPFS collaborative notebook for research, used for discussing known open IPFS problems and discuss nascent issues, proposals, or features.

### Installation and update tools

- [install-go-ipfs](https://github.com/ipfs/go-ipfs#install) - Install go-ipfs shell script.
- [npm-go-ipfs](https://github.com/ipfs/npm-go-ipfs) - Install go-ipfs from npm.
- [install-js-ipfs](https://github.com/ipfs/js-ipfs#getting-started) - Install js-ipfs through npm or a script tag.
- [ipfs-update](https://github.com/ipfs/ipfs-update) - An updater tool for IPFS.
- [fs-repo-migrations](https://github.com/ipfs/fs-repo-migrations) - These are migrations for [IPFS fs-repo](https://github.com/ipfs/specs/tree/399c907b214a24dc82ca010af6884227cb2829cf/repo/fs-repo) versions.

### Other tools

- [dataviz](https://github.com/ipfs/dataviz) - IPFS data visualizations.
- [dir-index-html](https://github.com/ipfs/dir-index-html) - Directory listing HTML.
- [dnslink-deploy](https://github.com/ipfs/dnslink-deploy) - Automatically set DNS records on Digital Ocean.
- [fs-stress-test](https://github.com/ipfs/fs-stress-test) - Stress-testing IPFS filesystem capabilities.
- [js-ipfsd-ctl](https://github.com/ipfs/js-ipfsd-ctl) - Control IPFS daemons from JavaScript.
- [ipfs-hubot](https://github.com/ipfs/ipfs-hubot) - Hubot for IPFS uses.
- [ipfs-blob-store](https://github.com/ipfs/ipfs-blob-store) - A place to buy blobs.

### Community infrastructure

- [distributions](https://github.com/ipfs/distributions) - Source code for the IPFS distributions website, https://dist.ipfs.io
- [infra](https://github.com/ipfs/infra) - Tools for maintaining infrastructure for the IPFS community.
- [testground](https://github.com/ipfs/testground) - Tools for testing distributed software at scale
- [website](https://github.com/ipfs/website) - Source code for the IPFS website, http://ipfs.io.

## License

[MIT](LICENSE).
