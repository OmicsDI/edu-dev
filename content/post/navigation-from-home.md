+++
date = "2017-02-20T01:17:55Z"
title = "Navigation Omics from Home Page"
tags        = [ "Tutorial", "Navigation", "Searching", "Web Components"]
topics      = [ "Tutorials" ]
categories  = [ "Tutorials"]
+++


The [OmicsDI Home Page](www.omicsdi.org) provides different blocks to navigate through the datasets, some of them
are: ``2D WordCloud``; the species/organism/diseases ``Bubble Chart``, repo/omics ``Bar Chart``, ``Latest Datasets List``,
``Most Accessed Datasets`` List, ``Datasets per year`` List. All the charts allow the user to search the data using
the specific attribute. These boxes also act as an statistic component of the resource: for example the pie chart shows how many datasets
for each repository and omics the resource contains.

{{< figure src="/media/home-page.png">}}


A ``TagCloud`` or ``WordCloud`` is a visual representation for metadata, typically used to depict keyword metadata (tags)
on datasets, or to visualize free form text. The ``WordCloud`` is build using the more frequently words for every
database/repository. The OmicsDI ``WordCloud`` can be consider as a two dimensional term representation where the user can
select the database and the field they want to look for: description vs database. The user can click the highlight word in
the wordcloud to search for this term in the resource.

The ``Bubble Chart`` block allows the users to navigate the data using three main categories: Tissues, Organisms,
and Diseases. The user can click in the bubble and it will be redirected to the search using the clicked term.

The Repo/Omics ``Bar Chart`` and the Omics vs Year bar chart allow the users navigate the data using the omics categories
(**metabolomics**, **transcriptomics**, **proteomics** and **genomics**). The user can click a bar or the pie and it will
be redirected to the search using the clicked term.

The Latest Datasets and Most accessed datasets blocks provide a list of the datasets by the tow categories.
