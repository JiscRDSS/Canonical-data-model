#Agent

* [Agent Name](https://github.com/jiscresearch/sharedService/blob/master/metadata/properties/Agent/Agent%20Name.md)
* [Agent identifier](https://github.com/jiscresearch/sharedService/blob/master/metadata/properties/Agent/Agent%20Identifier.md)
* [Agent identifier scheme](https://github.com/jiscresearch/sharedService/blob/master/metadata/properties/Agent/Agent%20Identifier.md#agent-identifier-scheme)
* [Agent Role](https://github.com/jiscresearch/sharedService/blob/master/metadata/properties/Agent/Agent%20role.md)
* [Agent affiliation](https://github.com/jiscresearch/sharedService/blob/master/metadata/properties/Agent/Agent%20affiliation.md)
* [Agent contact] (https://github.com/jiscresearch/sharedService/edit/master/metadata/properties/Agent/Agent%20Contact.md)

##Description

Agent is the collection of properties which define a person entity involved with the research project. These properties contain identifiers and require the definition of relationships between the agent and other entities.

##Derivation
Agent is a conflation of the creator and contributor fields from the [Datacite](http://schema.datacite.org/) schema. This, hopefully, removes the primacy of creation or authorship and allows any relationship (permitted in vocabulary) to be expressed between the Agent and any other entity in the data model. The inclusion of identifiers is good practice taken from ORCID, Datacite and user requirements (issue [#3](https://github.com/jiscresearch/sharedService/issues/3))  

Please note that Agent as expressed here is not equivlant to premis:Agent as used in the [PREMIS](http://www.loc.gov/standards/premis/v3/) schema.

##Obligation
Mandatory

##Occurrence
Repeatable

