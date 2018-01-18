# File
# Date Modified 

### Description
Indicate the date at which the media resource has been modified.

### Derivation
ebucore:dateModified
http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#dateModified


###Mapping
nfo:fileLastModified, dct:modified

### Obligation	
Mandatory

### Occurence	
Non-repeatable

### Content 
ISO8601 dateTime

### Example
2013-11-29T13:56:46-04:00









## datasetFile 



## fileStorageType 


## fileUUID 1 
# fileUUID

#### Description
The unique ID given to the file. 

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

## fileIdentifier 1 


## fileName 1 
#  fileName

#### Description
The name of the file containing the resource.

#### Derivation
http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#filename

#### Mapping
nfo:fileName, premis:hasOriginalName

#### Obligation	
Mandatory

#### Occurence	
Non-repeatable 

#### Content 
xsd:string 

#### Example
yul-269695.OBJ.pdf

## fileSize 1 
# fileSize 

#### Description
to provide the size of a MediaResource in bytes 

#### Derivation
http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#fileSize

#### Mapping 
nfo:fileSize, dct:extent, premis:hasSize

#### Obligation	
Mandatory

#### Occurence	
Non-repeatable

#### Content 
xsd:integer 

#### Example
709162

## fileLabel 0..1 
# fileLabel 

#### Description
Descriptive label 

#### Derivation
http://www.w3.org/2000/01/rdf-schema#label

#### Mapping

#### Obligation	
Optional

#### Occurence	
Non-repeatable

#### Content 
xsd:string

#### Example
Unmodified original


## fileDateCreated 0..1 
# fileDateCreated  

#### Description
Creation date of the resource. 

#### Derivation
http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#dateCreated

#### Mapping
nfo:fileCreated, dct:created 

#### Obligation	
Optional

#### Occurence	
Non-repeatable

#### Content 
ISO8601 dateTime

### Example
2013-11-29T13:56:46-04:00

## fileRights 0..1 
# fileRights

#### Information about this property is available in the rights entity.

## fileChecksum 1..* 
# fileChecksum  

#### Description
The output of the message digest algorithm. 

#### Derivation
http://www.loc.gov/premis/rdf/v1#hasMessageDigest

#### Mapping
ebucore:hash, nfo:hasHash

#### Obligation	
Recommended 

#### Occurence	
Repeatable

#### Content
xsd:string

#### Example
7c9b35da4f2ebd436f1cf88e5a39b3a257edf4a22be3c955ac49da2e2107b67a1924419563

## fileFormatType 0..1 
# fileFormatType  

#### Description
Category or Genre of the File

#### Derivation
http://www.w3.org/1999/02/22-rdf-syntax-ns#type
http://purl.org/coar/resource_type/ 
datacite:resourceTypeGeneral 

#### Mapping
datacite:resourceTypeGeneral
rdf:Resource
pcdm:Document

#### Obligation	
Recommended

#### Occurence	
Non-repeatable

#### Content
Controlled Vocabulary

#### Example
software
http://purl.org/coar/resource_type/c_5ce6

## fileCompositionLevel 1 
# fileCompositionLevel  

#### Description
An indication of whether the object is subject to one or more
processes of decoding or unbundling.

Composition level will generally be supplied by the repository, which
should attempt to supply this value automatically. If the object was
created by the repository, the creating routine knows the composition
level and can supply this metadata. If the object is being ingested by
the repository, repository programs will have to attempt to identify
the composition level from the object itself or from externally
supplied metadata.

#### Derivation
PREMIS

#### Mapping

#### Obligation	
Mandatory

#### Occurence	
Non-repeatable

#### Content
Integer

#### Example
0

## filehasMimeType 0..1 
# hasMimeType  

#### Description
 The MIME type of the file.

#### Derivation
http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#hasMimeType

#### Mapping
dct:format, pronom:internetMediaType

#### Obligation	
Recommended 

#### Occurence	
Non-repeatable

#### Content 
xsd:string

#### Example
application/pdf

## fileDateModified 1..* 
#  fileDateModified

#### Description
Date and time that the file was last modified.

#### Derivation
pcdm:dateModified
http://www.ebu.ch/metadata/ontologies/ebucore/ebucore#dateModified

#### Mapping
nfo:fileLastModified, dct:modified

#### Obligation
Mandatory

#### Occurrence
Repeatable

#### Content 
ISO8601 dateTime

#### Example
2013-11-29T13:56:46-04:00

## filePUID 0..* 
# filePUID 

#### Description
Pronom ID to uniquely identify file format

#### Derivation
PRONOM

#### Mapping
premis:hasFormatName + premis:hasFormatVersion
premis:hasFormatRegistryKey (?)


#### Obligation	
Optional

#### Occurence	
Non-repeatable

#### Content 
String

#### Example
fmt/20

## fileUse 1 
# fileUse

#### Description
relational value between file and object in PCDM heircharchy 

#### Derivation
PCDM

#### Mapping
 

#### Obligation	
Optional
Recommended for preservation

#### Occurence	
Non-repeatable

#### Content 
[Controlled Vocabulary](#controlled-vocabulary-terms)

#### Example
Service file

## Controlled Vocabulary Terms

Value | Description 
------|------------
Original File | the original file uploaded by the user
Thumbnail Image | low resolution placeholder image
Extracted Text | text extracted from documents/OCR
Preservation Master File | best quality file in a format appropriate for long-term preservation
Intermediate File | high quality representation of the Object, appropriate for generating derivatives or other additional processing
Service File | a format generated for serving to users, such as the PDF generated from a Word/LaTeX source file, MP3 generated from a WAV file, JPEG generated from a TIFF, etc.
Transcript | text representation that can be a substitute or complement for accessibility purposes, such as a transcript, subtitles, or closed captions

## filePreservationEvent 1..* 
# fiePreservationEvent

#### Further information about this property is available in the PreservationEvent entity.

## fileUploadStatus 1 
# fileUploadStatus

#### Description
Upload status of the file using three term vocabulary.

#### Derivation
Created for the canonical data model.

#### Mapping
None

#### Obligation	
Mandatory

#### Occurence	
Non-repeatable

#### Content
Controlled Vocabulary

#### Example

uploadStarted
uploadComplete
uploadAborted

## fileStorageStatus 1 
# fileStorageStatus

#### Description
Status of the file within the RDSS storage system.

#### Derivation
Created for the canonical data model.

#### Mapping
None

#### Obligation	
Mandatory

#### Occurence	
Non-repeatable

#### Content
Controlled Vocabulary

#### Example

online
nearline
offline

## fileLastDownloaded 0..1 
#  fileLastDownloaded

#### Description
Date and time that the file was last downloaded.

#### Derivation
Created for the canonical data model based on user stories and requirements for funder compliance.

#### Mapping

#### Obligation
Optional

#### Occurrence
Non-repeatable

#### Content 
ISO8601 dateTime

#### Example
2013-11-29T13:56:46-04:00


## fileTechnicalAttributes 0..* 


## fileStorageLocation 1 
## File Storage Location

### Description
The location or address of a File on a storage system.

### Derivation
http://www.loc.gov/standards/premis/premis.xsd/v3/file/storage/contentLocation/contentLocationValue

### Obligation
Mandatory

### Occurence
Non-repeatable

// if this is changed to allow for repeatable occurence then a new StorageLocation entity should be created in the CDM logical model with LocationValue and LocationType as properties. 

### Example
* s3://rdss-prod-figshare-0132/bird-sounds.mp3
* http://example.com/filestore/a385948a-2c70-11e7-93ae-92361f002671

 


## fileStorageType 1 

## File Storage Type

### Description
Information about the protocol or scheme used in conjunction with the File Storage Location value. Required to make valid references and read requests to the File&#39;s storage location.

### Derivation
http://www.loc.gov/standards/premis/premis.xsd/v3/file/storage/contentLocation/contentLocationType

### Obligation
Mandatory

### Occurence
Non-repeatable

### Content
Controlled vocabulary

####Example
* S3
* HTTP
