# IPFS Implementation Status

> Legend: :green_apple: Done &nbsp; :lemon: In Progress &nbsp; :tomato: Missing &nbsp; :chestnut: Not planned

# Table of Contents

# API

## Bitswap

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs ledger`**                            | :green_apple: | :lemon:       |
|     `peer`                                   | :green_apple: | :lemon:       |
| **`ipfs reprovide`**                         | :green_apple: | :tomato:      |
| **`ipfs bitswap stat`**                      | :green_apple: | :green_apple: |
| **`ipfs bitswap unwant`**                    | :green_apple: | :green_apple: |
|     `key`                                    | :green_apple: | :green_apple: |
| **`ipfs bitswap wantlist`**                  | :green_apple: | :green_apple: |
|     `peer`                                   | :green_apple: | :green_apple: |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/bitswap/ledger`**             | :green_apple: | :lemon:       |
|     `arg=`                                   | :green_apple: | :lemon:       |
| **`GET /api/v0/bitswap/reprovide`**          | :green_apple: | :tomato:      |
| **`GET /api/v0/bitswap/stat`**               | :green_apple: | :green_apple: |
| **`GET /api/v0/bitswap/unwant`**             | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/bitswap/wantlist`**           | :green_apple: | :green_apple: |
|     `peer=`                                  | :green_apple: | :green_apple: |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Block `ipfs block`

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs block get`**                         | :green_apple: | :green_apple: |
|     `key`                                    | :green_apple: | :green_apple: |
| **`ipfs block put`**                         | :green_apple: | :green_apple: |
|     `data`                                   | :green_apple: | :green_apple: |
|     `format`                                 | :green_apple: | :green_apple: |
|     `mhtype`                                 | :green_apple: | :green_apple: |
|     `mhlen`                                  | :green_apple: | :green_apple: |
| **`ipfs block rm`**                          | :green_apple: | :lemon:       |
|     `hash`                                   | :green_apple: | :lemon:       |
|     `force`                                  | :green_apple: | :lemon:       |
| **`ipfs block stat`**                        | :green_apple: | :green_apple: |
|     `key`                                    | :green_apple: | :green_apple: |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/block/get`**                  | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`POST /api/v0/block/put`**                 | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `format=`                                | :green_apple: | :green_apple: |
|     `mhtype=`                                | :green_apple: | :green_apple: |
|     `mhlen=`                                 | :green_apple: | :green_apple: |
| **`GET /api/v0/block/rm`**                   | :green_apple: | :lemon:       |
|     `arg=`                                   | :green_apple: | :lemon:       |
|     `force=`                                 | :green_apple: | :lemon:       |
| **`GET /api/v0/block/stat`**                 | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Bootstrap

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs bootstrap add`**                     | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `default=`                               | :green_apple: | :green_apple: |
| **`ipfs bootstrap list`**                    | :green_apple: | :green_apple: |
| **`ipfs bootstrap rm`**                      | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `all=`                                   | :green_apple: | :green_apple: |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/bootstrap/add`**              | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `default=`                               | :green_apple: | :green_apple: |
| **`GET /api/v0/bootstrap/add/default`**      | :green_apple: | :tomato:      |
| **`GET /api/v0/bootstrap/list`**             | :green_apple: | :green_apple: |
| **`GET /api/v0/bootstrap/rm`**               | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `all=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/bootstrap/rm/all`**           | :green_apple: | :tomato:      |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Config

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs config edit`**                       | :green_apple: | :chestnut:    |
| **`ipfs config`**                            | :green_apple: | :chestnut:    |
|     `key`                                    | :green_apple: | :green_apple: |
|     `value`                                  | :green_apple: | :green_apple: |
|     `bool=`                                  | :green_apple: | :green_apple: |
|     `json=`                                  | :green_apple: | :green_apple: |
| **`ipfs config replace`**                    | :green_apple: | :green_apple: |
|     `file`                                   | :green_apple: | :green_apple: |
| **`ipfs config show`**                       | :green_apple: | :green_apple: |
| **`ipfs log level`**                         | :green_apple: | :chestnut:    |
|     `subsystem`                              | :green_apple: | :chestnut:    |
|     `level`                                  | :green_apple: | :chestnut:    |
| **`ipfs log ls`**                            | :green_apple: | :chestnut:    |
| **`ipfs log tail`**                          | :green_apple: | :chestnut:    |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/config/edit`**                | :green_apple: | :chestnut:    |
| **`POST /api/v0/config`**                    | :green_apple: | :chestnut:    |
|     `arg1=`                                  | :green_apple: | :green_apple: |
|     `arg2=`                                  | :green_apple: | :green_apple: |
|     `bool=`                                  | :green_apple: | :green_apple: |
|     `json=`                                  | :green_apple: | :green_apple: |
| **`POST /api/v0/config/replace`**            | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/config/show`**                | :green_apple: | :green_apple: |
| **`POST /api/v0/log/level`**                 | :green_apple: | :chestnut:    |
|     `arg1=`                                  | :green_apple: | :chestnut:    |
|     `arg2=`                                  | :green_apple: | :chestnut:    |
| **`GET /api/v0/log/ls`**                     | :green_apple: | :chestnut:    |
| **`GET /api/v0/log/tail`**                   | :green_apple: | :chestnut:    |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## DAG

> **Blocked until the following are resolved:**
- https://github.com/ipfs/js-ipfs-api/pull/534
- https://github.com/ipfs/go-ipfs/issues/3771#issue-213068794

#### CLI

#### HTTP

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Stats and Diagnostics

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs stats bitswap`**                     | :green_apple: | :tomato:      |
| **`ipfs stats bw`**                          | :green_apple: | :tomato:      |
|     `peer`                                   | :green_apple: | :tomato:      |
|     `proto`                                  | :green_apple: | :tomato:      |
|     `poll`                                   | :green_apple: | :tomato:      |
|     `interval `                              | :green_apple: | :tomato:      |
| **`ipfs stats repo`**                        | :green_apple: | :tomato:      |
| **`ipfs diag cmds`**                         | :green_apple: | :chestnut:    |
| **`ipfs diag cmds clear`**                   | :green_apple: | :chestnut:    |
| **`ipfs diag cmds set-time`**                | :green_apple: | :chestnut:    |
|     `time`                                   | :green_apple: | :chestnut:    |
| **`ipfs diag sys`**                          | :green_apple: | :chestnut:    |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/stats/bitswap`**              | :green_apple: | :tomato:      |
| **`POST /api/v0/stats/bw`**                  | :green_apple: | :tomato:      |
|     `peer=`                                  | :green_apple: | :tomato:      |
|     `proto=`                                 | :green_apple: | :tomato:      |
|     `poll=`                                  | :green_apple: | :tomato:      |
|     `interval=`                              | :green_apple: | :tomato:      |
| **`GET /api/v0/stats/repo`**                 | :green_apple: | :tomato:      |
| **`GET /api/v0/diag/cmds`**                  | :green_apple: | :chestnut:    |
| **`GET /api/v0/diag/cmds/clear`**            | :green_apple: | :chestnut:    |
| **`GET /api/v0/diag/cmds/set-time`**         | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
| **`GET /api/v0/net`**                        | :green_apple: | :chestnut:    |
|     `vis`                                    | :green_apple: | :chestnut:    |
| **`GET /api/v0/sys`**                        | :green_apple: | :chestnut:    |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## DHT

> **Note:** This is blocked by core implementation of DHT itself. Follow https://github.com/ipfs/js-ipfs/pull/856

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs dht findpeer`**                      | :green_apple: | :tomato:      |
|     `peer ID`                                | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |
| **`ipfs dht findprovs`**                     | :green_apple: | :tomato:      |
|     `key`                                    | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |
|     `num-providers=`                         | :green_apple: | :tomato:      |
| **`ipfs dht get`**                           | :green_apple: | :tomato:      |
|     `key`                                    | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |
| **`ipfs dht provide`**                       | :green_apple: | :tomato:      |
|     `key`                                    | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
| **`ipfs dht put`**                           | :green_apple: | :tomato:      |
|     `key`                                    | :green_apple: | :tomato:      |
|     `value`                                  | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |
| **`ipfs dht query`**                         | :green_apple: | :tomato:      |
|     `peer ID`                                | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/dht/findpeer`**               | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |
| **`GET /api/v0/dht/findprovs`**              | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |
|     `num-providers=`                         | :green_apple: | :tomato:      |
| **`GET /api/v0/dht/get`**                    | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |
| **`GET /api/v0/dht/provide`**                | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
| **`GET /api/v0/dht/put`**                    | :green_apple: | :tomato:      |
|     `arg1=`                                  | :green_apple: | :tomato:      |
|     `arg2=`                                  | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |
| **`GET /api/v0/dht/query`**                  | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Files

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs add`**                               | :green_apple: | :lemon:       |
|     `file`                                   | :green_apple: | :green_apple: |
|     `recursive`                              | :green_apple: | :green_apple: |
|     `quiet`                                  | :green_apple: | :green_apple: |
|     `quieter`                                | :green_apple: | :green_apple: |
|     `silent`                                 | :green_apple: | :green_apple: |
|     `progress`                               | :green_apple: | :green_apple: |
|     `trickle`                                | :green_apple: | :green_apple: |
|     `only-hash`                              | :green_apple: | :green_apple: |
|     `wrap-with-directory`                    | :green_apple: | :green_apple: |
|     `hidden`                                 | :green_apple: | :tomato:      |
|     `chunker`                                | :green_apple: | :tomato:      |
|     `pin`                                    | :green_apple: | :lemon:       |
|     `raw-leaves`                             | :green_apple: | :tomato:      |
|     `nocopy`                                 | :green_apple: | :tomato:      |
|     `fscache`                                | :green_apple: | :tomato:      |
|     `cid-version`                            | :green_apple: | :tomato:      |
|     `hash`                                   | :green_apple: | :tomato:      |
| **`ipfs cat`**                               | :green_apple: | :green_apple: |
|     `arg`                                    | :green_apple: | :green_apple: |
| **`ipfs ls`**                                | :green_apple: | :lemon:       |
|     `arg`                                    | :green_apple: | :lemon:       |
|     `headers`                                | :green_apple: | :lemon:       |
|     `resolve-type`                           | :green_apple: | :lemon:       |
| **`ipfs file ls`**                           | :green_apple: | :chestnut:    |
|     `path`                                   | :green_apple: | :chestnut:    |
| **`ipfs files cp`**                          | :green_apple: | :tomato:      |
|     `src`                                    | :green_apple: | :tomato:      |
|     `dst`                                    | :green_apple: | :tomato:      |
|     `flush`                                  | :green_apple: | :tomato:      |
| **`ipfs files flush`**                       | :green_apple: | :tomato:      |
|     `path`                                   | :green_apple: | :tomato:      |
| **`ipfs files ls`**                          | :green_apple: | :tomato:      |
|     `path`                                   | :green_apple: | :tomato:      |
|     `level`                                  | :green_apple: | :tomato:      |
|     `flush`                                  | :green_apple: | :tomato:      |
| **`ipfs files mkdir`**                       | :green_apple: | :tomato:      |
|     `path`                                   | :green_apple: | :tomato:      |
|     `parents`                                | :green_apple: | :tomato:      |
|     `flush`                                  | :green_apple: | :tomato:      |
| **`ipfs files mv`**                          | :green_apple: | :tomato:      |
|     `src`                                    | :green_apple: | :tomato:      |
|     `dst`                                    | :green_apple: | :tomato:      |
|     `flush`                                  | :green_apple: | :tomato:      |
| **`ipfs files read`**                        | :green_apple: | :tomato:      |
|     `path`                                   | :green_apple: | :tomato:      |
|     `offset`                                 | :green_apple: | :tomato:      |
|     `count`                                  | :green_apple: | :tomato:      |
|     `flush`                                  | :green_apple: | :tomato:      |
| **`ipfs files rm`**                          | :green_apple: | :tomato:      |
|     `path`                                   | :green_apple: | :tomato:      |
|     `recursive`                              | :green_apple: | :tomato:      |
|     `flush`                                  | :green_apple: | :tomato:      |
| **`ipfs files stat`**                        | :green_apple: | :tomato:      |
|     `path`                                   | :green_apple: | :tomato:      |
|     `flush`                                  | :green_apple: | :tomato:      |
| **`ipfs files write`**                       | :green_apple: | :tomato:      |
|     `path`                                   | :green_apple: | :tomato:      |
|     `data`                                   | :green_apple: | :tomato:      |
|     `offset`                                 | :green_apple: | :tomato:      |
|     `create`                                 | :green_apple: | :tomato:      |
|     `truncate`                               | :green_apple: | :tomato:      |
|     `count`                                  | :green_apple: | :tomato:      |
|     `flush`                                  | :green_apple: | :tomato:      |
| **`ipfs get`**                               | :green_apple: | :green_apple: |
|     `path`                                   | :green_apple: | :green_apple: |
|     `archive`                                | :green_apple: | :tomato:      |
|     `compress`                               | :green_apple: | :tomato:      |
|     `compression-level`                      | :green_apple: | :tomato:      |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`POST /api/v0/add`**                       | :green_apple: | :lemon:       |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `recursive=`                             | :green_apple: | :green_apple: |
|     `quiet=`                                 | :green_apple: | :tomato:      |
|     `quieter=`                               | :green_apple: | :tomato:      |
|     `silent=`                                | :green_apple: | :tomato:      |
|     `progress=`                              | :green_apple: | :green_apple: |
|     `trickle=`                               | :green_apple: | :green_apple: |
|     `only-hash=`                             | :green_apple: | :green_apple: |
|     `wrap-with-directory`                    | :green_apple: | :green_apple: |
|     `hidden`                                 | :green_apple: | :tomato:      |
|     `chunker`                                | :green_apple: | :tomato:      |
|     `pin`                                    | :green_apple: | :lemon:       |
|     `raw-leaves`                             | :green_apple: | :tomato:      |
|     `nocopy`                                 | :green_apple: | :tomato:      |
|     `fscache`                                | :green_apple: | :tomato:      |
|     `cid-version`                            | :green_apple: | :tomato:      |
|     `hash`                                   | :green_apple: | :tomato:      |
| **`GET /api/v0/cat`**                        | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/ls`**                         | :green_apple: | :lemon:       |
|     `arg=`                                   | :green_apple: | :lemon:       |
|     `headers=`                               | :green_apple: | :lemon:       |
|     `resolve-type=`                          | :green_apple: | :lemon:       |
| **`GET /api/v0/file/ls`**                    | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
| **`GET /api/v0/files/cp`**                   | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `arg2=`                                  | :green_apple: | :tomato:      |
|     `flush=,f=`                              | :green_apple: | :tomato:      |
| **`GET /api/v0/files/flush`**                | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
| **`GET /api/v0/files/ls`**                   | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `l=`                                     | :green_apple: | :tomato:      |
|     `flush=,f=`                              | :green_apple: | :tomato:      |
| **`GET /api/v0/files/mkdir`**                | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `parents=,p=`                            | :green_apple: | :tomato:      |
|     `flush=,f=`                              | :green_apple: | :tomato:      |
| **`GET /api/v0/files/mv`**                   | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `arg2=`                                  | :green_apple: | :tomato:      |
|     `flush=,f=`                              | :green_apple: | :tomato:      |
| **`GET /api/v0/files/read`**                 | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `offset=,o=`                             | :green_apple: | :tomato:      |
|     `count=,n=`                              | :green_apple: | :tomato:      |
|     `flush=,f=`                              | :green_apple: | :tomato:      |
| **`POST /api/v0/files/rm`**                  | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `recursive=,r=`                          | :green_apple: | :tomato:      |
|     `flush=,f=`                              | :green_apple: | :tomato:      |
| **`GET /api/v0/files/stat`**                 | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `flush=,f=`                              | :green_apple: | :tomato:      |
| **`POST /api/v0/files/write`**               | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `arg2=`                                  | :green_apple: | :tomato:      |
|     `offset=,o=`                             | :green_apple: | :tomato:      |
|     `create=,e=`                             | :green_apple: | :tomato:      |
|     `truncate=,t=`                           | :green_apple: | :tomato:      |
|     `count=,n=`                              | :green_apple: | :tomato:      |
|     `flush=,f=`                              | :green_apple: | :tomato:      |
| **`POST /api/v0/get`**                       | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `archive=`                               | :green_apple: | :tomato:      |
|     `compress=`                              | :green_apple: | :tomato:      |
|     `compression-level=-1`                   | :green_apple: | :tomato:      |
|     `compression-level=0`                    | :green_apple: | :tomato:      |
|     `compression-level=1`                    | :green_apple: | :tomato:      |
|     `compression-level=2`                    | :green_apple: | :tomato:      |
|     `compression-level=3`                    | :green_apple: | :tomato:      |
|     `compression-level=4`                    | :green_apple: | :tomato:      |
|     `compression-level=5`                    | :green_apple: | :tomato:      |
|     `compression-level=6`                    | :green_apple: | :tomato:      |
|     `compression-level=7`                    | :green_apple: | :tomato:      |
|     `compression-level=8`                    | :green_apple: | :tomato:      |
|     `compression-level=9`                    | :green_apple: | :tomato:      |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## File Store (IPFS Pack)

> **Note:** Implementation in js-ipfs is not planned for now.

#### CLI

#### HTTP

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Key Management

#### CLI

| Command                                      | Go Impl       | JS Impl        |
| -------------------------------------------- | :-----------: | :-----------:  |
| **`ipfs key gen`**                           | :green_apple: | :chestnut:     |
|     `name`                                   | :green_apple: | :chestnut:     |
|     `type=`                                  | :green_apple: | :chestnut:     |
|     `size=`                                  | :green_apple: | :chestnut:     |
| **`ipfs key list`**                          | :green_apple: | :chestnut:     |
|     `l=`                                     | :green_apple: | :chestnut:     |
| **`ipfs key rename`**                        | :green_apple: | :chestnut:     |
|     `name`                                   | :green_apple: | :chestnut:     |
|     `newName`                                | :green_apple: | :chestnut:     |
|     `force=`                                 | :green_apple: | :chestnut:     |
| **`ipfs key rm`**                            | :green_apple: | :chestnut:     |
|     `name`                                   | :green_apple: | :chestnut:     |
|     `l=`                                     | :green_apple: | :chestnut:     |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl        |
| -------------------------------------------- | :-----------: | :-----------:  |
| **`GET /api/v0/key/gen`**                    | :green_apple: | :chestnut:     |
|     `arg=`                                   | :green_apple: | :chestnut:     |
|     `type=`                                  | :green_apple: | :chestnut:     |
|     `size=`                                  | :green_apple: | :chestnut:     |
| **`GET /api/v0/key/list`**                   | :green_apple: | :chestnut:     |
|     `l=`                                     | :green_apple: | :chestnut:     |
| **`GET /api/v0/key/rename`**                 | :green_apple: | :chestnut:     |
|     `arg=`                                   | :green_apple: | :chestnut:     |
|     `arg=`                                   | :green_apple: | :chestnut:     |
|     `force=`                                 | :green_apple: | :chestnut:     |
| **`GET /api/v0/key/rm`**                     | :green_apple: | :chestnut:     |
|     `arg=`                                   | :green_apple: | :chestnut:     |
|     `l=`                                     | :green_apple: | :chestnut:     |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Miscellaneous

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs ping`**                              | :green_apple: | :lemon:       |
|     `peer ID`                                | :green_apple: | :tomato:      |
|     `count`                                  | :green_apple: | :tomato:      |
| **`ipfs update`**                            | :chestnut:    | :chestnut:    |
| **`ipfs version`**                           | :green_apple: | :green_apple: |
| **`ipfs commands`**                          | :green_apple: | :green_apple: |
| **`ipfs id`**                                | :green_apple: | :green_apple: |
|     `peerid`                                 | :green_apple: | :tomato:      |
|     `aver`                                   | :green_apple: | :tomato:      |
|     `pver`                                   | :green_apple: | :tomato:      |
|     `pubkey`                                 | :green_apple: | :tomato:      |
|     `addrs`                                  | :green_apple: | :tomato:      |
| **`ipfs mount`**                             | :green_apple: | :chestnut:    |
|     `ipfs-path=`                             | :green_apple: | :chestnut:    |
|     `ipns-path=`                             | :green_apple: | :chestnut:    |
| **`ipfs mount`**                             | :green_apple: | :chestnut:    |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/ping`**                       | :green_apple: | :lemon:       |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `count=`                                 | :green_apple: | :tomato:      |
| **`GET /api/v0/update`**                     | :chestnut:    | :chestnut:    |
| **`GET /api/v0/version`**                    | :green_apple: | :green_apple: |
| **`GET /api/v0/commands`**                   | :green_apple: | :green_apple: |
| **`POST /api/v0/id`**                        | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/mount`**                      | :green_apple: | :chestnut:    |
|     `ipfs-path=`                             | :green_apple: | :chestnut:    |
|     `ipns-path=`                             | :green_apple: | :chestnut:    |
| **`GET /api/v0/mount`**                      | :green_apple: | :chestnut:    |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Naming

> **Note:** Implementation in js-ipfs is blocked until DHT is finished.

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs name publish`**                      | :green_apple: | :tomato:      |
|     `ipfs-path`                              | :green_apple: | :tomato:      |
|     `resolve=`                               | :green_apple: | :tomato:      |
|     `lifetime=`                              | :green_apple: | :tomato:      |
|     `ttl=`                                   | :green_apple: | :tomato:      |
|     `key=`                                   | :green_apple: | :tomato:      |
| **`ipfs name resolve`**                      | :green_apple: | :tomato:      |
|     `name`                                   | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
|     `nocache=`                               | :green_apple: | :tomato:      |
| **`ipfs resolve`**                           | :green_apple: | :tomato:      |
|     `name`                                   | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
| **`ipfs dns`**                               | :green_apple: | :tomato:      |
|     `domain`                                 | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`POST /api/v0/name/publish`**              | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `resolve=`                               | :green_apple: | :tomato:      |
|     `lifetime=`                              | :green_apple: | :tomato:      |
|     `ttl=`                                   | :green_apple: | :tomato:      |
|     `key=`                                   | :green_apple: | :tomato:      |
| **`GET /api/v0/name/resolve`**               | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
|     `nocache=`                               | :green_apple: | :tomato:      |
| **`GET /api/v0/resolve`**                    | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
| **`GET /api/v0/dns`**                        | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Object `ipfs object`

#### CLI

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs object data`**                       | :green_apple: | :green_apple: |
|     `key`                                    | :green_apple: | :green_apple: |
| **`ipfs object diff`**                       | :green_apple: | :tomato:      |
|     `key1`                                   | :green_apple: | :tomato:      |
|     `key2`                                   | :green_apple: | :tomato:      |
| **`ipfs object/get`**                        | :green_apple: | :green_apple: |
|     `key`                                    | :green_apple: | :green_apple: |
|     `encoding`                               | :green_apple: | :green_apple: |
| **`GET /api/v0/object/links`**               | :green_apple: | :green_apple: |
|     `key`                                    | :green_apple: | :green_apple: |
| **`GET /api/v0/object/new`**                 | :green_apple: | :green_apple: |
|     `template`                               | :green_apple: | :green_apple: |
| **`GET /api/v0/object/patch/append-data`**   | :green_apple: | :green_apple: |
|     `root`                                   | :green_apple: | :green_apple: |
|     `data`                                   | :green_apple: | :green_apple: |
| **`POST /api/v0/object/patch/add-link`**     | :green_apple: | :green_apple: |
|     `root`                                   | :green_apple: | :green_apple: |
|     `name`                                   | :green_apple: | :green_apple: |
|     `ref`                                    | :green_apple: | :lemon:       |
|     `create`                                 | :green_apple: | :tomato:      |
| **`POST /api/v0/object/patch/rm-link`**      | :green_apple: | :green_apple: |
|     `root`                                   | :green_apple: | :green_apple: |
|     `link`                                   | :green_apple: | :green_apple: |
| **`POST /api/v0/object/patch/set-data`**     | :green_apple: | :green_apple: |
|     `root`                                   | :green_apple: | :green_apple: |
|     `data`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/object/put`**                 | :green_apple: | :green_apple: |
|     `data`                                   | :green_apple: | :green_apple: |
|     `inputenc`                               | :green_apple: | :green_apple: |
|     `datafieldenc`                           | :green_apple: | :tomato:      |
|     `pin`                                    | :green_apple: | :tomato:      |
| **`GET /api/v0/object/stat`**                | :green_apple: | :green_apple: |
|     `root`                                   | :green_apple: | :green_apple: |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
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
|     `create=`                                | :green_apple: | :green_apple: |
| **`POST /api/v0/object/patch/rm-link`**      | :green_apple: | :green_apple: |
|     `arg1=`                                  | :green_apple: | :green_apple: |
|     `arg2=`                                  | :green_apple: | :green_apple: |
| **`POST /api/v0/object/patch/set-data`**     | :green_apple: | :green_apple: |
|     `arg1=`                                  | :green_apple: | :green_apple: |
|     `arg2=`                                  | :green_apple: | :green_apple: |
| **`GET /api/v0/object/put`**                 | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `inputenc`                               | :green_apple: | :green_apple: |
| **`GET /api/v0/object/stat`**                | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## p2p (libp2p exposed API)

> **This is blocked until there is a formalized `interface-libp2p`**. Currently, js-ipfs exposes libp2p directly while go-ipfs exposes a subset of commands that use libp2p.

#### CLI

#### HTTP

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Pining

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs pin add`**                           | :green_apple: | :lemon:       |
|     `hash`                                   | :green_apple: | :lemon:       |
|     `recursive`                              | :green_apple: | :lemon:       |
|     `progress`                               | :green_apple: | :tomato:      |
| **`ipfs pin ls`**                            | :green_apple: | :lemon:       |
|     `type`                                   | :green_apple: | :lemon:       |
|     `quiet`                                  | :green_apple: | :lemon:       |
| **`ipfs pin rm`**                            | :green_apple: | :lemon:       |
|     `hash`                                   | :green_apple: | :lemon:       |
|     `recursive`                              | :green_apple: | :lemon:       |
| **`ipfs pin update`**                        | :green_apple: | :tomato:      |
|     `hash`                                   | :green_apple: | :tomato:      |
|     `unpin`                                  | :green_apple: | :tomato:      |
| **`ipfs pin verify`**                        | :green_apple: | :tomato:      |
|     `verbose`                                | :green_apple: | :tomato:      |
| **`ipfs refs`**                              | :green_apple: | :tomato:      |
|     `hash`                                   | :green_apple: | :tomato:      |
|     `format`                                 | :green_apple: | :tomato:      |
|     `edges`                                  | :green_apple: | :tomato:      |
|     `unique`                                 | :green_apple: | :tomato:      |
|     `recursive`                              | :green_apple: | :tomato:      |
| **`ipfs refs local`**                        | :green_apple: | :tomato:      |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/pin/add`**                    | :green_apple: | :lemon:       |
|     `arg=`                                   | :green_apple: | :lemon:       |
|     `recursive=`                             | :green_apple: | :lemon:       |
| **`POST /api/v0/pin/ls`**                    | :green_apple: | :lemon:       |
|     `type=`                                  | :green_apple: | :tomato:      |
|     `quiet=`                                 | :green_apple: | :tomato:      |
| **`GET /api/v0/pin/rm`**                     | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
| **`GET /api/v0/pin/update`**                 | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `unpin=`                                 | :green_apple: | :tomato:      |
| **`GET /api/v0/pin/verify`**                 | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |
| **`GET /api/v0/refs`**                       | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `format=`                                | :green_apple: | :tomato:      |
|     `edges=`                                 | :green_apple: | :tomato:      |
|     `unique=`                                | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
| **`GET /api/v0//refs/local`**                | :green_apple: | :tomato:      |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## PubSub

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs pubsub ls`**                         | :green_apple: | :green_apple: |
| **`ipfs pubsub peers`**                      | :green_apple: | :green_apple: |
|     `topic`                                  | :green_apple: | :green_apple: |
| **`ipfs pubsub pub`**                        | :green_apple: | :green_apple: |
|     `topic`                                  | :green_apple: | :green_apple: |
|     `data`                                   | :green_apple: | :green_apple: |
| **`ipfs pubsub sub`**                        | :green_apple: | :green_apple: |
|     `topic`                                  | :green_apple: | :green_apple: |
|     `discover`                               | :green_apple: | :tomato:      |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/pubsub/ls`**                  | :green_apple: | :green_apple: |
| **`GET /api/v0/pubsub/peers`**               | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/pubsub/pub`**                 | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/pubsub/sub`**                 | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
|     `discover=`                              | :green_apple: | :green_apple: |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Repo

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs repo fsck`**                         | :green_apple: | :chestnut:    |
| **`ipfs repo gc`**                           | :green_apple: | :tomato:      |
| **`ipfs repo stat`**                         | :green_apple: | :tomato:      |
| **`ipfs repo verify`**                       | :green_apple: | :chestnut:    |
| **`ipfs repo version`**                      | :green_apple: | :green_apple: |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/repo/fsck`**                  | :green_apple: | :chestnut:    |
| **`GET /api/v0/repo/gc`**                    | :green_apple: | :tomato:      |
| **`GET /api/v0/repo/stat`**                  | :green_apple: | :tomato:      |
| **`GET /api/v0/repo/verify`**                | :green_apple: | :chestnut:    |
| **`GET /api/v0/repo/version`**               | :green_apple: | :green_apple: |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Swarm

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs swarm addrs`**                       | :green_apple: | :green_apple: |
| **`ipfs swarm addrs listen`**                | :green_apple: | :tomato:      |
| **`ipfs swarm addrs local`**                 | :green_apple: | :green_apple: |
|     `id=`                                    | :green_apple: | :tomato:      |
| **`ipfs swarm connect`**                     | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`ipfs swarm disconnect`**                  | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`ipfs swarm filters`**                     | :green_apple: | :tomato:      |
| **`ipfs swarm filters add`**                 | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
| **`ipfs swarm filters rm`**                  | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
| **`ipfs swarm peers`**                       | :green_apple: | :green_apple: |
|     `verbose=`                               | :green_apple: | :tomato:      |
|     `latency=`                               | :green_apple: | :tomato:      |
|     `streams=`                               | :green_apple: | :tomato:      |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/swarm/addrs`**                | :green_apple: | :green_apple: |
| **`GET /api/v0/swarm/addrs/listen`**         | :green_apple: | :tomato:      |
| **`GET /api/v0/swarm/addrs/local`**          | :green_apple: | :green_apple: |
|     `id=`                                    | :green_apple: | :tomato:      |
| **`GET /api/v0/swarm/connect`**              | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/swarm/disconnect`**           | :green_apple: | :green_apple: |
|     `arg=`                                   | :green_apple: | :green_apple: |
| **`GET /api/v0/swarm/filters`**              | :green_apple: | :tomato:      |
| **`GET /api/v0/swarm/filters/add`**          | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
| **`GET /api/v0/swarm/filters/rm`**           | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
| **`GET /api/v0/swarm/peers`**                | :green_apple: | :green_apple: |
|     `verbose=`                               | :green_apple: | :tomato:      |
|     `latency=`                               | :green_apple: | :tomato:      |
|     `streams=`                               | :green_apple: | :tomato:      |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------
