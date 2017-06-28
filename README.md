# Data model documentation store

The data model folder contains the latest version for the [alpha service](https://github.com/JiscRDSS/rdss-canonical-data-model/tree/master/Data-Model/Diagrams/alpha-model). This folder also contains a folder for the concept model. The concept model is for **background information only**.

The [properties](https://github.com/JiscRDSS/rdss-canonical-data-model/tree/master/properties) folder contains information about the metadata properties present in the data model - including cardinality, derivation and description. This documentation is **work in progress** and is being updated regularly as the data model develops.

## Versioning

Current version:&nbsp;&nbsp;&nbsp;&nbsp;`1.0.0`.

Releases of this data model can be found under [Releases](https://github.com/JiscRDSS/rdss-message-api-docs/releases). Vendors **MUST** implement against a release - all other branches are considered in a constant state of flux and **MAY** change at any time.

The versioning scheme of this data model follows [Semantic Versioning 2.0.0](http://semver.org/spec/v2.0.0.html) (also known as SemVer). Using SemVer, the version number is given in the format of `MAJOR.MINOR.PATH`, where:

- `MAJOR` version changes contain non-compatible API changes.
- `MINOR` version changes contain backwards compatible enhancements.
- `PATCH` version changes contain backwards compatible bugfixes.

Vendors implementing this specification **SHOULD** make a best effort to implement all `MINOR` and `PATCH` changes as and when they are made available. The implementation and release of `MAJOR` changes however **MUST** be coordinated with maintainers of the messaging system to ensure compatibility between this data model and the messaging system itself.
