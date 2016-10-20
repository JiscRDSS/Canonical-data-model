#Publication

###[free to read](#free-to-read-1)
###[license ref](#license-ref-1)	

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

<ali:license_ref start_date="2015-02-17">http://creativecommons.org/licenses/by/4.0</ali:license_ref>
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


##description 

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


D

This field may be indexed and its contents presented to people conducting searches. The goal is to 

dc:format	Zero or more	
This refers to the format of the resource. The MIME type of the object pointed to by this RIOXX record’s dc:identifier element MUST be entered here. Note that this element should not be confused with rioxxterms:type

dc:identifier	Exactly one	
This field MUST contain an HTTP URI which is a persistent identifier for the resource. The purpose of this field is, through direct identification of the resource, to allow access to it, therefore it is RECOMMENDED that this identifier should point to the actual resource being described by the RIOXX record (typically a file in MS Word or PDF format), rather than to an intermediary resource such as a repository web page. Note that RIOXX does not require any require particular file format to be used for the resource.

To describe another version of the resource with a different identifier, a completely separate RIOXX record should be created.

dc:language	One or more	
This refers to the primary language in which the content of the resource is presented. The element MAY be repeated if the resource contains multiple languages. Values used for this element MUST conform to ISO 639–3. This offers two and three letter tags e.g. "en" or "eng" for English and "en-GB" for English used in the UK.

dc:publisher	Zero or more	
This element contains the name of the entity, typically a 'publisher', responsible for making the version of record of the resource available. This could be a person, organisation or service.

Where available, the name of the publisher entered here SHOULD be from a controlled list.

dc:relation	Zero or more	
The format of this element MUST be an HTTP URI which points to a related resource, e.g. a research data-set which underpins the resource. An exception to this is the DOI identifying the related ‘version of record’ - this MUST be recorded in the rioxxterms:version_of_record element.

Each related resource MUST appear as a separate instance of the field.

dc:source	Zero or one	
The source label describes a resource from which the resource is derived (in whole or in part). It is RECOMMENDED that the source is referenced using a unique identifier from a recognised system e.g. the unique 8-digit International Standard Serial Numbers (ISSN) assigned to electronic periodicals, or the 13 digit International Standard Book Number (ISBN13) assigned to books. In the latter case, the ISBN13 for the electronic verison of the book SHOULD be used if available.

Use of this element is applicable where the resource is to be published as part of a larger resource. Examples might include a journal article, a conference paper or a chapter of a book, but not a complete book for example.

dc:subject	Zero or more	
The Openaire Guidelines recommend the inclusion of this element.

dc:title	Exactly one	
This refers to the title, and any sub-titles, of the resource. The title should be represented using the original spelling and wording. The RECOMMENDED format for expressing subtitles is:

Title:Subtitle
Note that where the resource is a chapter in a book, the chapter title MUST be entered here, with the ISBN13 of the book being recorded in the dc:source element.

dcterms:dateAccepted	Exactly one	
The date on which the resource was accepted for publication. The date MUST be encoded using ISO 8601 (post–2004 versions) using the following format: YYYY-MM-DD.

rioxxterms:apc	Zero or one	
This element expresses whether or not the resource has an associated 'article processing charge'. The value of this element MUST be one of the following:

paid
partially waived
fully waived
not charged
not required
unknown


rioxxterms:author	One or more	
The author of the resource may be a person, organisation or service, but is most commonly a person. This element SHOULD take an optional attribute called id, which MUST contain an HTTP URI which uniquely identifies the author. Where there is more than one author, a separate rioxxterms:author element MUST be used for each. As many authors may be entered as required. The ideal use of this element is to include both an HTTP URI in the id attribute, and a text string in the body of the element, thus:

<rioxxterms:author id="http-uri-for-this-author-entity">
    name-of-this-author-entity
</rioxxterms:author>
Where the author is a person, the RECOMMENDED format is to add text in the form Last Name, First Name(s), and to include an ORCID ID, if known, in its HTTP URI form, e.g.

<rioxxterms:author id="http://orcid.org/0000-0002-1395-3092">
    Lawson, Gerald
</rioxxterms:author>
Where the author is an organisation, the RECOMMENDED format is to add the official name of the organisation, and to include an ISNI ID, if known, in its HTTP URI form, e.g.

<rioxxterms:author id="http://isni.org/isni/0000000419367988">
    University of Edinburgh
</rioxxterms:author>
Where the rioxxterms:author element appears multiple times for one record, it CAN be assumed that the order is significant, in that the first element describes the 'first named author' of the resource. In order to make this more explicit, an extra attribute, first-named-author, SHOULD be used to indicate which of the rioxxterms:author elements describes the first named author of the resource, thus:

<rioxxterms:author id="http://orcid.org/0000-0002-1395-3092" first-named-author="true">
    Lawson, Gerald
</rioxxterms:author>
rioxxterms:contributor	Zero or more	
This field is designed to describe an entity – for example the name of a person, organisation or service – responsible for making contributions to the content of the resource. As many rioxxterms:contributor elements may be entered as required. This element SHOULD take an optional attribute called id, which MUST contain an HTTP URI which uniquely identifies the contributor. The ideal use of this element is to include both an HTTP URI in the id attribute, and a text string in the body of the element, thus:

<rioxxterms:contributor id="http-uri-for-this-contributor-entity">
    name-of-this-contributor-entity
</rioxxterms:contributor>
Where the contributor is a person, the RECOMMENDED format is to add text in the form Last Name, First Name(s), and to include an ORCID ID, if known, in its HTTP URI form, e.g.

<rioxxterms:contributor id="http://orcid.org/0000-0002-1395-3092">
    Lawson, Gerald
</rioxxterms:contributor>
Where the contributor is an organisation, the RECOMMENDED format is to add the official name of the organisation, and to include an ISNI ID, if known, in its HTTP URI form, e.g.

<rioxxterms:contributor id="http://isni.org/isni/0000000419367988">
    University of Edinburgh
</rioxxterms:contributor>
rioxxterms:project	One or more	
This is designed to collect the project ID(s), issued by the funder(s), that relate to the resource, together with the name and/or global identifier for the funder(s).

The element MUST contain one project ID, an alphanumeric identifier provided by the funder in its original format. In cases where the resource has been funded internally, an appropriate internal code might be used.

The element takes two attributes, funder_name and funder_id. One or both of funder_name and funder_id MUST be supplied.

funder_name

The canonical name of the entity responsible for funding the resource SHOULD be recorded here as text.

funder_id

A globally unique identifier for the funder of the resource SHOULD be recorded here. An HTTP URI MUST be used for this. It is RECOMMENDED that one of the following identifier schemes is used:

an ISNI ID
a DOI (in its HTTP URI form) made available by FundRef
Example

<rioxxterms:project
    funder_name="Engineering and Physical Sciences Research Council"
    funder_id="http://isni.org/isni/0000000403948681"
>
    EP/K023195/1
</rioxxterms:project>
or

<rioxxterms:project
    funder_name="Engineering and Physical Sciences Research Council"
    funder_id="http://dx.doi.org/10.13039/501100000266"
>
    EP/K023195/1
</rioxxterms:project>
Where the resource has been funded by more than one funder a separate rioxxterms:project element MUST be added for each. Similarly, where several project IDs provided by the same funder have been attached to the resource, a separate rioxxterms:project element MUST be added for each.

This means that it is quite normal for a given funder_name, funder_id or project_id to appear in multiple instances of the rioxxterms:project element in a single RIOXX metadata record.

rioxxterms:publication_date	Zero or one	
This element takes the publication date of the resource in the form in which it would be cited. This element is not used in a RIOXX context but allows for a RIOXX record to become a reasonable bibliographic record for the resource. This is a free-text field.

Examples:

<rioxxterms:publication_date>
    2011-02-23
</rioxxterms:publication_date>

<rioxxterms:publication_date>
    Spring, 2010
</rioxxterms:publication_date>
As RIOXX is primarily concerned with such issues as compliance with funders’ mandates and licensing of open access publications, the critical dates for the assertion of compliance are those held in the start_date attributes of the ali:license_ref elements.

rioxxterms:type	One or more	
Type refers to the ‘type’ - the nature or genre of the content of the resource. Take care not to confuse this with dc:format.

Values recorded here MUST be from the following controlled list of types:

Book
Book chapter
Book edited
Conference Paper/Proceeding/Abstract
Journal Article/Review
Manual/Guide
Monograph
Policy briefing report
Technical Report
Technical Standard
Thesis
Other
Consultancy Report
Working paper
rioxxterms:version	Exactly one	
This element indicates which 'version' of the resource is being described. The value of this element MUST be one of the following:

AO
SMUR
AM
P
VoR
CVoR
EVoR
NA
These terms are adopted from the Journal Article Versions (JAV): Recommendations of the NISO/ALPSP JAV Technical Working Group and have the following meanings:

AO = Author's Original
SMUR = Submitted Manuscript Under Review
AM = Accepted Manuscript
P = Proof
VoR = Version of Record
CVoR = Corrected Version of Record
EVoR = Enhanced Version of Record
NA = Not Applicable (or Unknown)
rioxxterms:version_of_record	Zero or one	
This field MUST contain an HTTP URI which is a persistent identifier for the published version of the resource. If a DOI has been issued by the publisher then this MUST be used. Such a DOI MUST be represented in its HTTP form, for example:

<rioxxterms:version_of_record>
    http://dx.doi.org/10.1006/jmbi.1995.0238
</rioxxterms:version_of_record>
