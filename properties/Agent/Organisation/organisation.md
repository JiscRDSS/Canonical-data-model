#Organisation

###[organisationUUID](#organisationuuid)
###[organisationName](#organisationname)
###[organisationIdentifier](organisationidentifier)
###[organisation contact](https://github.com/JiscRDSS/rdss-canonical-data-model/blob/master/properties/Agent/Organisation/contact.md)
###[organisationType](#organisationtype)
###[organisationRole](#organisationrole)
----------------------------------------------

##organisationUUID
###Description
Unique identifier for the organisation within the data model
###Derivation
system
###Mapping
None
###Obligation	
Mandatory
###Occurence	
Once
###Content 
String
###Example
0e7e9878-aae1-4dad-8ef6-9c74542cd7e1
----------------------------------------------

##Organisation Name 
###Description
The name of the organisation.
###Derivation
Common
###Mapping
###Obligation	
###Occurence	
###Content 
###Example


##Organisation identifier
###Description
Identifier associated with the organisation.
###Derivation
Various
###Obligation	
Optional
###Occurence	
Repeatable
###Content 
http:URI 
###Example / CV value
ukprn/10007814

##Organisation identifier scheme 
###Description
The scheme/domain to which the identifier belongs.
###Derivation
Ringgold ISNI, UKPRN
###Obligation	
Mandatory if organisation identifier is present.
###Occurence	
Non-repeatable
###Content	
Text
###Example / CV value
UKPRN

##Organisation type
###Description
###Derivation
###Mapping
###Obligation	
###Occurence	
###Content 
Controlled vocabulary
###Example

##Controlled Vocabulary Terms
Term | Source
-----|-------
