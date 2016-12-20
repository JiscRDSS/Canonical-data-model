
#Contact

 Child entity related to Person, Organisation and Project.
------------------------------------------------

* [contactName](#contactname)
* [contactEmail](#contactemail)
* [contactAddress](#contactaddress)
* [contactTelephone](#contacttelephone)

-------------------------------------------------
##contactName

### Description
Name of the contact person.
### Derivation
Common.
### Obligation	
Mandatory
### Occurence
Non-repeatable
### Example	
Smith, Joanne
### Minimum Quality threshold	
ln, fn format
### Rating
Bronze
### Mapping
Term | Schema
-------------|--------------
### Comment

-------------------------------------------------
##contactEmail

### Description
Email address for the person.
### Derivation
Common.
### Obligation	
Recommended
### Occurence
Non-repeatable
### Example	
joanne.smith@institution.ac.uk
### Minimum Quality threshold	
Valid email address
### Rating
Bronze
### Mapping
Term | Schema
-------------|--------------
### Comment
-------------------------------------------------
##contactAddress
### Description
Address for organisation.
### Derivation
Common.
### Obligation	
Recommended
### Occurence	
Non-repeatable
### Example
123 Acer Drive
Town
County
AB1 2CD
### Minimum Quality threshold	
Lookup(?) on House number / Postcode?
### Rating
Bronze
### Mapping
Term | Schema
-------------|--------------
### Comment
-------------------------------------------------
##contactTelephone
### Description
Telephone number(s) for organisation. 
### Derivation
Common.
### Obligation
Recommended
### Occurence	
Repeatable
### Example	
01234 567890
### Minimum Quality threshold
Number string with dialling code?
### Rating
Bronze
### Mapping
Term | Schema
-------------|--------------
### Comment
