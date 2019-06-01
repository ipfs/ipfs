# IPFS é a Web Distribuída

> Um protocolo hipermídia ponto a ponto para tornar a web mais rápida, segura e aberta.

[![ipfs](https://img.shields.io/badge/irc-%23ipfs-brightgreen.svg)](https://webchat.freenode.net/?channels=ipfs)
[![Changelog #204](https://img.shields.io/badge/changelog-%23204-lightgrey.svg)](https://changelog.com/204)

Bem vindo ao IPFS! Por que não assiste um [vídeo de demonstração](https://www.youtube.com/watch?v=8CMxDNuuAiQ) para começar? Por favor, poste perguntas e idéias em https://discuss.ipfs.io

## Índice

- [Visão Geral](#overview)
  - [Resumo](#quick-summary)
- [Como IPFS funciona](#how-ipfs-works)
  - [IPFS Papers](#ipfs-papers)
  - [IPFS Conversas](#ipfs-talks)
- [Mais Sobre IPFS](#more-about-ipfs)
  - [Estado atual do IPFS](#current-state-of-ipfs)
  - [Distribuição Alpha](#alpha-distribution)
  - [Questões de Segurança e Divulgações](#security-issues-and-disclosures)
- [Projeto e Comunidade](#project-and-community)
- [Links do Projeto](#project-links)
  - [Implementações do Protocolo](#protocol-implementations)
  - [Bibliotecas de Clientes HTTP](#http-client-libraries)
  - [Diretório de Projeto](#project-directory)
  - [Outros recursos da comunidade](#other-community-resources)
- [Licença](#license)

## Visão Geral

IPFS ([the InterPlanetary File System](https://github.com/ipfs/faq/issues/76)) é um novo protocolo de distribuição hipermídia, endereçado por conteúdo e identidades. O IPFS permite a criação de aplicativos completamente distribuídos. O objetivo é tornar a web mais rápida, segura e aberta.

O IPFS é um sistema de arquivos distribuídos que procura conectar todos os dispositivos computacionais com o mesmo sistema de arquivos. De certa forma, isso é semelhante aos objetivos originais da Web, mas o IPFS funciona como um único bittorrent swarm trocando objetos git. Você pode ler mais sobre suas origens no documento [IPFS - Content Addressed, Versioned, P2P File System](https://github.com/ipfs/ipfs/blob/master/papers/ipfs-cap2pfs/ipfs-p2p-file-system.pdf?raw=true).

O IPFS está se tornando um novo grande subsistema da Internet. Se construído corretamente, pode complementar ou substituir o HTTP. Pode complementar ou substituir. Parece loucura. _É_ uma loucura.

[![Alpha Demo](../../img/ipfs-alpha-video.png)](https://www.youtube.com/watch?v=8CMxDNuuAiQ)

Quer ver mais? Confira a palestra de Juan Benet no Sourcegraph - [IPFS: The Permanent Web](https://www.youtube.com/watch?v=Fa4pckodM9g).

### Sumário

O IPFS é um protocolo que:
- define um sistema de arquivos endereçado ao conteúdo
- coordena a entrega de conteúdo
- combina o Kademlia + BitTorrent + Git

IPFS é um sistema de arquivos que:
- tem diretórios e arquivos
- tem sistemas de arquivos montáveis (via FUSE)

IPFS é uma web que:
- pode ser usada para visualizar documentos, como na web
- arquivos acessíveis via HTTP em `https://ipfs.io/<path>`
- navegadores ou extensões podem aprender a usar os esquemas de URL `ipfs://` ou `dweb:/ipfs/` diretamente
- garante a autencidade via conteúdo endereçado

O IPFS é modular e possui:
- camada de conexão sobre qualquer protocolo de rede
- camada de roteamento
- camada de roteamento DHT (kademlia/coral)
- um serviço de nomenclatura baseado em caminho
- usa a troca de blocos inspirada no bittorrent

O IPFS usa criptografia com:
- endereçamento de conteúdo hash criptográfico
- desduplicação em nível de bloco
- integridade de arquivos + versionamento
- execução em nível de sistema de arquivos + suporte a assinatura

O IPFS é P2P:
- transferências de arquivos peer-to-peer em todo o mundo
- arquitetura completamente descentralizada
- **não** possui um ponto central de falha

O IPFS é um cdn:
- adicionar um arquivo ao sistema de arquivos localmente está disponível para o mundo
- amigável ao cache (nomenclatura de conteúdo hash)
- distribuição de largura de banda baseada em bittorrent

O IPFS tem um serviço de nome:
- IPNS, um sistema de nomes inspirado em SFS
- namespace global baseado em PKI
- serve para construir cadeias de confiança
- compatível com outros NSes
- pode mapear DNS, .onion, .bit, etc para IPNS

## Como o IPFS Funciona?

Para saber mais sobre como funciona o IPFS, dê uma olhada nos [Papers](#ipfs-papers) ou [Conversas](#ipfs-talks). Você também pode explorar as [Especificações](https://github.com/ipfs/specs) por escrito.

### Papers IPFS

- [IPFS - Content Addressed, Versioned, P2P File System (draft 3)](https://github.com/ipfs/ipfs/blob/master/papers/ipfs-cap2pfs/ipfs-p2p-file-system.pdf?raw=true)
- [Especificações](https://github.com/ipfs/specs) (em progresso)
- veja também: https://github.com/ipfs/papers

### Conversas IPFS

Esta é uma breve seleção de palestras introdutórias. Com o tempo, coletaremos mais.

- 2014-07-21 - [IPFS: The Permanent Web](https://www.youtube.com/watch?v=Fa4pckodM9g) at [Sourcegraph](https://sourcegraph.com/) (primeira conversa pública)
- 2015-02-20 - [IPFS Alpha Demo](https://www.youtube.com/watch?v=8CMxDNuuAiQ)
- 2015-06-03 - [IPFS Hands on Introduction](https://www.youtube.com/watch?v=h73bd9b5pPA) at Ethereum SV Meetup
- **2015-10-22 - [IPFS: The Distributed, Permanent Web](https://www.youtube.com/watch?v=HUVmypx9HGI) no Seminário de Stanford (melhor visão geral do projeto)**
- 2016-09-14 - [Distributed Apps with IPFS](https://www.youtube.com/watch?v=jONZtXMu03w)
- 2016-10-22 - [The Decentralized Web, IPFS and Filecoin](https://www.youtube.com/watch?v=cU-n_m-snxQ)

Veja a lista completa em [IPFS Media](https://ipfs.io/media/)

## Mais Sobre IPFS

O projeto IPFS busca evoluir a infraestrutura da Internet e da Web, com muitas coisas que aprendemos com sistemas de sucesso, como o [Git](https://git-scm.com/), [BitTorrent](http://bittorrent.org/), [Kademlia](https://en.wikipedia.org/wiki/Kademlia), [Bitcoin](https://bitcoin.org/), e muitos, muitos outros. Esse é o tipo de coisa que teria saído no ARPA/DARPA/IETF/BellLabs em outra época. IPFS é um projeto Open Source Livre, com centenas de colaboradores.

### Estado Atual do IPFS

**O IPFS é um trabalho em andamento!**

Observe que o IPFS é um trabalho em andamento. É um plano ambicioso para tornar a Internet mais livre, aberta, segura e de alto desempenho. Baseia-se nas boas ideias de numerosos sistemas distribuídos testados em campo.

Hoje, há uma implementação principal do protocolo IPFS (em [Go](https://github.com/ipfs/go-ipfs)) com [mais projetos a caminho](#protocol-implementations) ([JavaScript](https://github.com/ipfs/js-ipfs) e [Python](https://github.com/ipfs/py-ipfs)).

### Distribuição Alpha

Em fevereiro de 2015, a implementação do [go-ipfs](https://github.com/ipfs/go-ipfs) foi lançada como uma "Distribuição Alfa". Desde então, o go-ipfs vem fazendo lançamentos regulares no caminho da Beta. Ambos [js-ipfs](https://github.com/ipfs/js-ipfs) e [py-ipfs](https://github.com/ipfs/py-ipfs) estão em andamento.

- [Instalar IPFS Alpha Distribution](https://ipfs.io/docs/install)
- [Configurar IPFS e Primeiros passos](https://ipfs.io/docs/getting-started/)
- [Ficando Online](https://ipfs.io/docs/getting-started/#going-online)
- [Mais exemplos](https://ipfs.io/docs/examples/)

Para um tutorial detalhado, clique aqui e [mãos à obra!](https://www.youtube.com/watch?v=h73bd9b5pPA).

### Questões de Segurança e Divulgações

O protocolo IPFS e suas implementações estão em desenvolvimento pesado. Isso significa que pode haver problemas em nossos protocolos ou pode haver erros em nossas implementações. E - embora o IPFS ainda não esteja pronto para produção - muitas pessoas já estão executando nós em suas máquinas. Por isso, levamos as vulnerabilidades de segurança muito a sério. Se você descobrir um problema de segurança, por favor, chame a nossa atenção imediatamente!

Se você encontrar uma vulnerabilidade que pode afetar implementações ativas - por exemplo, expondo uma exploração de execução remota - envie seu relatório de maneira privada para security@ipfs.io. Por favor, NÃO torne um problema público.

Se o problema for uma falha do protocolo que não pode ser imediatamente explorada ou algo ainda não implementado, basta discuti-lo abertamente.

## Projeto e Comunidade

[![](https://cdn.rawgit.com/jbenet/contribute-ipfs-gif/master/img/contribute.gif)](https://github.com/ipfs/community/blob/master/CONTRIBUTING.md)

O Projeto IPFS é agora muito grande, com centenas de colaboradores em nossa comunidade. Você está convidado a participar! Aqui estão alguns links para nossos canais de comunicação:

- [Fóruns da Comunidade IPFS para Discussão e Suporte](https://discuss.ipfs.io)
- [Sprints e Administração do Projeto](https://github.com/ipfs/pm)
- [Guideline de Contribuição](https://github.com/ipfs/community/blob/master/CONTRIBUTING.md)

Você também pode encontrar nossa comunidade em:

- IRC: [#ipfs on chat.freenode.net](https://webchat.freenode.net/?channels=ipfs) for live help and some dev discussions ([Logs](https://botbot.me/freenode/ipfs/))
- Google Group: [ipfs-users@groups.google.com](https://groups.google.com/forum/#!forum/ipfs-users) (low traffic)
- Twitter: [@IPFSbot](https://twitter.com/ipfsbot) for news.

## Links do projeto

O Projeto IPFS é grande - há muitos subprojetos e esforços relacionados. Vamos documentar os principais aqui, mas você deve dar uma olhada. O espaço está explodindo e muitos novos projetos estão surgindo o tempo todo.

Para uma lista com curadoria da comunidade de projetos incríveis usando o IPFS, confira [awesome-ipfs](https://github.com/ipfs/awesome-ipfs)!

### Implementações do Protocolo

| Linguagem | Projeto | Completude |
|----------|---------|--------------|
| Go | https://github.com/ipfs/go-ipfs | **referência** |
| JavaScript | https://github.com/ipfs/js-ipfs | **alpha** |
| Python | https://github.com/ipfs/py-ipfs | iniciando |
| C | https://github.com/Agorise/c-ipfs | iniciando |

Se você deseja iniciar sua própria implementação de linguagem do IPFS, confira o [Guia de implementação do IPFS](https://github.com/ipfs/specs/blob/master/overviews/implement-ipfs.md) e [Especificações](https://github.com/ipfs/specs). As especificações ainda estão evoluindo, mas os principais formatos são estáveis e podem ser construídos. Certifique-se de postar uma issue caso queira iniciar uma, já que muitas pessoas expressaram interesse em contribuir para novas implementações.

### Bibliotecas de Clientes HTTP

<a href="ipfs.io"><img width="360px" src="https://ipfs.io/ipfs/QmQJ68PFMDdAsgCZvA1UVzzn18asVcf7HVvCDgpjiSCAse" alt="IPFS http client lib logo" /></a>

| Linguagem     | Biblioteca                                                | Completude |
|---------------|-----------------------------------------------------------|--------------|
| Go            | https://github.com/ipfs/go-ipfs-api                       | ?? |
| Java          | https://github.com/ipfs/java-ipfs-api                     | ?? |
| JavaScript    | https://github.com/ipfs/js-ipfs-api                       | 100% |
| Python        | https://github.com/ipfs/py-ipfs-api                       | ?? |
| Scala         | https://github.com/ipfs/scala-ipfs-api                    | ?? |
| Clojure       | https://github.com/keorn/clj-ipfs-api                     | ?? |
| Clojurescript | https://github.com/district0x/cljs-ipfs-api               | ?? |
| Haskell       | https://github.com/davidar/hs-ipfs-api                    | ?? |
| Swift         | https://github.com/ipfs/swift-ipfs-api                    | ?? |
| CommonLisp    | https://github.com/WeMeetAgain/cl-ipfs-api                | ?? |
| Rust          | https://github.com/ferristseng/rust-ipfs-api              | ?? |
|               | https://github.com/gkbrk/rust-ipfs-api                    | ?? |
|               | https://github.com/rmnoff/rust-ipfs-api                   | ?? |
|               | https://github.com/rschulman/rust-ipfs-api                | ?? |
| Ruby          | https://github.com/Fryie/ipfs-ruby                        | ?? |
| Mac Automator | https://github.com/NeoTeo/ipfs-osx-service                | ?? |
| PHP           | https://github.com/cloutier/php-ipfs-api                  | ?? |
|               | https://github.com/digitalkaoz/php-ipfs-api               | ?? |
| C#            | https://github.com/jeremy-ellis-tech/net-ipfs-http-client | ?? |
|               | https://github.com/richardschneider/net-ipfs-api          | ?? |
| C++           | https://github.com/vasild/cpp-ipfs-api                    | ?? |
| Erlang        | https://github.com/hendry19901990/erlang-ipfs-http-client | ?? |
| Objective C   | N/A                                                       | ?? |
| Julia         | contato: [@rened](https://github.com/rened)               | ?? |
| Lua           | contato: [@seclorum](https://github.com/seclorum)         | ?? |

Por favor ajude contribuindo para uma das bibliotecas acima. Caso você queira implementar em outra linguagem, consulte o [Guia de Implementação do Cliente HTTP IPFS](https://github.com/ipfs/go-ipfs/blob/master/docs/implement-api-bindings.md) e [avise-nos](https://github.com/ipfs/ipfs/issues/83) para que possamos ajudar!

### Diretório de Projetos

Este tem como objetivo ser um diretório de todos os repositórios da [Organização do IPFS Github](https://github.com/ipfs) e outras coisas relacionadas.

Temos um quadro de status que verifica todos os repositórios do IPFS com informações sobre CI, Readmes, cobertura de testes e assim por diante, neste link: http://project-repos.ipfs.io/

#### Organização do Projeto

- [ipfs](https://github.com/ipfs/ipfs) - Repositório Master, introdução e notícias.
- [discourse](https://discuss.ipfs.io) - Discussões da comunidade e fórum de suporte.
- [tm](https://github.com/ipfs/tm) - Equipe IPFS Planejamento e Gestão do Projeto.

#### Obtenha ajuda!

O melhor lugar para procurar ajuda é [no fórum da comunidade do IPFS](https://discuss.ipfs.io) ou no IRC (freenode) no canal `# ipfs`.

Há dois repositórios depreciados contendo [FAQ](https://github.com/ipfs/faq) e [support](https://github.com/ipfs/support). Use-os como referência, mas publique novas perguntas ou solicitações de ajuda em https://discuss.ipfs.io.

#### Documentos

- [papers](papers) - Papers acadêmicos sobre IPFS.
- [specs](https://github.com/ipfs/specs) - Especificações no protocolo IPFS.
- [notes](https://github.com/ipfs/notes) - Várias notas e discussões relevantes (que não se encaixam em outro lugar).
- [reading-list](https://github.com/ipfs/reading-list) - Artigos para entender o IPFS.

#### Discussões

- [archives](https://github.com/ipfs/archives) - Coordenar os esforços de arquivamento com o IPFS.
- [archive-format](https://github.com/ipfs/archive-format) - Formato de arquivo DAG.
- [research-bitswap](https://github.com/ipfs/research-bitswap) - Repo para discutir pesquisa Bitswap.
- [bitswap-ml](https://github.com/ipfs/bitswap-ml) - Bitswap e Machine Learning.
- [research-crdt](https://github.com/ipfs/research-crdt) - Repor para discutir sobre pesquisas sobre crdt.
- [research-pubsub](https://github.com/libp2p/research-pubsub) - Repo para discutir a pesquisas sobre pubsub.
- [blockchain-data](https://github.com/ipfs/blockchain-data) - Usando o IPFS para armazenar dados para aplicativos Blockchain.
- [POST](https://github.com/ipfs/POST) - Uma estrutura de dados para comunicação humana.

#### Implementações de Protocolo

- [go-ipfs](https://github.com/ipfs/go-ipfs) - Implementação em Go.
- [js-ipfs](https://github.com/ipfs/js-ipfs) - Implementação em Javascript.
- [py-ipfs](https://github.com/ipfs/py-ipfs) - Implementação em Python.

#### IPFS DSLs

- [fsharp-ipfs-dsl](https://github.com/cloveekprojeqt/fsharp-ipfs-dsl) - Embedded declarative F# DSL over [net-ipfs-api](https://github.com/richardschneider/net-ipfs-api)

#### IPFS GUIs

- [ipfs-companion](https://github.com/ipfs-shipyard/ipfs-companion) - A extensão do navegador web.
- [ipfs-desktop](https://github.com/ipfs-shipyard/ipfs-desktop) - Um aplicativo de desktop.
- [ipfs-webui](https://github.com/ipfs/webui) - O aplicativp IPFS WebUI.
- [i18n](https://github.com/ipfs/i18n) - O Projeto de Tradução IPFS: traduções de crowdsourcing de GUIs do IPFS e sites.
- [pm-ipfs-gui](https://github.com/ipfs-shipyard/pm-ipfs-gui) - Coordenação de desenvolvimento e manutenção de aplicativos GUI.

#### Apps no IPFS

Você pode encontrar uma lista cada vez maior em [Awesome IPFS](https://awesome.ipfs.io/categories/apps/)

#### Infraestrutura da Comunidade

- [blog](https://github.com/ipfs/blog) - O blog IPFS.
- [community forum](https://discuss.ipfs.io)
- [distributions](https://github.com/ipfs/distributions) - Scripts para construir o /install da página html. 
- [newsletter](https://github.com/ipfs/newsletter) - Prepare e armazene resumos de boletins IPFS. [Assine aqui.](https://tinyletter.com/ipfsnewsletter)
- [infrastructure](https://github.com/ipfs/infrastructure) - Ferramentas e sistemas para a comunidade.
- [ops-requests](https://github.com/ipfs/ops-requests) - Solicitações sobre operações de infraestrutura.
- [project-repos](https://github.com/ipfs/project-repos) Status do IC e outras métricas de integridade.
- [website](https://github.com/ipfs/website) - O source do site da comunidade do IPFS em http://ipfs.io.

#### Listas de Referência

- [refs](https://github.com/ipfs/refs) - Ferramentas para publicar listas de cabeçalhos de referência do IPFS.
- [refs-denylists-dmca](https://github.com/ipfs/refs-denylists-dmca) - Avisos de remoção do DMCA para o IPFS Public Gateway.
- [refs-solarnet-storage](https://github.com/ipfs/refs-solarnet-storage) - Inventário de conteúdo armazenado nos hosts de armazenamento do Solarnet.

### Outros Recursos da Comunidade

- [examples](https://github.com/ipfs/examples) - Exemplos de como usar o go-ipfs.
- [awesome-ipfs](https://github.com/ipfs/awesome-ipfs) - Recursos úteis para usar o IPFS e construir coisas sobre ele.
- [logo](https://github.com/ipfs/logo) - O logotipo para o IPFS.

#### Meetups sobre IPFS

Há uma infinidade de Meetups IPFS em todo o mundo agora. Encontre o seu no [Community Repo](https://github.com/ipfs/community#events)

Encorajamos e apoiamos os Meetups do IPFS, por favor, avise-nos caso você queira iniciar um. Sinta-se à vontade para se organizar através das [discussões da comunidade](https://github.com/ipfs/community/issues) e [para anunciar eventos no repositório principal](https://github.com/ipfs/ipfs/issues).

#### Ferramentas

Instalando

- [install-go-ipfs](https://github.com/ipfs/go-ipfs#install) - Instale o script de shell go-ipfs.
- [install-js-ipfs](https://github.com/ipfs/js-ipfs#install) - Instale o js-ipfs através do npm ou por uma script tag.
- [ipfs-update](https://github.com/ipfs/ipfs-update) - Uma ferramenta de atualização para o IPFS.
- [fs-repo-migrations](https://github.com/ipfs/fs-repo-migrations) - Estas são migrações para as versões [IPFS fs-repo](https://github.com/ipfs/specs/tree/399c907b214a24dc82ca010af6884227cb2829cf/repo/fs-repo).
- [npm-go-ipfs](https://github.com/ipfs/npm-go-ipfs) - Instale o go-ipfs a partir do npm.

Outros

- [connections-globe](https://github.com/ipfs/connections-globe) - Um globo interativo para visualizar todos os seus pares IPFS.
- [dataviz](https://github.com/ipfs/dataviz) - Visualizações de dados do IPFS.
- [dir-index-html](https://github.com/ipfs/dir-index-html) - Listagem de diretórios html.
- [dnslink-deploy](https://github.com/ipfs/dnslink-deploy) - Configurar automaticamente registros DNS no Digital Ocean.
- [file-browser](https://github.com/ipfs/file-browser) - Arquivos genéricos do browser UI
- [fs-stress-test](https://github.com/ipfs/fs-stress-test) - Teste de estresse dos recursos do sistema de arquivos IPFS.
- [js-ipfsd-ctl](https://github.com/ipfs/js-ipfsd-ctl) - Controlar daemons IPFS do JavaScript.
- [ipfs-hubot](https://github.com/ipfs/ipfs-hubot) - Hubot para uso IPFS.
- [ipfs-blob-store](https://github.com/ipfs/ipfs-blob-store) - Uma implementação do abstract blob store usando IPFS.
- [Encontre uma lista cada vez maior em Awesome IPFS](https://awesome.ipfs.io/categories/tools/)

## Licença

MIT
