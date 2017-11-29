# IPFS Project Working Groups

## Index

- [Description](#description)
- [Working Group Lifecycle](#working-group-lifecycle)
- [Current Working Groups](#current-working-groups)
- [Other](#other)

## Description

The IPFS Project Working Groups are teams of people that are appointed to research, develop and deploy work under the scope that the working group is focused. This structure is designed to provide clarity and direction to the project, enabling individual contributors to focus their time and energy on the areas they are most interested.

Each Working Group has its own cadence, lifecycle and objectives.

## Working Group Lifecycle

TODO: Define how a working group gets created, evaled and how to decide if its purpuse has been fulfilled and should be dismantled

## Current Working Groups

### Development and Maintenance

#### Release

The Release Working Group manages the releases for go-ipfs, js-ipfs and its internal dependencies.

Responsibilities include:

- Structure the released process.
- Define the release Roadmap.
- Decide what gets into each release.
- Test releases.
- Announce and gather feedback from the community on each release.

#### Specifications

The Specifications Working Group coordinates and participates on the specification writting process.

Responsibilities include:

- Ensure that specifications are up to date.
- Enable developers and researches to contribute to the specification writting process with minimum overhead
- That implementations can be compliant to the specs through formal testing (PDD and proofs).
- Facilitate discussion around each spec making sure that proposals are followed up.

#### Files (Unixfs), DEX and Data Structures on top of IPLD

The Files, DEX and Data Structures on top of IPLD focuses on designed and improving the current Unixfs, MFS and Files API implementation, improving the versatility of Importers and Exporters (DEX) and exploring new ways of leveraging IPLD for data sets.

Responsibilities include:

- Design Importers and Exporters for different data sets
- Maintain Unixfs
- Improve the APIs that let users interact with Files on IPFS
- Inform and guide users who want to define their own IPLD-based data formats

#### Runtime Support and Build

The Runtime Support and Build Working Group ensures that the implementations of IPFS are supported by multiple runtimes and architectures, while providing with the necessary set up to empower developers to make the best decisions while contributing to the project.

Responsibilities include:

- Create a Build pipeline for IPFS.
- Create and monitor continuous testing for the multiple supported platforms (Architecture, OS'es, Browsrs).
- Explore new runtimes and create Roadmaps towards supporting those.

#### QA, Testing and Dev Team Enablement

The QA, Testing and Dev Team Enablement Working Group focuses on developing tools, CI and automating maintenance tasks to improve the Developer experience of the many IPFS contributors.

Responsibilities include:

- Building and upgrading CI for IPFS
- Automating tasks for things such as: release cycle, ensuring code quality, activity reports.
- Upgrade dev tools (i.e AEgir)

#### Security

The Security Working Group ensures that Security issues are handled with maximum urgency and that risk is mitigated.

Responsibilities include:

- Regular audits by independent parties
- Create a bugbounty program
- Create a Responsible disclosure program
- Create advisories and CVE for any reported vulnerabilities
- Ensure patches are done
- Communicate to the community on how to migrate and how to mitigate security risks

#### Performance and Benchmarking

The Performance and Benchmarking Working Group is dedicated to optimizing the performance of IPFS.

Responsibilities include:

- Create solid Benchmarks for IPFS and its subsystems
- Help protocol implementors make the best decisions when it comes to design

### Community, Education and Usage

#### Community, Events & Evangelism

The Community, Events & Evangelism Working Group is responsible for building a environment that fosters collaboration, innovation and inclusiveness for the IPFS community.

Responsibilities include:

- Organize Meetups in multiple cities
- Help community members organize meetups for their own communities
- Respond to requests for IPFS presence in conferences
- Managing the official Social Media channels
- Publish regular updates to the community (blog posts and newsletters)

#### Documentation, Education and Websites

The Documentation, Education and Websites Working Group creates the Documentation and Education materials that help more users and contributors get on board to the IPFS project.

Responsibilities include:

- Write and make sure that docs are up to date.
- Create Tutorials and Workshops to teach concepts about IPFS and the Distributed Web.
- Develop the front facing Webpages of each project (ipfs.io, libp2p.io, multiformats.io and ipld.io)
- Ensure that public forums (discuss.ipfs.io, irc, github, etc) have adequate moderation and responsive support.
- Ensure that the code of conduct is followed and provide appropriate support or response when violations occur.

#### Internationalisation and Localization (i18n and l10n)

The Internationalisation and Localization Working Group create the platform for community members to collaborate in their own language.

Responsibilities include:

- Translation of the documentation and specification.
- Monitor social media in the multiple languages supported.
- Promote speaking engagements in multiple languages.
- Create subteams to tackle the translation of each language.

### Ongoing Efforts to Support Specific Uses

#### Integration with Web Browsers

The Integration with Web Browsers Working Group designs and implement Browser integrations, Web Extensions, Service Workers and any other strategy that contributes to IPFS being integrated with the Web today.

Responsibilities include:

- Browser integrations (Firefox, Chrome, Brave and others).
- IPFS Web Extension.
- IPFS Service Worker.
- IPFS Web Worker.
- Collaborate with with Browser vendors.
- Identify blockers and design constraints of each integration, figuring out new ways to go around those limitations.
- Increase the adoption of the Distributed Web by making it easy for users to access it.
- Define specifications for address schemes and advocate for those schemes to be adopted.

#### Large Data Sets

The Large Data Sets Working Group is dedicated to create the tooling and the testbed necessary to make sure that IPFS is capable of handling large datasets and that the workflows match or improve on what are the expectations from current industry standards.

Responsibilities include:

- Interact directly with organizations that use IPFS for large datasets
- ipfs-pack
- Data Together initiative

#### IPFS Cluster

The IPFS Cluster Working Group is the team implementing IPFS Cluster.

Responsibilities include:

- Design and Implement IPFS Cluster.

## Other not yet classified as a working group

Areas of Work that haven't been formalized as a Working Group

The following bodies of work haven't been structure into a working group.

- InterPlanetary TestLab
- IPFS Infrastructure
- Porcelain on top of IPFS
- libp2p internals
- multiformats
- IPLD as a project
