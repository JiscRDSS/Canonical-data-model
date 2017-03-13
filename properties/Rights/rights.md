
#Rights (1..*)
Package of information pertaining to the rights of an entity. Used by `publicationRights`, `fileRights`, `softwareRights`, `datasetRights`.


* [`rightsStatement`](#rightsstatement)
* [`rightsHolder`](#rightsholder)
* [`Licence`](https://github.com/JiscRDSS/rdss-canonical-data-model/blob/master/properties/Rights/licence.md)
* [`Access`](https://github.com/JiscRDSS/rdss-canonical-data-model/blob/master/properties/Rights/access.md)

-----------------------------------------


##`rightsStatement`  

####Description
Text that specifies restraints on access / reuse (IPR, ethics, copyright)

####Derivation
UKRDDS profile

####Mapping
dc:rights
premis:rightsStatement

####Obligation	
Mandatory

####Occurence	
Repeatable

####Content 
String

####Example
-------------------------------------------

##`rightsHolder` 

####Description
A person or organization owning or managing rights over the resource. This field should be used if the rights holder differs from the publisher.

####Derivation
DCMI
http://purl.org/dc/terms/rightsHolder

####Mapping
dc:rightsHolder

####Obligation	
Mandatory

####Occurence	
Repeatable

####Content 
String

####Example
