
Equipment
-------------

* [equipmentUUID](#equipmentuuid)
* [Equipment name](#equipment-name-1)
* [Equipment identifier](#equipment-identifier-1)
* [Equipment type](#equipment-type-1)
* [Equipment description](#equipment-description-1)
* [Equipment organisation](#equipment-organisation-1)
* [Equipment contact](https://github.com/JiscRDSS/rdss-canonical-data-model/tree/master/properties/Contact)

------------

##equipmentUUID
###Description
The unique ID given to the equipment 
###Derivation
System
###Mapping
###Obligation
Mandatory
###Occurence
Once
###Content 
String
###Example
0459461c-c902-11e6-9d9d-cec0c932ce01
------------

##Equipment name
###Description
The manufacturer name of the equipment
###Derivation
http://equipment.data.ac.uk/
###Mapping
###Obligation
Mandatory
###Occurence
Once
###Content 
Text
###Example
Beckman Coulter Optima MAX-XP benchtop ultracentrifuge

------------

##Equipment identifier  
###Description
###Derivation
Primary Key
###Mapping
###Obligation	
###Occurence	
###Content 
text
###Example
TBC

------------

##Equipment type  
###Description
The type of equipment.
###Derivation
http://equipment.data.ac.uk/
###Mapping
###Obligation
Recommended
###Occurence
Once
###Content
Text (can be become a Controlled Vocabulary if enough standardisation)
###Example
Fluorescence Spectrometer

------------

##Equipment description  
###Description
Decription of the equipment.
###Derivation
http://equipment.data.ac.uk/
###Mapping
###Obligation	
Optional
###Occurence
Once
###Content 
Text
###Example
Benchtop ultracentrifuge that runs at up to 150,000 RPM (2,500 revolutions per second). With full-color touch screen for monitoring and control. 

------------

##Equipment organisation  
###Description
The organisation to which the equipment is assigned.
###Derivation
[Organisation](https://github.com/JiscRDSS/Metadata/tree/master/properties/Agent/Organisation)
###Mapping
Organisation
###Obligation
Mandatory
###Occurence
Once
###Content 
University of Sheffield
###Example

------------

##Equipment contact  
###Description
The named contact for the equipment
###Derivation
[Contact](https://github.com/JiscRDSS/rdss-canonical-data-model/tree/master/properties/Contact)
###Mapping
Person Contact
###Obligation
Optional
###Occurence
Once
###Content 
###Example

------------
