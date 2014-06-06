# IPFS Research Constellation

ipfs suggests many research routes:

## IPFS - Towards The Permanent Web

Paper with:
- design + discussion
- measurements in production

## IPNS - Decentralized Mutable Names for IPFS

- SFS inspired decentralized name service

## BitSwap: block exchange protocol

Lots of experimentation can be done with BitSwap:
- find (near) optimal swap strategies
- security
- efficiency
- robustness
- game theory (like propshare paper)
- other strategies/clients
- BitSwap with bittorrent?

## SERFS or MetaFS

a meta filesystem. One global filesystem. Allows mounting of other filesystems seamlessly. Users download FS code on demand. E.g.

		/serfs/s3.amazon.com/<bucket>/
		/serfs/bittorrent/<torrent hash>/<filename>
		/serfs/http/<domain>/<path>
		/serfs/memcached/<host>/<key>
		/serfs/redis/<host>/<key>
		/serfs/afs/<path>/
		/serfs/facebook/<userid>
		/serfs/gfs/<path>
		/serfs/spotify/<track hash>

## DataGen: compression through functions

Blocks can include pure functions which generate the block's data.
Creates an incentive to design better compression functions.

## IPFS Incentive: FileCoin: proof-of-retrievability

Blockchain currency with proof-of-retrievability.
Incentivizes IPFS storage.

## IPFS App: Web gateway

## IPFS App: movie viewer, music player

Spotify: modified client to just send all blocks asap, if user is allowed to.

## IPFS App: New Web (only gfs)

## IPFS App: Version Control (git)

## IPFS App: Dat + Datadex

## IPFS App: Global Directory

## IPFS App: git-like shared docs

## IPFS App: distributed dropbox replacement

## IPFS App: code hosting (source + bins)

## IPFS App: Package Managers (apt, npm, etc)

## IPFS App: CDN

## IPFS App: Publications

## IPFS App: Arxiv clone

## IPFS Incentives: Distributed S3
