#Coverage
Geographical and temporal information about the entity.
Used in `publicationCoverage` and `datasetCoverage`

###`geospatialCoverage`

- [`geolocationPoint`](#geolocation-point)
- [`geolocationPolygon`](#geolocationbox)
- [`geolocationPlace`](#geolocationplace)

###[`temporalCoverageStart`](#`temporalCoverageStart`-1)
###[`temporalCoverageEnd`](#`temporalCoverageEnd`-1)
------------------------

##`geolocationPoint`  
####Description
Geographical info where applicable.
###Derivation
Datacite / Gemini
###Mapping
###Obligation
Optional
###Occurence
Non-repeatable
###Content 
coordinates (ISO 6709)
###Example
51°15′14″N 2°56′46″W

##`geolocationPolygon`
###Description
Geographical info where applicable.
###Derivation
INSPIRE
###Mapping
###Obligation
Optional
###Occurence	
###Content 
###Example 
$$dW0025813$$eW0025631$$fN0511556$$gN0511425

##`geolocationplace`
###Description
Geographical info where applicable.
###Derivation
INSPIRE
###Mapping
###Obligation
Optional
###Occurence	
###Content 
###Example  

---------------------

##`temporalCoverageStart`
###Description
The time span to which the dataset is associated.
###Derivation
RIF-CS
###Mapping
###Obligation	
Optional
###Occurence
Once
###Content 
Timestamp
###Example
yyyy-mm-dd hh:mm:ss

---------------------

##`temporalCoverageEnd`
###Description
The time span to which the dataset is associated.
###Derivation
RIF-CS
###Mapping
###Obligation	
Optional
###Occurence
Once
###Content 
Timestamp
###Example
yyyy-mm-dd hh:mm:ss

