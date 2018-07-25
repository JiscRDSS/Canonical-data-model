# Content Models

## Background

As part of the development of the canonical data model (CDM), certain practical decisions were made about the amount of content that could be shown at the Object level. It was important for the CDM to remain unopinionated about an object, and sought to identify a minimum metadata set that would apply to all objects. 

However, following from schemas such as Datacite (research data focused) and IRUS UK (research publications focused), the CDM contained a resourceType field, where a more specific calss of object could be expressed.

By expressing a new class, and given the vast differences between these classes, it was decided to capture any additional metadata that was inherent or important to that class to be captured in a separate model.

## Concept models vs content models

The concept models for each class are designed in UML to show where the additional fields come from and how they are related to the specific resource type. These diagrams are important when considering matters such as compliance and autopopulation from other sources but are not formal UML.

The content models themselves are bound by strict UML rules around showing inheritance and are designed to plug into the CDM. This formal requirement accounts for the differences that you will see between the two models.

## Example: Article

![Article content model](https://github.com/JiscRDSS/rdss-canonical-data-model/blob/RDSS-2142/Data-Model/Content%20Models/images/Article%20concept%20model%20v2.png)

![image placeholder](http://url/to/img.png)


