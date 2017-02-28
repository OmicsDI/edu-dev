+++
date = "2017-02-27T22:56:34Z"
title = "Introduction to OmicsDI API"
tags        = [ "Tutorial", "Development", "Programming", "API", "Restful API"]
topics      = [ "API" ]
categories  = [ "Web-Services" ]
toc = true
+++

Most data in the Datatsets Discovery Index can be accessed
programmatically using a [RESTful API](www.omicsdi.org/ws).
The API implementation is based on the Spring Rest Framework.

## Web-browsable API

The OmicsDI API is web browsable, which means that:

- The query results returned by the API are available in JSONformat and also XML. This ensures that they can be viewed by human and accessed programmatically by computer.
- The main [RESTful API](www.omicsdi.org/ws) page provides a simple web-based user
  interface, which allows developers to familiarize themselves with the API and get a
  better sense of the OmicsDI data before writing a single line of code.

many resources are hyperlinked so that it's possible to navigate the API in the browser.

As a result, developers can familiarize themselves with the API and get a better sense of the OmicsDI data.

## API documentation

Responses containing multiple entries have the following fields:

- the count is the number of entries in the matching set.
- dataset is an array of datasets.
- facet is an array of facets.

Example

~~~
    http://www.omicsdi.org/ws/dataset/search?query=human
    {
    "count": 733,
    "datasets": [
    {
    "id": "PXD000456",
    "source": "pride",
    "title": "Human glomerular extracellular matrix analysed by LC-MSMS",
    "description": "Extracellular matrix proteins were isolated from human glomeruli and analysed by LC-MSMS",
    "keywords": [
    "Human",
    "kidney",
    "glomerulus",
    "extracellular matrix"
    ],
    "organisms": [
    {
    "acc": "9606",
    "name": "Homo sapiens"
    }
    ],
    "publicationDate": "20140122"
    },
    // 19 more datasets
    ],
    "facets": [
    {
    "id": "modification",
    "label": "Modification",
    "total": 181,
    "facetValues": [
    {
    "label": "Unknown modification",
    "value": "unknown modification",
    "count": "5"
    },
    //other facet values
    ],
    },
    //other facets
    ]
    }
~~~

Responses containing just a single dataset have some extra navigation fields, and without the facets

~~~
    http://www.omicsdi.org/ws/dataset/get?acc=PXD001848&database=PRIDE
    {
    "id": "PXD001848",
    "name": "Global Analysis of Protein Folding Thermodynamics for Disease State Characterization, MCF7 vs MDAMB231",
    "description": "Protein biomarkers can be used to characterize and diagnose disease states such as cancer. They can also serve as therapeutic targets. Current methods for protein biomarker discovery, which generally rely on the large-scale analysis of gene and/or protein expression levels, fail to detect protein biomarkers with disease-related functions and unaltered expression levels. Here we describe the large-scale use of thermodynamic measurements of protein folding and stability for disease state characterization and the discovery of protein biomarkers. Using the Stable Isotope Labeling with Amino Acids in Cell Culture and Stability of Proteins from Rates of Oxidation (SILAC-SPROX) technique, we assayed ~800 proteins for protein folding and stability changes in three different cell culture models of breast cancer including the MCF-10A, MCF-7, and MDA-MB-231 cell lines. The thermodynamic stability profiles generated here created distinct molecular markers for the three cell lines, and a significant fraction (~45%) of the differentially stabilized proteins did not have altered expression levels. Thus, the protein biomarkers reported here created novel molecular signatures of breast cancer and provided additional insight into the molecular basis of the disease. Our results establish the utility of protein folding and stabilitymeasurements for the study of disease processes.",
    "keywords": null,
    "publicationDate": "20150410",
    "publications": [
    {
    "id": "25825992",
    "publicationDate": "2015-04-09",
    "title": "Global analysis of protein folding thermodynamics for disease state characterization.",
    "pubabstract": "Current methods for the large-scale characterization of disease states generally rely on the analysis of gene and/or protein expression levels. These existing methods fail to detect proteins with disease-related functions and unaltered expression levels. Here we describe the large-scale use of thermodynamic measurements of protein folding and stability for the characterization of disease states. Using the Stable Isotope Labeling with Amino Acids in Cell Culture and Stability of Proteins from Rates of Oxidation (SILAC-SPROX) technique, we assayed âˆ¼800 proteins for protein folding and stability changes in three different cell culture models of breast cancer including the MCF-10A, MCF-7, and MDA-MB-231 cell lines. The thermodynamic stability profiles generated here created distinct molecular markers to differentiate the three cell lines, and a significant fraction (âˆ¼45%) of the differentially stabilized proteins did not have altered expression levels. Thus, the differential thermodynamic profiling strategy reported here created novel molecular signatures of breast cancer and provided additional insight into the molecular basis of the disease. Our results establish the utility of protein folding and stability measurements for the study of disease processes, and they suggest that such measurements may be useful for biomarker discovery in disease.",
    "cycle": "testcyclehere"
    }
    ],
    "related_datasets": null,
    "data_protocol": "Peak lists were extracted from the raw LC-MS/MS data files and the data were searched against the 20265 human proteins in the 2014-04 release of the UniProt Knowledgebase (downloaded at ftp://ftp.uniprot.org/pub/databases/uniprot/current_releases/release-2014_04/knowledgebase/) using Maxquant 1.3.0.5.41 The following modifications were used: methyl methanethiosulfonate at cysteine as a fixed modification, SILAC labeling of lysine (13C614N2) and arginine (13C6), and variable (0-1) oxidation of methionine and deamidation of Asparagine and Glutamine (N and Q), and acetylation of the protein N-terminus. The enzyme was set as Trypsin, and up to 2 missed cleavages were permitted. The false discovery rate for peptide and protein identifications was set to1%, and rest of the parameters were set at the default settings. As part of the default settings, the mass tolerance for precursor ions was set to 20 ppm for the first search where initial mass recalibration was completed and a 6 ppm precursor mass tolerance was used for the main search. The mass tolerance for fragment ions was 0.5 Da. We also included match between runs and re-quantification of the searched peptides. The search results were exported toExcel for further data analysis as described below. Only the protein and peptide identifications with no-zeropositive ratios (H/L >0) were used in subsequent data analysis steps. The methionine-containing peptides wereselected, and those methionine-containing peptides consistently identified in the protein samples derived from sixor more denaturant-containing buffers were assayed. For the methionine-containing peptides, a single averaged H/Lratio was calculated for each peptide sequence and each charge state at each denaturant concentration. Similarly, for each analysis, a median H/L ratio was determined for each protein using the H/L ratios measured for all thenon-methionine-containing peptides identified in all the denaturant concentrations for a given protein. These medianH/L ratios were used to select hits with H/L>2 fold in the protein expression level analyses. For hit peptide andprotein selection in the thermodynamic analyses, all the H/L ratios generated for the non-methionine containingpeptides from a given protein were divided by the median H/L ratio for that protein in order to generate normalizedH/L ratios for each non-methionine containing peptide. These normalized H/L ratios were log2 transformed. Thenormalized and log2 transformed H/L ratios generated for the non-methionine-containing peptides in a given analysiswere used to determine the 5th and 95th percentiles values used in subsequent analysis of methionine-containingpeptides. The averaged H/L ratios calculated for each methionine-containing peptides were also normalized and log2transformed. The methionine-containing peptides and proteins with log2 transformed H/L ratios less than the 5thpercentile or greater than the 95th percentile values determined above were selected and then visually inspected todetermine which peptides had altered H/L ratios at 2 or more consecutive denaturant concentrations to generate aninitial list of protein hits.",
    "sample_protocol": "SILAC labeled MCF-7 and MDA-MB-231 cell lysates were prepared according to established SILAC protocols. Aliquots of each lysate were distributed into a series of denaturant-containing buffers, reacted with hydrogen peroxide under conditions that selectively oxidize exposed methionine residues, and quenched with the addition of excess methionine. The light and heavy samples generated at matching denaturant concentration were combined. Each combined protein sample was submitted to a bottom-up, solution-phase, shotgun proteomics analysis using LC-MS/MS. Ultimately, L/H ratios were obtained for the peptides detected at each denaturant concentration, and the denaturant dependence of the L/H ratioâ€™s was examined."
    }
~~~

### Pagination

Responses containing multiple datasets are paginated to prevent accidental downloads
of large amounts of data and to speed up the ``API``. The ``page size`` is controlled by the size parameter. Its default value is 20 datasets per page, and the maximum number of datasets per page is 100.

Another parameter is start which indicates the numeric order (starting from 0, not 1) of the first dataset in this page. Its default value is 0.

Examples:

- http://www.omicsdi.org/ws/dataset/search?query=human&start=0&size=50

- http://www.omicsdi.org/ws/dataset/search?query=human&start=0&size=20

### Sort

The result datasets can be sorted using the title, description, publication date, accession id and the relevance of the query term.

Examples:

- http://www.omicsdi.org/ws/dataset/search?query=human&sort_field=id
- http://www.omicsdi.org/ws/dataset/search?query=human&sort_field=publication_date

### Filtering

The API supports several filtering operations that complement the main ``OmicsDI`` search functionality.

Filtering by search term, there is 1 URL parameter: query

Examples

- http://www.omicsdi.org/ws/dataset/search?query=human

- http://www.omicsdi.org/ws/dataset/search?query=cancer

**Filtering by omics type**:

The omics type can be specified by adding terms in the query url parameter with key: omics_type (possible values: Proteomics, Metabolomics, Genomics, Transcriptomics).

Examples:

- [http://www.omicsdi.org/ws/dataset/search?query=human AND omics_type:"Proteomics"](http://www.omicsdi.org/ws/dataset/search?query=human%20AND%20omics_type:%22Proteomics%22)

**Filtering by database**

The database can be specified by adding terms in the query URL parameter with key: repository (possible values: MassIVE, Metabolights, PeptideAtlas, PRIDE, GPMDB, EGA, Metabolights, Metabolomics Workbench, MetabolomeExpress, GNPS, ArrayExpress, ExpressionAtlas).

Examples:

- [http://www.omicsdi.org/ws/dataset/search?query=human AND repository:"Metabolights"](http://www.omicsdi.org/ws/dataset/search?query=human%20AND%20repository:%22Metabolights%22)


**Filtering by Organism**

The organism can be specified by adding terms in the query URL parameter with key: TAXONOMY (possible values must be the TAXONOMY id: 9606, 10090...).

Examples:

- [http://www.omicsdi.org/ws/dataset/search?query=human AND TAXONOMY:"9606"](http://www.omicsdi.org/ws/dataset/search?query=human%20AND%20TAXONOMY:%229606%22)


**Filtering by Tissue**

The tissue can be specified by adding terms in the query URL parameter with key: tissue (possible values: Liver, Cell culture, Brain, Lung...).

Examples:

- [http://www.omicsdi.org/ws/dataset/search?query=human AND tissue:"Brain"](http://www.omicsdi.org/ws/dataset/search?query=human%20AND%20tissue:%22Brain%22)

**Filtering by Disease**

The disease can be specified by adding terms in the query URL parameter with key: disease (possible values: Breast cancer, Lymphoma, Carcinoma, prostate adenocarcinoma...).

Examples

- [http://www.omicsdi.org/ws/dataset/search?query=human AND tissue:"Breast cancer"](http://www.omicsdi.org/ws/dataset/search?query=human%20AND%20tissue:%22Breast%20cancer%22)


**Filtering by Modification (in proteomics)**

The Modifications (in proteomics) can be specified by adding terms in the query URL parameter with key: disease (possible values: Deamidated residue, Deamidated, Monohydroxylated residue, Iodoacetamide derivatized residue...).

Examples:

- [http://www.omicsdi.org/ws/dataset/search?query=human AND modification:"iodoacetamide derivatized residue"](http://www.omicsdi.org/ws/dataset/search?query=human%20AND%20modification:%22iodoacetamide%20derivatized%20residue%22)

**Filtering by Instruments & Platforms**

The Instruments & Platforms can be specified by adding terms in the query URL parameter with key: instrument_platform (possible values: QSTAR, LTQ Orbitrap, Q Exactive, LTQ...).

Examples:

- [http://www.omicsdi.org/ws/dataset/search?query=human AND instrument_platform:"Q Exactive"](http://www.omicsdi.org/ws/dataset/search?query=human%20AND%20instrument_platform:%22Q%20Exactive%22)

**Filtering by Publication Date**

The Publication Date can be specified by adding terms in the query URL parameter with key: "publication_date" (possible values: 2015, 2014, 2013, 2014...).

Examples:

- [http://www.omicsdi.org/ws/dataset/search?query=human AND publication_date:"2015"](http://www.omicsdi.org/ws/dataset/search?query=human%20AND%20publication_date:%222015%22)

**Filtering by Technology Type**

The Technology Type can be specified by adding terms in the query URL parameter with key: "technology_type" (possible values: Mass Spectrometry, Bottom-up proteomics, Gel-based experiment, Shotgun proteomics...).

Examples:

- [http://www.omicsdi.org/ws/dataset/search?query=human AND technology_type:"Mass Spectrometry"](http://www.omicsdi.org/ws/dataset/search?query=human%20AND%20technology_type:%22Mass%20Spectrometry%22)

**Combined filters**

Any filters can be combined to narrow down the query using the AND operator. More logical operators will be supported in the future.

Examples:

- [http://www.omicsdi.org/ws/dataset/search?query=human AND technology_type:"Shotgun proteomics" and AND modification:"monohydroxylated residue"](http://www.omicsdi.org/ws/dataset/search?query=human%20AND%20technology_type:%22Shotgun%20proteomics%22%20and%20AND%20modification:%22monohydroxylated%20residue%22)