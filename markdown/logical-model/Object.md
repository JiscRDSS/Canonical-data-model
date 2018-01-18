# Object










## object 



## instantiationOf 


## hasFile 



## objectOrganisationRole 


## aggregates 


## objectPreservationEvent 


## hasFile 



## objectUUID 1 
# objectUUID

#### Description
The unique ID given to the object.

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

## objectTitle 1 
# Title

#### Description
First title given to the entity.

#### Derivation
dc:title

#### Obligation	
Mandatory

#### Occurence	
Repeatable

#### Content 
String

#### Example
Aerial survey data of Brent Knoll camp

## objectPersonRole 1..* 
# objectPersonRole

#### Persons and the role(s) they performed on the production of the object.

#### Further information about this property is available in the PersonRole entity.

## objectDescription 1 
# objectDescription

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
DJI Phantom 3 Standard with 2.7K Camera and 3-Axis Gimbal

## objectRights 1..* 
# objectRights

#### Information about this property is available in the rights entity.

## objectDate 1..* 
# objectDate

#### Information about this property is available in the Date entity.

## objectKeywords 0..* 
# objectKeywords

#### Description
Words and terms associated with the object.

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

## objectCategory 0..* 
# objectCategory

#### Description
Term(s) indicating the main subject area of the digital output. Language based on Figshare `category` property.

#### Derivation
dc:subject

#### Obligation	
Optional

#### Occurence	
Repeatable

#### Content 
String

#### Example
History

## objectResourceType 1 
# objectResourceType

#### Description
Type of object being described 

#### Derivation
IRUS (v.2) / CounterC / Datacite

#### Obligation	
Mandatory 

#### Occurence	
Non-repeatable

#### Controlled vocabulary terms with mappings

IRUS-UK item types version 2
Item types recommended in the various guidelines considered (number in brackets refer to the guidelines (list below)

Term | Mapping
-----|-------
Art/Design Item|Designs (3); Non-textual form: Design (5); Art/Design item (8); Design (14); Design (15); Visual Artworks (18); Painting (19); Sculpture (19).
Article|Article (1); Journal articles (3); Journal Article (4); Journal Article Abstract (4); Letter (4); Letter to Editor (4); Contribution to journal: Article (5); Contribution to journal: Meeting abstract (5); Contribution to journal: Letter (5); Contribution to journal: Comment/debate (5); Contribution to journal: Editorial (5); Contribution to specialist publication: Article (5); Contribution to specialist publication: Featured article (5); Contribution to specialist publication: Editorial (5); Contribution to specialist publication: Letter (5); Journal Item (6); Journal Article; Submitted (6); Journal Article (6); Journal Article (7); Journal Item (7); Submitted Journal Article (7); Journal articles (9); Articles (10); Article (11); contributionToPeriodical (11); Article (12); contributionToPeriodical (12); Journal Article (13); Journal Article Abstract (13); Letter (13); Letter to Editor (13); Magazine Article (13); Journal Article (14); Journal Article Abstract (14); Letter (14); Letter to Editor (14); Magazine Article (14); Journal article (15); Journal Article/Review (16); AcademicArticle (17); Article (17); Journal Articles (18); Article (19); BlogPosting (19); NewsArticle (19); ScholarlyArticle (19); MedicalScholarlyArticle (19); TechArticle (19); APIReference (19).
Audio|Audio (1); Sound (2); Audio (10); AudioDocument (17); Audio recording (18); RadioClip (19); RadioEpisode (19); AudioObject (19); RadioSeason (19); RadioSeries (19); Sound (20).
Book|Book (1); Monograph (1); Books (3); Scholarly editions (3); Book (4); Inbook (4); Anthology (4); Monograph (4); Referencebook (4); Textbook (4); Encyclopedia (4); Otherbook (4); Book/Report: Book (5); Book/Report: Anthology (5); Book/Report: Scholarly edition (5); Book (6); Book (7); Scholarly Text (7); Books, sections and chapters (9); Books (10);book (11); book (12); Book (13); Anthology (13); Referencebook (13); Textbook (13); Monograph (13); Encyclopedia (13); Otherbook (13); Authored Book (13); Edited Book (13); Scholarly Edition (13); Book (14); Anthology (14); Monograph (14); Referencebook (14); Textbook (14); Encyclopedia (14); Otherbook (14); Authored Book (14); Edited Book (14); Scholarly Edition (14); Authored book (15); Edited book (15); Scholarly edition (15); Book (16); Book edited (16); Monograph (16); Book (17); EditedBook (17); MultiVolumeBook (17); Books (18); Edited Books (18); Book (19).
Book Section|Book section (1); Chapters (3); Book Chapter Abstract (4); Chapter in Book/Report/Conference proceeding: Chapter (peer-reviewed) (5); Chapter in Book/Report/Conference proceeding: Chapter (5); Chapter in Book/Report/Conference proceeding: Entry for encyclopedia/dictionary (5); Chapter in Book/Report/Conference proceeding: Foreword/postscript (5); Chapter in Book/Report/Conference proceeding: Other chapter contribution (5); Book Item (6); Book Item (7); Books, sections and chapters (9); Book sections (10); bookPart (11); bookPart (12); Book Chapter Abstract (13); Inbook (13); Chapter in Book (13); Encyclopedia Entry (13); Dictionary Entry (13); Book Chapter Abstract (14); Inbook (14); Chapter in Book (14); Encyclopedia Entry (14); Dictionary Entry (14); Chapter in book (15); Book chapter (16); BookSection (17); Book Chapters (18); Encyclopedia Entries (18).
Conference or Workshop Item|Conference item (1); Conferences (3); Posters (3); Conference Proceedings (4); Conference Proceedings Article (4); Poster (4); Presentation (4); Chapter in Book/Report/Conference proceeding: Conference contribution (5); Contribution to conference: Paper (5); Contribution to conference: Poster (5); Contribution to conference: Abstract (5); Contribution to conference: Other (5); Conference Item (6); Conference Paper (6); Conference Poster (6); Conference Item (7); Conference Paper (7); Conference Poster (7); Conference and workshop papers (9); Conference or workshop items (10); conferenceObject (11); conferenceObject (12); conferenceContribution (12); conferenceItem (12); conferenceProceeding (12); conferencePaper (12); conferencePoster (12); Conference Proceedings (13); Conference Proceedings Article (13); Conference Abstract (13); Conference Poster (13); Poster (13); Presentation (13); Conference Contribution (13); Conference Proceedings (14); Conference Proceedings Article (14); Poster (14); Presentation (14); Conference Contribution (14); Conference Abstract (14); Conference Poster (14); Conference contribution (15); Conference/Paper/Proceeding/Abstract (16); Conference (17); Proceedings (17); Workshop (17); Slide (17); Slideshow (17); Conference Papers (18); Conference Abstracts (18); Conference Posters (18).
Dataset|Dataset (1); Dataset (2); Datasets (3); Non-textual form: Data set/Database (5); Datasets (9); Datasets (10); Research data sets and databases (14); Research datasets and databases (15); Data Sets (18); DataCatalog (19); Dataset (19); DataDownload (19); dataset (20).
Exam Paper|Test (14).
Image|Image (1); Image (2); Images (10); Digital or visual media (14); Digital or visual media (15); Image (17); Map (17); Map (19); ImageObject (19); Photograph (19); image (20).
Journal|Journal (4); Contribution to journal: Special issue (5); Contribution to specialist publication: Special issue (5); Journal (13); Journal Issue (13); Journal (14); Journal issue (16); Journal Issue (14); Journal (17); Magazine (17); Periodical (17); Journal Issues (18).
Learning Object|Teaching resource (1); Content-packaged learning objects (9); Course materials (10); Study skills, support and revision materials (10); lecture (11); lecture (12).
Moving Image|Video (1); Multimedia and audio-visual materials (9); Video (10); Radio/TV Program (14); Video Recording (14); Visual Artwork (14); AudioVisualDocument (17); Film (17); Video Recordings (18); TVClip (19); TVEpisode (19); VideoObject (19); Movie (19); TVSeason (19); TVSeries (19); Audiovisual (20).
Music/Musical Composition|Composition (1); Compositions (3); Non-textual form: Composition (5); Composition (10); Composition (14); Musical Composition (14); Composition (15); Musical Compositions (18); Musical Performances (18); MusicVideoObject (19); MusicAlbum (19); MusicRecording (19).

## objectValue 1 
# datasetValue

#### Description
A judgement made via a controlled vocabulary by the administator of the value of a dataset within the repository. This is to align to a tiered storage solution which can make use of escrow storage for datasets judged to be of very high value.

#### Derivation
Created for the data model

#### Obligation	
Mandatory 

#### Occurence	
Non-repeatable

#### Controlled vocabulary terms

normal (default)
high
veryHigh

## objectIdentifier 1..* 
# objectIdentifier

#### Information about this property is available in the Identifier entity.

## objectRelatedIdentifier 0..* 
# objectRelatedIdentifier

#### Information about this property is available in the Identifier entity.

## objectOrganisationRole 1..* 
# objectOrganisationRole

#### Persons and the role(s) they performed on the production of the object.

#### Further information about this property is available in the OrganisationRole entity.

## objectPreservationEvent 0..* 
# objectPreservationEvent

#### Further information about this property is available in the PreservationEvent entity.

## objectFile 0..* 
# objectFile

#### Further information about this property is available in the File entity.
