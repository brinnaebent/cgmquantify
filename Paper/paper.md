---
title: 'cgmquantify: Python and R packages for comprehensive analysis of interstitial glucose and glycemic variability from continuous glucose monitor data'
tags:
  - Python
  - R
  - open source
  - bioinformatics
  - data analysis
  - glucose
  - glucose variability
  - continuous glucose monitoring
  - type I diabetes
  - type II diabetes
  - prediabetes
  - diabetes
  - Open APS
authors:
  - name: Brinnae Bent
    orcid: 0000-0002-7039-0177
    affiliation: 1
  - name: Maria Henriquez
    orcid: 
    affiliation: 2
  - name: Jessilyn Dunn
    orcid: 0000-0002-3241-8183
    affiliation: 1,3
affiliations:
 - name: Duke University Department of Biomedical Engineering
   index: 1
- name: Duke University Department of Statistics
   index: 2
 - name: Duke University Department of Biostatistics & Bioinformatics
   index: 3
date: 18 February 2020
bibliography: paper.bib

---

# Summary

Continuous glucose monitoring (CGM) systems provide real-time, dynamic glucose information by tracking interstitial glucose values throughout the day (typically values are recorded every 5 minutes). CGMs are commonly used in diabetes management by clinicians and patients and in research to understand how factors of longitudinal glucose and glucose variability relate to disease onset and severity and the efficacy of interventions. CGM data presents unique bioinformatic challenges because the data is longitudinal, temporal, and there are nearly infinite possible ways to summarize and use this data. There are over 20 metrics of glucose variability, no standardization of metrics, and little validation across studies. Here we present open source python and R packages called cgmquantify, which contains over 20 functions with over 25 clinically validated metrics of glucose and glucose variability and functions for visualizing longitudinal CGM data. This is expected to be useful for researchers and may provide additional insights to patients and clinicians about glucose patterns.

# Introduction

Continuous glucose monitoring (CGM) systems provide real-time, dynamic glucose information by tracking interstitial 
glucose values throughout the day. CGMs are commonly used in diabetes management, with 1.2 million diabetic patients 
using a CGM[@Wolinsky:2018]. CGM use has be associated with improved glycemic control in adults with type 1 diabetes
[@Tamborlane:2008]. These devices 
have been used extensively by the T1D community, including in the Open Artificial Pancreas System Project (OpenAPS)[@OpenAPS], 
a project developed to create a patient-implemented closed loop system between a CGM and an insulin pump. 

&nbsp;

CGM data is commonly provided from CGM manufacturers as either raw glucose values (in a .csv format) or in summary 
reports that utilize proprietary methods to plot and summarize glucose statistics (e.g. Dexcom Clarity currently shows 
overall mean glucose, standard deviation of glucose, time in range, and hypoglycemia risk and daily minimum, maximum, 
mean, and standard deviation of glucose). Because these algorithms are proprietary, they cannot be properly validated 
by clinical researchers[@Goldsack:2020]. Additionally, the provided glucose summaries are extremely limited and do not usually contain 
any information about an important clinical metric, glycemic variability.

&nbsp;

Glycemic variability, also known as glucose variability, is an established risk factor for hypoglycemia[@Umpierrez:2018] and has been 
shown to be a risk factor in diabetes complications[@Service:2013]. Glucose variability can be found in over 26,000 publications indexed 
in PubMed at the time of this publication and is a significant metric in clinical research[@Kovatchev:2017]. Over 20 metrics of glucose 
variability have been identified (Table 1)[@Rawlings:2011; @Wojcicki:1995; @Kovatchev:2019; @ADA:2018; @Suh:2015; @Cho:2020], which makes it difficult to examine and compare results across numerous research 
studies analyzing and drawing conclusions about glucose variability. 

&nbsp;

There is a need for an open source resource with algorithms that are utilized and validated in clinical research studies. 
This would enable standardized glucose variability metrics and the ability to compare findings from studies that utilize 
different metrics of glucose variability. This resource should be available in an open source programming language with 
a low barrier to entry to encourage researchers, clinicians, and patients alike to explore CGM data. 

&nbsp;

Previous open-source resources have been implemented in Excel[@Hill:2011] and R[@Vigers:2019; @Zhang:2018]. There is currently no comprehensive resource for 
CGM data in Python, the third most common programming language used globally and the leading language among newcomers[@Krill:2019]. 
Additionally, previous implementations of open source CGM data analysis have limited metrics of glucose variability. 
Further, these methods are typically developed for a specific purpose and are therefore not extensible (e.g. do not have 
simple functions so users can customize their metrics and visualizations).

&nbsp;

We have developed a package written and published in Python under the MIT license and a package written and published in R under the MIT license. The packages, both named cgmquantify, contain over 20 functions with more than 25 metrics summarizing glucose and glucose variability. There is also includes code for visualizing CGM data in both packages. Both packages are available in the Digital Biomarker Discovery Pipeline (DBDP)[@Bent:2020], the open source software platform for digital biomarker discovery. The python package is available under the Python Package Index (PyPI) (https://pypi.org/project/cgmquantify/). Source code can be found at https://github.com/DigitalBiomarkerDiscoveryPipeline/cgmquantify. The R package is available in the Comprehensive R Archive Network (CRAN) (https://cran.r-project.org/web/packages/cgmquantify/index.html) and source code can be found at https://github.com/DigitalBiomarkerDiscoveryPipeline/cgmquantify-R. 

# Methods
cgmquantify is a Python package and an R package composed of 20+ functions with over 25 clinically validated metrics of glucose and glucose 
variability, as shown in Table 1. Customizable visualizations (Figure 1, Figure 2) are also included as easy to implement functions. 
cgmquantify is version controlled through GitHub and PyPI or CRAN. This allows for single-line installation. Source code and an 
extensive user guide are available on GitHub to facilitate ease of use and enable customization based on user needs. Issue 
tracking on GitHub is monitored closely by the Big Ideas Lab to allow for rapid feedback. Tests are available in GitHub under 
the tests subdirectory to allow for manual testing of all functions.

# Results
We have included import functions to format data for use with the cgmquantify package. These functions currently support 
Dexcom CGM devices, with plans to add additional import functions for other CGM manufacturers, including Medtronic and Abbott. 
Our user guide also outlines how one can easily format data to make any data input compatible with the functions in cgmquantify. 
Functions are available for all the commonly studied glucose and glucose variability metrics (Table 1). Additionally, functions 
for data visualization of the longitudinal CGM data are provided. These visualizations are easily customizable. We have also 
implemented a function that enables LOWESS smoothing over the CGM data in the Python package (Figure 1). 

# Discussion
cgmquantify is a package that simplifies the process of calculating metrics and thus allows for easy comparison across different 
research studies that use different metrics summarizing glucose and glucose variability. Functions have been developed using 
equations from clinically validated research studies so users can compare their results to previous findings. The cgmquantify 
package is easily implemented with a one-line installation and an extensive user guide in both the python and R languages. Detailed documentation facilitates 
modification of existing code for customization of input and visualizations. This package also has the ability to build a 
community of developers to contribute to the literature in this burgeoning field.

&nbsp;

This is a much-needed resource for the community of researchers, clinicians, and patients using CGM. Currently, little is 
understood about the relationships between glucose and glucose variability metrics from CGM data and relationships to diseases 
including but not limited to prediabetes, T2D, and severity of symptoms in T1D. As more researchers and clinicians start looking
to CGM data to answer these questions, the need for a standardized resource in a nearly ubiquitous programming language is 
necessary. As we have seen with the Open APS community, analysis of CGM data is not limited to researchers and clinicians but 
includes patients themselves[@DeGroot:2017]. By providing this as an open source resource, we hope to encourage patients to interact with 
their own data, determine personalized insights, and make meaningful contributions to the digital health landscape. 

# Future Implementations
Future contributions will include additional import functions customized to all the CGM manufacturers, including but not limited
to Medtronic and Abbott. We are exploring methods to incorporate food logs into visualizations of CGM data. 

# Code Availability
The cgmquantify python package is available under the Python Package Index (PyPI) (https://pypi.org/project/cgmquantify/). Source code can be found at https://github.com/DigitalBiomarkerDiscoveryPipeline/cgmquantify. The cgmquantify R package is available in the Comprehensive R Archive Network (CRAN) (https://cran.r-project.org/web/packages/cgmquantify/index.html) and source code can be found at https://github.com/DigitalBiomarkerDiscoveryPipeline/cgmquantify-R. We encourage others to expand on our ideas and contribute their own glucose and glucose variability metrics to cgmquantify. We have documentation for contributing available in our User Guide.

# Acknowledgements
Brinnae Bent is funded through the Duke Forge Predoctoral Fellowship. This study was funded in part by Duke MedX.  

# Figures

**Figure 1. Visualizing longitudinal CGM data with the cgmquantify Python package.** Shown are a visualization with indicators 
of 1 SD from the mean and the mean glucose level (a), a visualization with indicators of hyperglycemic (>180 mg/dL glucose) 
and hypoglycemic (<70 mg/dL glucose) (b), and a plot with LOWESS smoothing of the glucose data (c).
![cgmquantify Figures_Page_2](https://user-images.githubusercontent.com/43549914/74770470-541de100-525a-11ea-8631-a714bfbcf7ed.jpg)

**Figure 2. Visualizing longitudinal CGM data with the cgmquantify R package.** Shown is a visualization available in the cgmquantify 
R package that enables visualization of CGM data by time of day for each day specified.
![cgmquantify Figures_Page_2](https://user-images.githubusercontent.com/43549914/74770470-541de100-525a-11ea-8631-a714bfbcf7ed.jpg)


**Table 1. Glucose and Glucose Variability Metrics** 
![cgmquantify Figures2_Page_3](https://user-images.githubusercontent.com/43549914/74774845-774c8e80-5262-11ea-9155-80b87ca899a7.jpg)

# References
