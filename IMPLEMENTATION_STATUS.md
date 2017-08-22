# IPFS Implementation Status

> Legend: :green_apple: Done &nbsp; :lemon: In Progress &nbsp; :tomato: Missing &nbsp; :chestnut: Not planned

# Table of Contents

# API

## Bitswap

#### CLI

#### HTTP

| **`GET /api/v0/bitswap/stat`**               | :green_apple: | :green_apple: |
| **`GET /api/v0/bitswap/unwant`**             | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
| **`GET /api/v0/bitswap/wantlist`**           | :green_apple: | :lemon:       |
|     `peer=`                                  | :green_apple: | :tomato:      |

#### Core


--------------------------------------------------------------------------------

## Block `ipfs block`

#### CLI

#### HTTP

| **`GET /api/v0/block/get`**                  | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`POST /api/v0/block/put`**                 | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/block/stat`**                 | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |

#### Core


--------------------------------------------------------------------------------

## Bootstrap

#### CLI

#### HTTP

| [`GET /api/v0/bootstrap/add`]                | :green_apple: | :green_apple: |
| [`GET /api/v0/bootstrap/list`]               | :green_apple: | :green_apple: |
| [`GET /api/v0/bootstrap/rm`]                 | :green_apple: | :green_apple: |

#### Core


--------------------------------------------------------------------------------

## Config

#### CLI

#### HTTP

| [`POST /api/v0/config`]                      | :green_apple: | :chestnut:    |
| [`POST /api/v0/config/replace`]              | :green_apple: | :chestnut:    |
| [`GET /api/v0/config/show`]                  | :green_apple: | :chestnut:    |
| [`POST /api/v0/log/level`]                   | :green_apple: | :chestnut:    |
| [`GET /api/v0/log/ls`]                       | :green_apple: | :chestnut:    |
| [`GET /api/v0/log/tail`]                     | :green_apple: | :chestnut:    |


#### Core


--------------------------------------------------------------------------------

## DAG

#### CLI

#### HTTP

#### Core

--------------------------------------------------------------------------------

## Diagnostics `ipfs diag`

#### CLI

#### HTTP

| [`GET /api/v0/diag/cmds`]                    | :green_apple: | :chestnut:    |
| [`GET /api/v0/diag/cmds/clear`]              | :green_apple: | :chestnut:    |
| [`GET /api/v0/diag/cmds/set-time`]           | :green_apple: | :chestnut:    |
| [`GET /api/v0/net`]                          | :green_apple: | :chestnut:    |
| [`GET /api/v0/sys`]                          | :green_apple: | :chestnut:    |

| **`GET /api/v0/stats/bitswap`**              | :green_apple: | :tomato:      |
| **`POST /api/v0/stats/bw`**                  | :green_apple: | :tomato:      |
|     `peer=`                                  | :green_apple: | :tomato:      |
|     `proto=`                                 | :green_apple: | :tomato:      |
|     `poll=`                                  | :green_apple: | :tomato:      |
|     `interval=`                              | :green_apple: | :tomato:      |
| **`GET /api/v0/stats/repo`**                 | :green_apple: | :tomato:      |

#### Core


--------------------------------------------------------------------------------

## DHT

#### CLI

#### HTTP

| [`GET /api/v0/dht/findpeer`]                 | :green_apple: | :chestnut:    |
| [`POST /api/v0/dht/findprovs`]               | :green_apple: | :chestnut:    |
| [`GET /api/v0/dht/get`]                      | :green_apple: | :chestnut:    |
| [`GET /api/v0/dht/put`]                      | :green_apple: | :chestnut:    |
| [`GET /api/v0/dht/query`]                    | :green_apple: | :chestnut:    |

#### Core

> [needs spec](https://github.com/ipfs/interface-ipfs-core)


--------------------------------------------------------------------------------

## Files

#### CLI

#### HTTP

| [`GET /api/v0/cat`]                          | :green_apple: | :chestnut:    |
| [`GET /api/v0/file/ls`]                      | :green_apple: | :chestnut:    |
| [`GET /api/v0/files/cp`]                     | :green_apple: | :chestnut:    |
| [`GET /api/v0/files/flush`]                  | :green_apple: | :chestnut:    |
| [`GET /api/v0/files/ls`]                     | :green_apple: | :chestnut:    |
| [`GET /api/v0/files/mkdir`]                  | :green_apple: | :chestnut:    |
| [`GET /api/v0/files/mv`]                     | :green_apple: | :chestnut:    |
| [`GET /api/v0/files/read`]                   | :green_apple: | :chestnut:    |
| [`POST /api/v0/files/rm`]                    | :green_apple: | :chestnut:    |
| [`GET /api/v0/files/stat`]                   | :green_apple: | :chestnut:    |
| [`POST /api/v0/files/write`]                 | :green_apple: | :chestnut:    |
| [`POST /api/v0/get`]                         | :green_apple: | :chestnut:    |
| [`GET /api/v0/ls`]                           | :green_apple: | :chestnut:    |


| -------------------------------------------- | :-----------: | :-----------: |
| **`POST /api/v0/add`**                       | :green_apple: | :lemon:       |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `H=`                                     | :green_apple: | :chestnut:    |
|     `n=`                                     | :green_apple: | :chestnut:    |
|     `p=`                                     | :green_apple: | :chestnut:    |
|     `pin=`                                   | :green_apple: | :chestnut:    |
|     `r=`                                     | :green_apple: | :chestnut:    |
|     `s=`                                     | :green_apple: | :chestnut:    |
|     `t=`                                     | :green_apple: | :chestnut:    |
|     `w=`                                     | :green_apple: | :chestnut:    |
| **`GET /api/v0/cat`**                        | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |


Refs:
- http://docs.ipfs.apiary.io/#reference/add/add

#### Core


--------------------------------------------------------------------------------

## Miscellaneous

#### CLI

#### HTTP

| [`GET /api/v0/commands`]                     | :green_apple: | :chestnut:    |
| [`POST /api/v0/id`]                          | :green_apple: | :chestnut:    |


| **`GET /api/v0/ping`**                       | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `count=,n=`                              | :green_apple: | :chestnut:    |
| **`GET /api/v0/update`**                     | :chestnut:    | :chestnut:    |
| **`GET /api/v0/version`**                    | :green_apple: | :chestnut:    |
| **`GET /api/v0/tour`**                       | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
| **`GET /api/v0/tour/list`**                  | :green_apple: | :chestnut:    |
| **`GET /api/v0/tour/next`**                  | :green_apple: | :chestnut:    |
| **`GET /api/v0/tour/restart`**               | :green_apple: | :chestnut:    |

Refs:
- http://docs.ipfs.apiary.io/#reference/tour

#### Core


--------------------------------------------------------------------------------

## Naming

#### CLI

#### HTTP

| [`GET /api/v0/dns`]                          | :green_apple: | :chestnut:    |
| [`POST /api/v0/name/publish`]                | :green_apple: | :chestnut:    |
| [`GET /api/v0/name/resolve`]                 | :green_apple: | :chestnut:    |
| [`GET /api/v0/resolve`]                      | :green_apple: | :chestnut:    |

#### Core


--------------------------------------------------------------------------------

## Object `ipfs object`

#### CLI

#### HTTP

| **`GET /api/v0/object/data`**                | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/object/diff`**                | :green_apple: | :tomato:      |
|     `arg1=`                                  | :green_apple: | :tomato:      |
|     `arg2=`                                  | :green_apple: | :tomato:      |
| **`POST /api/v0/object/get`**                | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `encoding=json,enc=json`                 | :green_apple: | :green_apple: |
|     `encoding=protobuf,enc=protobuf`         | :green_apple: | :green_apple: |
|     `encoding=xml,enc=xml`                   | :green_apple: | :green_apple: |
| **`GET /api/v0/object/links`**               | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/object/new`**                 | :green_apple: | :green_apple: |
|     `arg=unixfs-dir`                         | :green_apple: | :green_apple: |
| **`GET /api/v0/object/patch/append-data`**   | :green_apple: | :green_apple: |
|     `arg1=`                                  | :green_apple: | :green_apple: |
|     `arg2=`                                  | :green_apple: | :green_apple: |
| **`POST /api/v0/object/patch/add-link`**     | :green_apple: | :green_apple: |
|     `arg1=`                                  | :green_apple: | :green_apple: |
|     `arg2=`                                  | :green_apple: | :green_apple: |
|     `arg3=`                                  | :green_apple: | :green_apple: |
|     `create=,p=`                             | :green_apple: | :green_apple: |
| **`POST /api/v0/object/patch/rm-link`**      | :green_apple: | :green_apple: |
|     `arg1=`                                  | :green_apple: | :green_apple: |
|     `arg2=`                                  | :green_apple: | :green_apple: |
| **`POST /api/v0/object/patch/set-data`**     | :green_apple: | :green_apple: |
|     `arg1=`                                  | :green_apple: | :green_apple: |
|     `arg2=`                                  | :green_apple: | :green_apple: |
| **`GET /api/v0/object/put`**                 | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `inputenc=json`                          | :green_apple: | :green_apple: |
|     `inputenc=protobuf`                      | :green_apple: | :green_apple: |
| **`GET /api/v0/object/stat`**                | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |

Refs:
-  http://docs.ipfs.apiary.io/#reference/object

#### Core


--------------------------------------------------------------------------------

## Pining

#### CLI

#### HTTP

| **`GET /api/v0/pin/add`**                    | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
| **`POST /api/v0/pin/ls`**                    | :green_apple: | :tomato:      |
|     `type=all`                               | :green_apple: | :tomato:      |
|     `type=direct`                            | :green_apple: | :tomato:      |
|     `type=indirect`                          | :green_apple: | :tomato:      |
|     `type=recursive`                         | :green_apple: | :tomato:      |
|     `count=`                                 | :green_apple: | :tomato:      |
|     `quiet=`                                 | :green_apple: | :tomato:      |
| **`GET /api/v0/pin/rm`**                     | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
| **`GET /api/v0/refs`**                       | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `format=<src>`                           | :green_apple: | :tomato:      |
|     `format=<dst>`                           | :green_apple: | :tomato:      |
|     `format=<linkname>`                      | :green_apple: | :tomato:      |
|     `edges=,e=`                              | :green_apple: | :tomato:      |
|     `unique=,u=`                             | :green_apple: | :tomato:      |
|     `recursive=,r=`                          | :green_apple: | :tomato:      |
| **`GET /api/v0//refs/local`**                | :green_apple: | :tomato:      |
| **`GET /api/v0/refs`**                       | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `format=<src>`                           | :green_apple: | :tomato:      |
|     `format=<dst>`                           | :green_apple: | :tomato:      |
|     `format=<linkname>`                      | :green_apple: | :tomato:      |
|     `edges=,e=`                              | :green_apple: | :tomato:      |
|     `unique=,u=`                             | :green_apple: | :tomato:      |
|     `recursive=,r=`                          | :green_apple: | :tomato:      |
| **`GET /api/v0//refs/local`**                | :green_apple: | :tomato:      |

Refs:
- http://docs.ipfs.apiary.io/#reference/refs
- http://docs.ipfs.apiary.io/#reference/pin

#### Core



--------------------------------------------------------------------------------

## PubSub

#### CLI

#### HTTP

#### Core


--------------------------------------------------------------------------------

## Repo

#### CLI

#### HTTP

| [`GET /api/v0/repo/fsck`]                    | :green_apple: | :chestnut:    |
| [`GET /api/v0/repo/gc`]                      | :green_apple: | :chestnut:    |
| [`GET /api/v0/repo/stat`]                    | :green_apple: | :chestnut:    |
| [`GET /api/v0/repo/verify`]                  | :green_apple: | :chestnut:    |
| [`GET /api/v0/repo/version`]                 | :green_apple: | :chestnut:    |


#### Core

> [needs spec](https://github.com/ipfs/interface-ipfs-core)


--------------------------------------------------------------------------------

## Swarm

#### CLI

#### HTTP

| **`GET /api/v0/swarm/addrs`**                | :green_apple: | :green_apple: |
| **`GET /api/v0/swarm/addrs/local`**          | :green_apple: | :green_apple: |
|     `id=`                                    | :green_apple: | :tomato:      |
| **`GET /api/v0/swarm/connect`**              | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/swarm/disconnect`**           | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :tomato:      |
| **`GET /api/v0/swarm/filters`**              | :green_apple: | :tomato:      |
| **`GET /api/v0/swarm/filters/add`**          | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
| **`GET /api/v0/swarm/filters/rm`**           | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
| **`GET /api/v0/swarm/peers`**                | :green_apple: | :green_apple: |
|     `verbose=,v=`                            | :green_apple: | :tomato:      |

Refs:
  - http://docs.ipfs.apiary.io/#reference/swarm

#### Core

--------------------------------------------------------------------------------







| **`GET /api/v0/bootstrap/add`**              | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `default=`                               | :green_apple: | :green_apple: |
| **`GET /api/v0/bootstrap/list`**             | :green_apple: | :green_apple: |
| **`GET /api/v0/bootstrap/rm`**               | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `all=`                                   | :green_apple: | :green_apple: |


| **`GET /api/v0/commands`**                   | :green_apple: | :chestnut:    |


| **`POST /api/v0/config`**                    | :green_apple: | :chestnut:    |
|     `arg1=`                                  | :green_apple: | :chestnut:    |
|     `arg2=`                                  | :green_apple: | :chestnut:    |
|     `bool=`                                  | :green_apple: | :chestnut:    |
|     `json=`                                  | :green_apple: | :chestnut:    |
| **`POST /api/v0/config/replace`**            | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
| **`GET /api/v0/config/show`**                | :green_apple: | :chestnut:    |


http://docs.ipfs.apiary.io/#reference/dht
| **`GET /api/v0/dht/findpeer`**               | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
| **`POST /api/v0/dht/findprovs`**             | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
| **`GET /api/v0/dht/get`**                    | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
| **`GET /api/v0/dht/put`**                    | :green_apple: | :chestnut:    |
|     `arg1=`                                  | :green_apple: | :chestnut:    |
|     `arg2=`                                  | :green_apple: | :chestnut:    |
| **`GET /api/v0/dht/query`**                  | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |


http://docs.ipfs.apiary.io/#reference/diag/cmds
| **`GET /api/v0/diag/cmds`**                  | :green_apple: | :chestnut:    |
| **`GET /api/v0/diag/cmds/clear`**            | :green_apple: | :chestnut:    |
| **`GET /api/v0/diag/cmds/set-time`**         | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
| **`GET /api/v0/net`**                        | :green_apple: | :chestnut:    |
|     `vis=text`                               | :green_apple: | :chestnut:    |
|     `vis=d3`                                 | :green_apple: | :chestnut:    |
|     `vis=dot`                                | :green_apple: | :chestnut:    |
| **`GET /api/v0/sys`**                        | :green_apple: | :chestnut:    |

http://docs.ipfs.apiary.io/#reference/diag/sys


http://docs.ipfs.apiary.io/#reference/dns/dns
| **`GET /api/v0/dns`**                        | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `recursive=`                             | :green_apple: | :chestnut:    |



http://docs.ipfs.apiary.io/#reference/files
| **`GET /api/v0/file/ls`**                    | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
| **`GET /api/v0/files/cp`**                   | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `arg2=`                                  | :green_apple: | :chestnut:    |
|     `flush=,f=`                              | :green_apple: | :chestnut:    |
| **`GET /api/v0/files/flush`**                | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
| **`GET /api/v0/files/ls`**                   | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `l=`                                     | :green_apple: | :chestnut:    |
|     `flush=,f=`                              | :green_apple: | :chestnut:    |
| **`GET /api/v0/files/mkdir`**                | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `parents=,p=`                            | :green_apple: | :chestnut:    |
|     `flush=,f=`                              | :green_apple: | :chestnut:    |
| **`GET /api/v0/files/mv`**                   | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `arg2=`                                  | :green_apple: | :chestnut:    |
|     `flush=,f=`                              | :green_apple: | :chestnut:    |
| **`GET /api/v0/files/read`**                 | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `offset=,o=`                             | :green_apple: | :chestnut:    |
|     `count=,n=`                              | :green_apple: | :chestnut:    |
|     `flush=,f=`                              | :green_apple: | :chestnut:    |
| **`POST /api/v0/files/rm`**                  | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `recursive=,r=`                          | :green_apple: | :chestnut:    |
|     `flush=,f=`                              | :green_apple: | :chestnut:    |
| **`GET /api/v0/files/stat`**                 | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `flush=,f=`                              | :green_apple: | :chestnut:    |
| **`POST /api/v0/files/write`**               | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `arg2=`                                  | :green_apple: | :chestnut:    |
|     `offset=,o=`                             | :green_apple: | :chestnut:    |
|     `create=,e=`                             | :green_apple: | :chestnut:    |
|     `truncate=,t=`                           | :green_apple: | :chestnut:    |
|     `count=,n=`                              | :green_apple: | :chestnut:    |
|     `flush=,f=`                              | :green_apple: | :chestnut:    |
| **`POST /api/v0/get`**                       | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `archive=`                               | :green_apple: | :chestnut:    |
|     `compress=`                              | :green_apple: | :chestnut:    |
|     `compression-level=-1`                   | :green_apple: | :chestnut:    |
|     `compression-level=0`                    | :green_apple: | :chestnut:    |
|     `compression-level=1`                    | :green_apple: | :chestnut:    |
|     `compression-level=2`                    | :green_apple: | :chestnut:    |
|     `compression-level=3`                    | :green_apple: | :chestnut:    |
|     `compression-level=4`                    | :green_apple: | :chestnut:    |
|     `compression-level=5`                    | :green_apple: | :chestnut:    |
|     `compression-level=6`                    | :green_apple: | :chestnut:    |
|     `compression-level=7`                    | :green_apple: | :chestnut:    |
|     `compression-level=8`                    | :green_apple: | :chestnut:    |
|     `compression-level=9`                    | :green_apple: | :chestnut:    |
| **`GET /api/v0/ls`**                         | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `resolve=`                               | :green_apple: | :chestnut:    |


| **`POST /api/v0/id`**                        | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |

http://docs.ipfs.apiary.io/#reference/log/level
| **`POST /api/v0/log/level`**                 | :green_apple: | :chestnut:    |
|     `arg1=bitswap`                           | :green_apple: | :chestnut:    |
|     `arg1=blockstore`                        | :green_apple: | :chestnut:    |
|     `arg1=dht`                               | :green_apple: | :chestnut:    |
|     `arg1=merkledag`                         | :green_apple: | :chestnut:    |
|     `arg1=all`                               | :green_apple: | :chestnut:    |
|     `arg2=debug`                             | :green_apple: | :chestnut:    |
|     `arg2=info`                              | :green_apple: | :chestnut:    |
|     `arg2=notice`                            | :green_apple: | :chestnut:    |
|     `arg2=warning`                           | :green_apple: | :chestnut:    |
|     `arg2=error`                             | :green_apple: | :chestnut:    |
|     `arg2=critical`                          | :green_apple: | :chestnut:    |
| **`GET /api/v0/log/ls`**                     | :green_apple: | :chestnut:    |
| **`GET /api/v0/log/tail`**                   | :green_apple: | :chestnut:    |


http://docs.ipfs.apiary.io/#reference/name
| **`POST /api/v0/name/publish`**              | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `resolve=`                               | :green_apple: | :chestnut:    |
|     `lifetime=`                              | :green_apple: | :chestnut:    |
|     `ttl=`                                   | :green_apple: | :chestnut:    |
| **`GET /api/v0/name/resolve`**               | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `recursive=`                             | :green_apple: | :chestnut:    |
|     `nocache=`                               | :green_apple: | :chestnut:    |






| **`GET /api/v0/repo/fsck`**                  | :green_apple: | :chestnut:    |
| **`GET /api/v0/repo/gc`**                    | :green_apple: | :chestnut:    |
| **`GET /api/v0/repo/stat`**                  | :green_apple: | :chestnut:    |
| **`GET /api/v0/repo/verify`**                | :green_apple: | :chestnut:    |
| **`GET /api/v0/repo/version`**               | :green_apple: | :chestnut:    |


| **`GET /api/v0/resolve`**                    | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `recursive=`                             | :green_apple: | :chestnut:    |










