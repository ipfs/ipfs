# IPFS Project Working Groups

## Index

- [Description](#description)
- [Working Group Lifecycle](#working-group-lifecycle)
- [Current Working Groups](#current-working-groups)
  - [Development and Maintenance Working Groups](#development-and-maintenance-working-groups)
  - [Community, Education and Usage  Working Groups](#community-education-and-usage-working-groups)
  - [Ongoing Efforts to Support Specific Uses](#ongoing-efforts-to-support-specific-uses)
- [Other not yet classified as a working group](#other-not-yet-classified-as-a-working-group)

## Description

The IPFS Project Working Groups are teams of people that are appointed to research, develop and deploy work under the scope that the working group is focused. This structure is designed to provide clarity and direction to the project, enabling individual contributors to focus their time and energy on the areas they are most interested.

As a consequence from this structure, we achieve another important goal of creating welcoming entry points for the community to subscribe to bodies of work and research. These entry points are curated by the working groups themselves and should serve the purpose of railing in new users and enable contribution as simply as possible.

Each Working Group reserves the right to set its own pace, lifecycle and objectives quarterly.

## Working Group Lifecycle

> **TODO: Define how a working group gets created, evaled and how to decide if its purpuse has been fulfilled and should be dismantled**

## Current Working Groups

### Development and Maintenance Working Groups

**sub-index:**
- [Release](#release)
- [Specifications](#specifications)
- [Files (Unixfs), DEX and Data Structures on top of IPLD](#files-unixfs-dex-and-data-structures-on-top-of-ipld)
- [Runtime Support and Build](#runtime-support-and-build)
- [QA, Testing and Dev Team Enablement](#qa-testing-and-dev-team-enablement)
- [Security](#security)
- [Performance and Benchmarking](#performance-and-benchmarking)

#### Release

**Coordination**: <n/a>

The Release Working Group manages the releases for go-ipfs, js-ipfs and its internal dependencies.

**Responsibilities include**:

- Structure the released process.
- Define the release Roadmap.
- Decide what gets into each release.
- Test releases.
- Announce and gather feedback from the community on each release.

#### Specifications

**Coordination**: <n/a>

The Specifications Working Group coordinates and participates on the specification writting process.

**Responsibilities include**:

- Ensure that specifications are up to date.
- Enable developers and researches to contribute to the specification writting process with minimum overhead.
- That implementations can be compliant to the specs through formal testing (PDD and proofs).
- Facilitate discussion around each spec making sure that proposals are followed up.

#### Files (Unixfs), DEX and Data Structures on top of IPLD

**Coordination**: <n/a>

The Files, DEX and Data Structures on top of IPLD focuses on designed and improving the current Unixfs, MFS and Files API implementation, improving the versatility of Importers and Exporters (DEX) and exploring new ways of leveraging IPLD for data sets. CRDT research is also part of this working group with the goal of enabling new and interesting Data Structures that can be used in IPFS.

**Responsibilities include**:

- Design Importers and Exporters for different data sets.
- Maintain Unixfs.
- Improve the APIs that let users interact with Files on IPFS.
- Inform and guide users who want to define their own IPLD-based data formats.
- Research and implement CRDTs on top of IPFS, creating building blocks that can be used by other applications.

#### Runtime Support and Build

**Coordination**: <n/a>

The Runtime Support and Build Working Group ensures that the implementations of IPFS are supported by multiple runtimes and architectures, while providing with the necessary set up to empower developers to make the best decisions while contributing to the project.

**Responsibilities include**:

- Create a Build pipeline for IPFS.
- Create and monitor continuous testing for the multiple supported platforms (Architecture, OS'es, Browsrs).
- Explore new runtimes and create Roadmaps towards supporting those.

#### QA, Testing and Dev Team Enablement

**Coordination**: <n/a>

The QA, Testing and Dev Team Enablement Working Group focuses on developing tools, CI and automating maintenance tasks to improve the Developer experience of the many IPFS contributors.

**Responsibilities include**:

- Building and upgrading CI for IPFS.
- Automating tasks for things such as: release cycle, ensuring code quality, activity reports.
- Upgrade dev tools (i.e AEgir and gx).

#### Security

**Coordination**: <n/a>

The Security Working Group ensures that Security issues are handled with maximum urgency and that risk is mitigated.

**Responsibilities include**:

- Regular audits by independent parties.
- Create a bugbounty program.
- Create a Responsible disclosure program.
- Create advisories and CVE for any reported vulnerabilities.
- Ensure patches are done.
- Communicate to the community on how to migrate and how to mitigate security risks.

#### Performance and Benchmarking

**Coordination**: <n/a>

The Performance and Benchmarking Working Group is dedicated to optimizing the performance of IPFS.

**Responsibilities include**:

- Create solid Benchmarks for IPFS and its subsystems.
- Help protocol implementors make the best decisions when it comes to design.

### Community, Education and Usage  Working Groups

**sub-index:**
- [Community, Events & Evangelism](#community-events-evangelism)
- [Documentation, Education and Websites](#documentation-education-and-websites)
- [Internationalisation and Localization (i18n and l10n)](#internationalisation-and-localization-i18n-and-l10n)

#### Community, Events & Evangelism

**Coordination**: <n/a>

The Community, Events & Evangelism Working Group is responsible for building a environment that fosters collaboration, innovation and inclusiveness for the IPFS community.

**Responsibilities include**:

- Organize Meetups in multiple cities.
- Help community members organize meetups for their own communities.
- Respond to requests for IPFS presence in conferences.
- Managing the official Social Media channels.
- Publish regular updates to the community (blog posts and newsletters).

#### Documentation, Education and Websites

**Coordination**: <n/a>

The Documentation, Education and Websites Working Group creates the Documentation and Education materials that help more users and contributors get on board to the IPFS project.

**Responsibilities include**:

- Write and make sure that docs are up to date.
- Create Tutorials and Workshops to teach concepts about IPFS and the Distributed Web.
- Develop the front facing Webpages of each project (ipfs.io, libp2p.io, multiformats.io and ipld.io)
- Ensure that public forums (discuss.ipfs.io, irc, github, etc) have adequate moderation and responsive support.
- Ensure that the code of conduct is followed and provide appropriate support or response when violations occur.

#### Internationalisation and Localization (i18n and l10n)

**Coordination**: <n/a>

The Internationalisation and Localization Working Group create the platform for community members to collaborate in their own language.

**Responsibilities include**:

- Translation of the documentation and specification.
- Monitor social media in the multiple languages supported.
- Promote speaking engagements in multiple languages.
- Create subteams to tackle the translation of each language.

### Ongoing Efforts to Support Specific Uses

**sub-index:**
- [Integration with Web Browsers](#integration-with-web-browsers)
- [Large Data Sets](#large-data-sets)
- [IPFS Cluster](#ipfs-cluster)

#### Integration with Web Browsers

**Coordination**: https://github.com/ipfs/in-web-browsers

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

Tracking: https://github.com/ipfs/in-web-browsers

#### Large Data Sets

**Coordination**: <n/a>

The Large Data Sets Working Group is dedicated to create the tooling and the testbed necessary to make sure that IPFS is capable of handling large datasets and that the workflows match or improve on what are the expectations from current industry standards.

**Responsibilities include**:

- Interact directly with organizations that use IPFS for large datasets.
- ipfs-pack.
- Data Together initiative.

#### IPFS Cluster

**Coordination**: https://github.com/ipfs/ipfs-cluster

The IPFS Cluster Working Group is the team implementing IPFS Cluster.

**Responsibilities include**:

- Design and Implement IPFS Cluster.

## Other endeavours not yet classified as a working group

Areas of Work that haven't been formalized as a Working Group.

The following bodies of work haven't been structure into a working group.

- InterPlanetary TestLab
- IPFS Infrastructure
- Porcelain on top of IPFS - DApps Building Blocks
- libp2p internals
- multiformats
- IPLD as a project
