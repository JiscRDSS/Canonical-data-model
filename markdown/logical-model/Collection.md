# Collection




## collection 


## hasObject 


## collectionRights 


## collectionRelatedIdentifier 


## collectionOrganisationRole 


## collectionPersonRole 


## collectionUUID 1 
# collectionUUID

#### Description
The unique ID given to the collection.

#### Derivation
System

###Mapping

###Obligation
Mandatory

###Occurrence
Once
###Content 
String
###Example
0459461c-c902-11e6-9d9d-cec0c932ce01

## collectionName 1 
# collectionName

#### Description
First title given to the collection.

#### Derivation
dc:title

#### Obligation	
Mandatory

#### Occurrence	
Non-repeatable

#### Content 
String

#### Example
Aerial survey data of Brent Knoll camp

## collectionObject 0..* 
# collectionObject

#### Further information about this property is available in the Object entity.

## collectionKeywords 0..* 
# collectionKeywords

#### Description
Words and terms associated with the dataset

#### Derivation
General

#### Mapping
Datacite 3.1  

#### Obligation	
Recommended

#### Occurence	
Repeatable

#### Content 
String

#### Example
drone, 3D map

## collectionCategory 0..* 
# collectionCategory

#### Description
Term(s) indicating the main subject area of the digital output. Language based on Figshare `category` property.

#### Derivation
Figshare data model
dc:subject

#### Obligation	
Optional

#### Occurence	
Repeatable

#### Content 
String

#### Example
History

## collectionDescription 1..* 
# collectionDescription

#### Description
Text summary explaining the publication / dataset / object.

#### Derivation
Datacite v.4

#### Obligation	
Mandatory

#### Occurrence	
Repeatable

#### Content 
String

#### Example
Collection of aerial photography taken using drones in June 2014.

## collectionRights 1..* 
# collectionRights

#### Information about this property is available in the rights entity.

## collectionIdentifier 0..* 
# collectionIdentifier

#### Information about this property is available in the Identifier entity.

## collectionRelatedIdentifier 0..* 
# collectionRelatedIdentifier

#### Information about this property is available in the Identifier entity.

## collectionPersonRole 0..* 
# collectionPersonRole

#### Persons and the role(s) they performed on the production of the collection.

#### Further information about this property is available in the PersonRole entity.

## collectionOrganisationRole 0..* 
# collectionOrganisationRole

#### Persons and the role(s) they performed on the production of the collection.

#### Further information about this property is available in the OrganisationRole entity.



