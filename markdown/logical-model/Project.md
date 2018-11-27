# Project





## projectPerson 


## projectGroup 


## projectUUID 1 
# projectUUID

#### Description
The unique ID given to the project.

#### Derivation
System

#### Mapping

#### Obligation
Mandatory

#### Occurrence
Once

#### Content 
String

#### Example
0459461c-c902-11e6-9d9d-cec0c932ce01

## projectIdentifier 1..* 
# projectIdentifier

#### Information about this property is available in the Identifier entity.

## projectName 1 
# projectName

#### Description
First title given to the Project.

#### Derivation
dc:title

#### Obligation	
Mandatory

#### Occurrence	
Non-repeatable

#### Content 
String

#### Example
Brent Knoll camp digital mapping 

## projectDescription 1 
# projecttDescription

#### Description
Text summary explaining the project.

#### Derivation
Datacite v.4

#### Obligation	
Mandatory

#### Occurrence	
Non-repeatable

#### Content 
String

#### Example
Full digital photography mapping of Brent Knoll using UAVs.

## projectCollection 1..* 
# projectCollection

#### Further information about this property is available in the Collection entity.

## projectGrant 0..* 
# projectGrant

#### Grants (if any) associated with the project.

#### Further information about this property is available in the Grant entity.

## projectStart 1 
# projectStart

#### Description
The time at which the project begins.

#### Derivation
CERIF 

#### Mapping

#### Obligation	
Optional

#### Occurence
Once

#### Content 
Timestamp

#### Example
yyyy-mm-dd hh:mm:ss

## projectEnd 1 
# projectEnd

#### Description
The time at which the project ends.

#### Derivation
CERIF 

#### Mapping

#### Obligation	
Optional

#### Occurence
Once

#### Content 
Timestamp

#### Example
yyyy-mm-dd hh:mm:ss
