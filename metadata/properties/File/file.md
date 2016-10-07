#File
###Description
Properties associated with files

------------

###[File Name](#file-name-1)
###[File size](#file-size-1)
###[Label](#label-1)
###[Date Created](#date-created-1)
###[File Hash](#file-hash-1)
###[MD5 checksum](#md5-cheksum-1)
###[File Format Type](#file-format-type-1)
###[Has Mime Type](#has-mime-type-1)  
###[Date Modified](#date-modified-1) 
###[PUID](#puid-1)
###[File Use](#file-use-1)

------------

##File Name
###Description
The name of the file containing the resource.
###Derivation
http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#filename
###Mapping
nfo:fileName, premis:hasOriginalName
###Obligation	
Mandatory
###Occurence	
Non-repeatable 
###Content 
xsd:string 
###Example
yul-269695.OBJ.pdf

------------

##File size 
###Description
to provide the size of a MediaResource in bytes 
###Derivation
http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#fileSize
###Mapping 
nfo:fileSize, dct:extent, premis:hasSize
###Obligation	
Mandatory
###Occurence	
Non-repeatable
###Content 
xsd:integer 
###Example
709162

------------

##Label 
###Description
Descriptive label 
###Derivation
http://www.w3.org/2000/01/rdf-schema#label
###Mapping
###Obligation	
Optional
###Occurence	
Non-repeatable
###Content 
xsd:string
###Example
Unmodified original

------------

##Date Created  
###Description
Creation date of the resource. 
###Derivation
http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#dateCreated
###Mapping
nfo:fileCreated, dct:created 
###Obligation	
Optional
###Occurence	
Non-repeatable
###Content 
ISO8601 dateTime
###Example
2013-11-29T13:56:46-04:00

------------

##File Hash  

###Description
The output of the message digest algorithm. 

###Derivation
http://www.loc.gov/premis/rdf/v1#hasMessageDigest

###Mapping
ebucore:hash, nfo:hasHash

###Obligation	
Recommended 

###Occurence	
Repeatable

###Content
xsd:string
###Example
7c9b35da4f2ebd436f1cf88e5a39b3a257edf4a22be3c955ac49da2e2107b67a1924419563

------------

##MD5 checksum  

###Description
The MD5 checksum of the file content

###Derivation
http://id.loc.gov/vocabulary/preservation/cryptographicHashFunctions/md5

###Mapping
 

###Obligation	
Optional 

###Occurence	
Non-repeatable

###Content 
###Example
d3b07384d113edec49eaa6238ad5ff00

------------

##File Format Type  

###Description
Category or Genre of the File

###Derivation
http://www.w3.org/1999/02/22-rdf-syntax-ns#type
http://purl.org/coar/resource_type/ 
datacite:resourceTypeGeneral 


###Mapping
datacite:resourceTypeGeneral
rdf:Resource
pcdm:Document

###Obligation	
Recommended

###Occurence	
Non-repeatable

###Content
Controlled Vocabulary
###Example
software
http://purl.org/coar/resource_type/c_5ce6

------------

##Has Mime Type  

###Description
 

###Derivation
http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#hasMimeType

###Mapping
dct:format, pronom:internetMediaType

###Obligation	
Recommended 

###Occurence	
Non-repeatable

###Content 
xsd:string
###Example
application/pdf

------------

##Date Modified 

###Description
Indicate the date at which the media resource has been modified.

###Derivation
ebucore:dateModified
http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#dateModified


###Mapping
nfo:fileLastModified, dct:modified

###Obligation	
Optional 

###Occurence	
Non-repeatable

###Content 
ISO8601 dateTime
###Example
2013-11-29T13:56:46-04:00

------------

##PUID 

###Description
Pronom ID to uniquely identify file format

###Derivation
PRONOM

###Mapping
premis:hasFormatName + premis:hasFormatVersion
premis:hasFormatRegistryKey (?)


###Obligation	
Optional

###Occurence	
Non-repeatable

###Content 
###Example
fmt/20

------------

##File Use

###Description
relational value between file and object in PCDM heircharchy 

###Derivation
PCDM

###Mapping
 

###Obligation	
Optional
Recommended for preservation

###Occurence	
Non-repeatable

###Content 
[Controlled Vocabulary](#controlled-vocabulary-terms)
###Example
Service file

##Controlled Vocabulary Terms

Value | Description 
------|------------
Original File | the original file uploaded by the user
Thumbnail Image | low resolution placeholder image
Extracted Text | text extracted from documents/OCR
Preservation Master File | best quality file in a format appropriate for long-term preservation
Intermediate File | high quality representation of the Object, appropriate for generating derivatives or other additional processing
Service File | a format generated for serving to users, such as the PDF generated from a Word/LaTeX source file, MP3 generated from a WAV file, JPEG generated from a TIFF, etc.
Transcript | text representation that can be a substitute or complement for accessibility purposes, such as a transcript, subtitles, or closed captions
