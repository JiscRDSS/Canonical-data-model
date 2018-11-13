
# RDSS Concept Model

The file in this folder can be viewed using [StarUML](http://staruml.io/).

Links and additional information are being added to this document over time.

## Background

As part of the the Research Data Shared Service, I was asked to devise a data model which could be understood to underpin the processes for which the Shared Service project seeks to provide an infrastructure. Metadata requirements from across this landscape were considered - current Research Information Systems, repositories etc. The idea was to simplify these processes into activities that a researcher performs with the desire to capture metadata around these processes. Capture at the point of creation and the use of persistent identifiers were both strong drivers in this model and are reflected in the architecture. Key requirements such as integration of research objects (publications, datasets and software) and the avoidance of re-keying information (details pulled through PiDs, automatic creation and transit of metadata from DMPs and equipment) are central to the design. To this end, the Project entity is also an important part of the model. This is an intellectual asset that centralises many of the material and non-material processes across the time frame of the project (generating collection level data and metadata).

The original metadata framework arose from the work I did on the Jisc UK Research Data Discovery Service. Although the main focus of the fields described in this work covered Findability, there were other elements considered such as licencing and access. The FAIR principles were important aspirational beacons during the development work, although it generally understood that some elements of the principles are currently more developed than others. The [UKRDDS profile (v1.1)](https://docs.google.com/document/d/1lGQoj8ji8xSGZlTWU1VzK8XyIczu5MDVnwxfJATIbd8/edit?usp=sharing) is mapped to Dublin Core, MODS, Datacite (3.1 & 4), ADS, GEMINI2.2, DDI2.5, CERIF and schema.org. More mappings are underway.

## Distinction between the Logical model & Concept model

The concept model work was undertaken to work out a combination of entities that are common to research data management models and to connect them in a way that made sense within a researcher workflow. The concept model is high level and designed to show the basic building blocks of what a research data management service might look like. This was a guide in order to promote debate and direction about the direction of the data model for the service. It was not complete or exhaustive but a reflection of the frameworks studied to inform thinking.

The alpha logical model is the data model that underpins the Research Data Shared Service alpha version. This is a more worked through, coirrectly annoted model of the entities and relationships that describe the service and its functions. This data model gives a more complete picture of the metadata involved by going into more explicit detail about properties, their relationships and cardinalities. The development of the alpha model is informed by the MVP (what is expected to be delivered by the alpha service), use cases, and feedback from pilot institutions and vendors.

The model provides a template from which software can be created. This blueprint informs the decision making behind the code and informs the messages that pass from software to adaptors and vice versa.

For more information about how the different models can be used in software development, please take a look at:

* [Data modelling levels](http://www.1keydata.com/datawarehousing/data-modeling-levels.html)
* [Conceptual models](https://www.visual-paradigm.com/support/documents/vpuserguide/3563/3564/85378_conceptual,l.html)
* [Conceptual, logical and physical models](http://www.datamodel.com/index.php/articles/what-are-conceptual-logical-and-physical-data-models/)

More information about a [canonical data model](http://www.enterpriseintegrationpatterns.com/patterns/messaging/CanonicalDataModel.html)

### Schemas and models consulted

This data model was heavily influenced by the DataMED [DATS](https://docs.google.com/document/d/1hVcYRleE6-dFfn7qbF9Bv1Ohs1kTF6a8OwWUvoZlDto/edit#) (work of the [BD2K](https://datascience.nih.gov/bd2k) project in the USA.
The iterative and important attribution of standards is an essential part of any life sciences data model. Although the RDSS seeks a more generic route, I considered it important to use standards where possible and for the allocation of those to be captured and reultiised for future dataset publication. The DATS work seeks to find a data equivalent for the [JATS](http://www.niso.org/apps/group_public/download.php/15933/z39_96-2015.pdf) (Journal Article Tag Suite) standard of markup. It is also mapped to [schema.org](http://schema.org/)

**[PCDM](https://github.com/duraspace/pcdm/wiki)**

The Portland Common Data Model was very important when making desicions about the level to which metadata could be attributed. This was a key discussion area in the Research Data Discovery Service project and the PCDM was critical in resolving issues about the file level to which metadata could sensibly be attributed. The three level model that the PCDM offers, ranging from bitstream and access metadata at file level up to descriptive metadata at a higher complexity level (such as file set and collection, which can both stand in for dataset) sits alongside the the Project and dataset instances in the RDSS model.

PCDM makes much use of the [EBUcore](https://tech.ebu.ch/MetadataEbuCore) ontology, which has been included as the source for many file level [attributes](https://github.com/JiscRDSS/Metadata/blob/master/properties/File/file.md).

**Preservation models**

[PREMIS](http://www.loc.gov/standards/premis/v3/)

An evaluation of PREMIS metadata fields required was made from the work of [Kirsty Lee](https://twitter.com/thebitgardener), digital archvivst at the University of Edinburgh. The dataset captured for her [blog post](http://libraryblogs.is.ed.ac.uk/bitsandpieces/2016/01/13/archivematica-youre-the-one-that-i-want/) on evaluating Archivematica for PREMIS metadata was used as the base point for creating a [diagram](https://github.com/JiscRDSS/rdss-canonical-data-model/blob/master/Data-Model/Diagrams/Concept-model/Preservation%20data%20model%20image.png) for expected preservation metadata. This deals with fields only, not the workflow.

[PROV-O](https://www.w3.org/TR/2013/REC-prov-dm-20130430/)

PROV-O was consulted as an alternative to PREMIS and was found to be compatible with the entities in the Data Model as it is. The main point of reference was the [Agents and Responsibility Overview](https://www.w3.org/TR/2013/REC-prov-dm-20130430/#figure-component3) which identifies Person, Organisation and Software as the primary agents. As with PREMIS, the relevant set of activity metadata will have to built up from the implementation case. This can be expanded upon as user requirements demand.

One of the appealing aspects of PROV-O was the pre-exisiting [mapping](https://www.w3.org/TR/2013/NOTE-prov-dc-20130430/#list_of_direct_terms_props) to Dublin Core, offering a simple (although structured) approach to the metadata.

The managed metadata folder for Preservation will be populated over the coming weeks.

**CRIS**

The [CERIF](http://www.eurocris.org/ontologies/cerif/1.3/#) ontology was very important in understanding the central role of the project within the data model and influenced the inclusion of FOAF relational attributes for Person and Organisation. The Project entity in the data model should resemble / map to CERIF. The presence of provenance in CERIF was also a useful guide.  

**Jisc metadata standards**

Currently, the RDSS data model, although linked to the publication output that might be linked to the dataset, does not have a comprehensive development of this section. This is due to future work that will be dedicated to joining up with the work that has already been done on tehcnology such as RIOXX and the publications router. Where metadata has been accessible, I have implemented the fields.

[RIOXX](http://www.rioxx.net/profiles/v2-0-final/)
A REF compliance checker that relies on relatively few metadata fields to describe a publication. RIOXX is aligned to OpenAIRE and Research Excellence Framework submission metadata)

[Equipment.data](http://equipment.data.ac.uk/uniquip)
A rich metadata set that allows pieces of experimental equipment to be identified individually.

## Description

## Classes, values, properties

**Research objects** (orange)

- Dataset
- Publication
- Software

**Material assets** (blue)

- Person
- Organisation
- Storage
- Material
- Equipment

**Information assets** (green)

- Project
- Grant
- DMP
- Standards
- Data acquisition
- Dimensions
- Rights
- Access
