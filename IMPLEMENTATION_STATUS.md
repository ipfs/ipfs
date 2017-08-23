# IPFS Implementation Status

> Legend: :green_apple: Done &nbsp; :lemon: In Progress &nbsp; :tomato: Missing &nbsp; :chestnut: Not planned

# Table of Contents

# API

## Bitswap

#### CLI

| Command                                      | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`ipfs ledger`**                            | :green_apple: | :tomato:      |
|     `peer`                                   | :green_apple: | :tomato:      |
| **`ipfs reprovide`**                         | :green_apple: | :tomato:      |
| **`ipfs bitswap stat`**                      | :green_apple: | :green_apple: |
| **`ipfs bitswap unwant`**                    | :green_apple: | :tomato:      |
|     `key`                                    | :green_apple: | :tomato:      |
| **`ipfs bitswap wantlist`**                  | :green_apple: | :lemon:       |
|     `peer`                                   | :green_apple: | :tomato:      |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/bitswap/ledger`**             | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
| **`GET /api/v0/bitswap/reprovide`**          | :green_apple: | :tomato:      |
| **`GET /api/v0/bitswap/stat`**               | :green_apple: | :green_apple: |
| **`GET /api/v0/bitswap/unwant`**             | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
| **`GET /api/v0/bitswap/wantlist`**           | :green_apple: | :lemon:       |
|     `peer=`                                  | :green_apple: | :tomato:      |

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

#### CLI

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
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


#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Files

#### CLI

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
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
| **`GET /api/v0/ls`**                         | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `resolve=`                               | :green_apple: | :chestnut:    |
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

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).


--------------------------------------------------------------------------------

## File Store (IPFS Pack)

#### CLI

#### HTTP

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).


--------------------------------------------------------------------------------

## Key Management

#### CLI

#### HTTP

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).


--------------------------------------------------------------------------------

## Miscellaneous

#### CLI

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/ping`**                       | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `count=,n=`                              | :green_apple: | :chestnut:    |
| **`GET /api/v0/update`**                     | :chestnut:    | :chestnut:    |
| **`GET /api/v0/version`**                    | :green_apple: | :chestnut:    |
| **`GET /api/v0/commands`**                   | :green_apple: | :chestnut:    |
| **`POST /api/v0/id`**                        | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## Naming

#### CLI

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`POST /api/v0/name/publish`**              | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `resolve=`                               | :green_apple: | :chestnut:    |
|     `lifetime=`                              | :green_apple: | :chestnut:    |
|     `ttl=`                                   | :green_apple: | :chestnut:    |
| **`GET /api/v0/name/resolve`**               | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `recursive=`                             | :green_apple: | :chestnut:    |
|     `nocache=`                               | :green_apple: | :chestnut:    |
| **`GET /api/v0/resolve`**                    | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `recursive=`                             | :green_apple: | :chestnut:    |
| **`GET /api/v0/dns`**                        | :green_apple: | :chestnut:    |
|     `arg=`                                   | :green_apple: | :chestnut:    |
|     `recursive=`                             | :green_apple: | :chestnut:    |

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
| **`ipfs pin add`**                           | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
| **`ipfs pin ls`**                            | :green_apple: | :tomato:      |
|     `type=`                                  | :green_apple: | :tomato:      |
|     `count=`                                 | :green_apple: | :tomato:      |
|     `quiet=`                                 | :green_apple: | :tomato:      |
| **`ipfs pin rm`**                            | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
| **`ipfs pin update`**                        | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `unpin=`                                 | :green_apple: | :tomato:      |
| **`ipfs pin verify`**                        | :green_apple: | :tomato:      |
|     `verbose=`                               | :green_apple: | :tomato:      |
| **`ipfs refs`**                              | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `format=`                                | :green_apple: | :tomato:      |
|     `edges=`                                 | :green_apple: | :tomato:      |
|     `unique=`                                | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
| **`ipfs refs local`**                        | :green_apple: | :tomato:      |
| **`ipfs refs`**                              | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `format=`                                | :green_apple: | :tomato:      |
|     `edges=`                                 | :green_apple: | :tomato:      |
|     `unique=`                                | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |

#### HTTP

| Endpoint                                     | Go Impl       | JS Impl       |
| -------------------------------------------- | :-----------: | :-----------: |
| **`GET /api/v0/pin/add`**                    | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |
| **`POST /api/v0/pin/ls`**                    | :green_apple: | :tomato:      |
|     `type=`                                  | :green_apple: | :tomato:      |
|     `count=`                                 | :green_apple: | :tomato:      |
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
| **`GET /api/v0/refs`**                       | :green_apple: | :tomato:      |
|     `arg=`                                   | :green_apple: | :tomato:      |
|     `format=`                                | :green_apple: | :tomato:      |
|     `edges=`                                 | :green_apple: | :tomato:      |
|     `unique=`                                | :green_apple: | :tomato:      |
|     `recursive=`                             | :green_apple: | :tomato:      |

#### Core

See [interface-ipfs-core](https://github.com/ipfs/interface-ipfs-core).

--------------------------------------------------------------------------------

## PubSub

#### CLI

#### HTTP

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
