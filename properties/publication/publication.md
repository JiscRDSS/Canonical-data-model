#Publication

###[free to read](#free-to-read-1)
###[license ref](#license-ref-1)	
###[publication version](https://github.com/JiscRDSS/Metadata/blob/master/properties/publication/publication%20version.md)



-------------------------------

##Free to read  

###Description
This is defined in the NISO Open Access Metadata and Indicators. This element does not take a value - the semantics of ali:free_to_read are conveyed by its presence or absence. This element may be modified by two optional attributes:
start_date
end_date
Each of these attributes, if present, takes a date value which MUST be encoded using [ISO 8601](http://www.iso.org/iso/home/standards/iso8601.htm  (post–2004 versions) which follows the following format: YYYY-MM-DD. 

###Derivation
RIOXX

###Mapping
ali:free_to_read

###Obligation	
Optional

###Occurence	
Non-repeatable

###Content 
string

###Example
ali:free_to_read start_date="2013-03-28" end_date="2014-04-30"
ali:free_to_read start_date="2013-03-28"
ali:free_to_read
The absence of a start_date attribute implies that the meaning conveyed by the ali:free_to_read element is current and immediate, unless an end_date attribute which is a date in the subjective past, is present in the element.


##license ref	

###Description
This is defined in the NISO Open Access Metadata and Indicators. This element MUST take an HTTP URI for its value. This HTTP URI MUST point to a resource which expresses the license terms specifying how the resource may be used.

This element MUST include the attribute:

start_date
This attribute takes a date value which MUST be encoded using ISO 8601 (post–2004 versions) which follows the following format: YYYY-MM-DD.

###Derivation
RIOXX

###Mapping
ali:license_ref	

###Obligation	
Mandatory

###Occurence	
Repeatable

###Content 
http:URI

###Example

ali:license_ref start_date="2015-02-17">http://creativecommons.org/licenses/by/4.0</ali:license_ref
This approach allows the expression of 'embargoes', where a particular license takes effect at a date in the subjective future.

In the absence of any other license, the copyright holder reserves all rights automatically. As a convenience, RIOXX provides two URLs which may be used to explicitly convey this state:

http://www.rioxx.net/licenses/all-rights-reserved
http://www.rioxx.net/licenses/under-embargo-all-rights-reserved


##Coverage

###Description
 

###Derivation
Dublin core

###Mapping
dc:coverage

###Obligation	
Optional

###Occurence	
Repeatable

###Content 
Geographical or temporal information about the publication. (Pull from Geolocation / Temporal in dataset record?)
###Example


##Description 

###Description
A description of the content of the resource using free text. It is RECOMMENDED that an English language abstract be used where available. HTML or other markup tags SHOULD NOT be included in this field.

###Derivation
dc:description

###Mapping
[dataset:description](https://github.com/JiscRDSS/Metadata/blob/master/properties/Dataset/Description/description.md)

###Obligation	
Mandatory

###Occurence	
Non-repeatable

###Content 

String
###Example


