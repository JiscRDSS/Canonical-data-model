# Access



## accessType 1 
# accessType 

#### Description
The access type assigned to the dataset 

#### Derivation
Pure / Bristol University / NHS Scotland (`Open` / `Restricted` / `Controlled` / `Closed`)
Additional terms from Cambridge University (`safeguarded`)

#### Mapping
 
#### Obligation	
Mandatory 

#### Occurence	
Non-repeatable

#### Content
Controlled vocabulary

Term | Source
-----|-------
Open | Bristol University
Safeguarded | Cambridge University
Restricted | Bristol University
Controlled | Bristol University
Closed | Bristol University

## accessStatement 0..1 
# accessStatement

#### Description
An accompanying statement with the access type to give more details about how access can be sought or give clear legal or policy statement about the conditions imposed by the access type (e.g. for NHS restrictions etc.)

#### Derivation
NHSS Traffic light classification guidance

#### Mapping


#### Obligation	
Optional

#### Occurence	
Non-repeatable

#### Content 
String

#### Example
This data is restricted. Please complete the form to request access.
