# Data model documentation store

Information about the latest version of the canonical data model supporting the Jisc Open Research Hub can be found in the [Data-Model](https://github.com/JiscRDSS/rdss-canonical-data-model/tree/master/Data-Model) folder. The [Background](https://github.com/JiscRDSS/rdss-canonical-data-model/tree/master/Data-Model/Background) folder contains the concept model is, which is provided for **background information only**.

UML diagrams in this repository are in the metadata-json format with an `.mdj` extension, and can be viewed using [StarUML](http://staruml.io/).

## Versioning

Current version:&nbsp;&nbsp;&nbsp;&nbsp;`4.0.0`.

Releases of this data model can be found under [Releases](https://github.com/JiscRDSS/rdss-message-api-docs/releases). Vendors **MUST** implement against a release - all other branches are considered in a constant state of flux and **MAY** change at any time.

The versioning scheme of this data model follows [Semantic Versioning 2.0.0](http://semver.org/spec/v2.0.0.html) (also known as SemVer). Using SemVer, the version number is given in the format of `MAJOR.MINOR.PATH`, where:

- `MAJOR` version changes contain non-compatible API changes.
- `MINOR` version changes contain backwards compatible enhancements.
- `PATCH` version changes contain backwards compatible bugfixes.

Vendors implementing this specification **SHOULD** make a best effort to implement all `MINOR` and `PATCH` changes as and when they are made available. The implementation and release of `MAJOR` changes however **MUST** be coordinated with maintainers of the messaging system to ensure compatibility between this data model and the messaging system itself.
