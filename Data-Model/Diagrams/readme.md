
#RDSS Data Model

The data model file in this folder can be viewed using [StarUML](http://staruml.io/).

##Background

As part of the the Research Data Shared Service, I was asked to devise a data model which could be understood to underpin the processes for which the Shared Service project seeks to provide an infrastructure. Metadata requirements from across this landscape were considered - current Research Information Systems, repositories etc. The idea was to simplify these processes into activities that a researcher performs with the desire to capture metadata around these processes. Capture at the point of creation and the use of persistent identifiers were both strong drivers in this model and are reflected in the architecture. Key requirements such as integration of research objects (publications, datasets and software) and the avoidance of re-keying information (details pulled through PiDs, automatic creation and transit of metadata from DMPs and equipment) are central to the design. To this end, the Project entity is also an important part of the model. This is an intellectual asset that centralises many of the material and non-material processes across the time frame of the project.

The original metadata framework arose from the work I did on the Jisc UK Research Data Discovery Service. Although the main focus of the fields described in this work covered Findability, there were other elements considered such as licencing and access. The FAIR principles were important aspirational beacons during the development work, although it generally understood that some elements of the principles are currently more developed than others.

##Description



###Schemas and models consulted

This data model was heavily influenced by the DataMED DATS (work of the BD2K project in the USA.
The iterative and important attribution of standards is an essential part of any life sciences data model. Although the RDSS seeks a more generic route, I considered it important to use standards where possible and for the allocation of those to be captured and reultiised for future dataset publication. The DATS work seeks to find a data equivalent for the [JATS](http://www.niso.org/apps/group_public/download.php/15933/z39_96-2015.pdf) (Journal Article Tag Suite) standard of markup. 

##Classes, values, properties 

**Research objects**

Dataset


**Material assets**

- Person
- Organisation
- Storage
- Material
- Equipment

**Information assets**

