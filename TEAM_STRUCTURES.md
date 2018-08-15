# IPFS Project Team Structures - Working Groups & Research Groups

## Table of Contents

- [Description](#description)
  - [One line definition](#one-line-definition)
  - [Expanded description](#expanded-description)
- [Existing Working Groups](#existing-working-groups)
  - **Development and Maintenance:**
    - [JavaScript Core Dev](#javascript-core-dev)
    - [Golang Core Dev](#golang-core-dev)
    - [IPFS GUI](#ipfs-gui)
    - [IPFS Infrastructure](#ipfs-infrastructure)
    - [Dev Team Enablement (QA, Testing, Support)](#qa-testing-and-dev-team-enablement)
  - **Community, Education and Usage:**
    - [Community, Events & Evangelism](#community-events-evangelism)
    - [Documentation, Education and Websites](#documentation-education-and-websites)
  - **Ongoing Efforts to Support Specific Uses:**
    - [Integration with Web Browsers](#integration-with-web-browsers)
    - [Dynamic Data and Capabilities](#dynamic-data-and-capabilities)
    - [IPFS Cluster](#ipfs-cluster)
- [Existing Research Groups](#existing-Research-groups)

## Description

The IPFS Project is developed by multiple teams formed by multiple organizations and ponctual or continuous invidividual contributors. A structure was developed (and continues to evolve) around Working & Research Groups, OKRs and PM best practices that were designed to support the already large and growing group of people, to coordinate among eachother at a global scale.

This document captures the Team Structures that emerged and that led to the many of the sucesses within the IPFS project, namely: Working Groups & Research Groups. At the end of this document, you will find pointers to Teams and Projects that have growned to become their own entities, namely: IPLD, libp2p and Multiformats.

#### One line definition

- **Working Group** - A cohesive team with measurable goals for each quarter. A Working Group needs to have a Captain, a set of people commited to it, and entry point repo and Objectives & Key Results defined per Quarter.
- **Research Group** - A set of people focused on exploring a specific vertical and output possible research surveys, tools, experiments and other types of knowledge that can inform and help the work done by the Working Groups or spark the creation of new Working Groups all together.

#### Expanded description

**Working Groups**

Working Groups are teams of people that are appointed to research, develop and deploy work under the scope that the working group is focused. This structure is designed to provide clarity and direction to the project, enabling individual contributors to focus their time and energy on the areas they are most interested.

Each Working Group is free to experiment with setting their own pace, tracking work and defining priorities. The only requirements are that the Working Group exposes its focus through OKRs to the rest of the org (common interface), that it assigns a Captain, creates an entry point repo and has at least 2 full time contributors dedicatted to it.

Each contributor shouldn't carry responsibilities accross multiple working groups. This is not forbidden by any means but it is greatly disencouraged as it will disable the contributor from achieving full focus.

**Research Groups**

A set of people focused on exploring a specific vertical and output possible research surveys, tools, experiments and other types of knowledge that can inform and help the work done by the Working Groups or spark the creation of new Working Groups all together.

Some great examples from this structure are: research-pubsub which led to the implementation of PubSub by the IPFS/libp2p teams; and research-crdt which lead to the creation of the Dynamic Data & Capabilities Working Group which todays tackles many of the challenges of building DApps on the Distributed Web.

A Research Group doesn't require a Captain or OKRs to be formed and having individuals that subscribe to multiple Research Groups isn't considered harmful.

As a byproduct of both of these team structures is that achieve another important goal, making it simply for new users and contributors to subscribe to updates and get ramped up quickly to the current project focus.

## Existing Working Groups

- **Development and Maintenance:**
  - [JavaScript Core Dev](#javascript-core-dev)
  - [Golang Core Dev](#golang-core-dev)
  - [IPFS GUI](#ipfs-gui)
  - [IPFS Infrastructure](#ipfs-infrastructure)
  - [Dev Team Enablement (QA, Testing, Support)](#qa-testing-and-dev-team-enablement)
- **Community, Education and Usage:**
  - [Community, Events & Evangelism](#community-events-evangelism)
  - [Documentation, Education and Websites](#documentation-education-and-websites)
- **Ongoing Efforts to Support Specific Uses:**
  - [Integration with Web Browsers](#integration-with-web-browsers)
  - [Dynamic Data and Capabilities](#dynamic-data-and-capabilities)
  - [IPFS Cluster](#ipfs-cluster)

### JavaScript IPFS implementation

- **Coordination**: https://github.com/ipfs/pm/blob/master/JS_CORE_DEV_MGMT.md
- **Captain**: [David Dias](https://github.com/diasdavid/)

Develop js-ipfs.

**Responsibilities include**:
- Create the Browser implementation of the IPFS Protocol.

### Golang IPFS implementation

- **Coordination**: https://github.com/ipfs/pm/blob/master/GOLANG_CORE_DEV_MGMT.md
- **Captain**: [Jeromy Johnson](https://github.com/whyrusleeping)

Develop go-ipfs.

**Responsibilities include**:
- Create the Server and reference implementation of the IPFS Protocol.

### IPFS GUI

- **Coordination**: https://github.com/ipfs/ipfs-gui
- **Captain**: [Oli Evans](https://github.com/olizilla)

Making IPFS GUIs simple, accessible, reusable and beautiful.

**Responsibilities include**:
- Fight complexity at every step.
- IPFS must be usable and comprehensible for everyone.
- Publish and promote this work. Make doing the right thing the easiest thing.
- Demonstrate the nature of the system with effortless, coherent, and compelling interfaces.

### IPFS Infrastructure

- **Coordination**: http://github.com/ipfs/infrastructure
- **Captain**: [Erin Fahy](https://github.com/eefahy)

Tools and systems for the IPFS community.

**Responsibilities include**:
- Manage and maintain the IPFS HTTP Gateway
- Manage and maintain the IPFS Bootstrapper nodes
- Manage and maintain the IPFS pinning service, pinbot
- Monitor services and hosts used by the IPFS Dev teams
- Provide wisdom to other users that want to host IPFS nodes

### Dev Team Enablement (QA, Testing, Support)

- **Coordination**: https://github.com/ipfs/testing
- **Captain**: [Victor Bjelkholm](https://github.com/VictorBjelkholm)

The QA, Testing and Dev Team Enablement Working Group focuses on building developer tools, CI and automated maintenance tasks to improve the Developer Experience of the many IPFS (and related) projects.

**Responsibilities include**:

- Enable developers to develop faster by reducing friction from dev.
- Upgrade and build dev tools (i.e AEgir and gx).
- Create a sound testing infrastructure for all the IPFS projects.
- Set the guidelines for writing, maintaining and managing codebases, test suites and contributions.
- Define process and help achieve high quality Sustainable Open Source Modules.
- Automating tasks for things such as: release cycle, ensuring code quality, activity reports.

### Community, Events & Evangelism

> This Working Group hasn't been formed yet.

- **Coordination**: https://github.com/ipfs/community
- **Captain**: @mikeal

The Community, Events & Evangelism Working Group is responsible for building a environment that fosters collaboration, innovation and inclusiveness for the IPFS community.

**Responsibilities include**:

- Help community members organize meetups for their own communities.
- Respond to requests for IPFS presence in conferences.
- Managing the official Social Media channels.
- Publish regular updates to the community (blog posts and newsletters).

### Documentation, Education and Websites

> This Working Group hasn't been formed yet. However, the interim Captain is [Rob Brackett](https://github.com/Mr0grog)

- **Coordination**: https://github.com/ipfs/docs
- **Captain**: ???

The Documentation, Education and Websites Working Group creates the Documentation and Education materials that help more users and contributors get on board to the IPFS project.

**Responsibilities include**:

- Write and make sure that docs are up to date.
- Create Tutorials and Workshops to teach concepts about IPFS and the Distributed Web.
- Develop the front facing Webpages of each project (ipfs.io, libp2p.io, multiformats.io and ipld.io)
- Ensure that public forums (discuss.ipfs.io, irc, github, etc) have adequate moderation and responsive support.
- Ensure that the code of conduct is followed and provide appropriate support or response when violations occur.

### Integration with Web Browsers

- **Coordination**: https://github.com/ipfs/in-web-browsers
- **Captain**: [Marcin Rataj](https://github.com/lidel)

The Integration with Web Browsers Working Group designs and implement Browser integrations, Web Extensions, Service Workers and any other strategy that contributes to IPFS being integrated with the Web today.

**Responsibilities include**:

- Browser integrations (Firefox, Chrome, Brave and others).
- IPFS Web Extension.
- IPFS Service Worker.
- IPFS Web Worker.
- Collaborate with with Browser vendors.
- Identify blockers and design constraints of each integration, figuring out new ways to go around those limitations.
- Increase the adoption of the Distributed Web by making it easy for users to access it.
- Define specifications for address schemes and advocate for those schemes to be adopted.

### Dynamic Data and Capabilities

- **Coordination**: http://github.com/ipfs/dynamic-data-and-capabilities
- **Captain**: [Pedro Teixeira](https://github.com/pgte)

Research and development of building blocks that enable collaborative applications, providing solutions for security, identity, access control, concurrency, synchronization, offline and near-real-time collaboration. This WG was born out of the results created by the [CRDT Research Group](http://github.com/ipfs/research-crdt).

**Responsibilities include**:

- Research and implement CRDTs on top of IPFS, creating building blocks that can be used by other applications.
- Research Cryptographic ACLs (Capabilities Systems) and create building blocks that implement.
- Apply this research and implementation to products like PeerPad, validating the solutions and defining new problems to be solved.

### IPFS Cluster

- **Coordination**: https://github.com/ipfs/ipfs-cluster
- **Captain**: [Hector Sanjuan](https://github.com/hsanjuan)

The IPFS Cluster Working Group is the team implementing IPFS Cluster.

**Responsibilities include**:

- Design and Implement IPFS Cluster.
- Provide knowledge and APIs that organizations with large data sets can use

## Existing Research Groups

The list of existing research groups is:
- https://github.com/ipfs/research-CRDT
- https://github.com/ipfs/research-blockchain-data
- https://github.com/ipfs/research-bitswap
- https://github.com/ipfs/research-p2p-video
- https://github.com/libp2p/research-pubsub
- https://github.com/libp2p/research-dht

## Projects that have evolved into their own entities

- [libp2p](http://github.com/libp2p/libp2p)
  - [OKRs](https://docs.google.com/spreadsheets/d/1HTXfgR5FyPTFhsTkFPRThkeMvHvCgJOaAs7BSl_vQ_0/edit)
  - [PM/Captain](https://github.com/mgoelzer)
- [IPLD](https://github.com/ipld/ipld/)
  - [OKRs](https://docs.google.com/spreadsheets/d/1Lfd91hi3nFlLRS1r-FHvK2ip2Ll6ukraufCgepw43bw/edit)
- [multiformats](https://github.com/multiformats/multiformats)
