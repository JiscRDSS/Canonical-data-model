# Licence


## licenceName 0..1 
# licenceName 

#### Description
Name of allocated licence.

#### Derivation
Datacite

#### Mapping
dc:rights
datacite:licence

#### Obligation	
Mandatory

#### Occurence	
Non-repeatable

#### Content 
String

#### Example
CC-BY-4.0

## licenceIdentifier 1 
# licenceIdentifier

#### Description
Identifier for license named.

#### Derivation
Datacite

#### Mapping


#### Obligation	
Mandatory

#### Occurence	
Non-repeatable

#### Content 
http:URI

#### Validation

### Example
https://creativecommons.org/licenses/by/4.0/

## licenceStartDate 0..1 
# licenceStartDate

#### Description
Start date of applied licence, used specifically for objects under embargo.

#### Derivation
RIOXX v2.0

#### Mapping
dc:rights
datacite:licence

#### Obligation	
Optional (but Mandatory for any object that has to be RIOXX compliant)

#### Occurence	
Non-repeatable

#### Content 
Timestamp ISO 8601

#### Example
YYYY-MM-DD

## licenceEndDate 0..1 
# licenceEndDate

#### Description
End date of applied licence, used specifically for objects under embargo.

#### Derivation
RIOXX v2.0

#### Mapping
dc:rights
datacite:licence

#### Obligation	
Optional

#### Occurence	
Non-repeatable

#### Content 
Timestamp ISO 8601

#### Example
YYYY-MM-DD
