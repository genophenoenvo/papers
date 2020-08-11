<a href="https://cyverse.org" target="_blank"><img src="https://de.cyverse.org/Powered-By-CyVerse-blue.svg"></a> ![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg) [![License](https://img.shields.io/badge/License-BSD%203--Clause-red.svg)](https://opensource.org/licenses/BSD-3-Clause)

# papers

Our pre-print and peer-reviewed research are hosted here in their own sub-directories. You can find the original pre-print versions of the manuscripts, and published reviews in these spaces.

All analytical tools, code, and data sets are open source and online to allow better reproducibility in line with the [FAIR Data Principles](https://www.go-fair.org/fair-principles/) 


| Pre-print | Download | Edit (Binder) | DOI | Data | Notebooks |
|-----------|----------|---------------|-----|------|-----------|
| [Bartelme et al.](https://github.com/genophenoenvo/papers/tree/master/phenomics_perspective) | [PDF](https://github.com/genophenoenvo/papers/raw/master/phenomics_perspective/Perspective.pdf) | [![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/genophenoenvo/papers/master?urlpath=rstudio) | | n/a | <i class="fab fa-python"></i> [Rmd](https://raw.githubusercontent.com/genophenoenvo/papers/master/phenomics_perspective/Perspective.Rmd) |

## Guide to using this repository

This repository hosts each pre-print and peer reviewed paper written by the Geno-Pheno-Envo Collaborative Research Group.

Individual folders contain each research manuscript with supporting notebooks, code, subdirectories with BibTeX, mostly in markdown formatting.

### Edit with Binder

We use Docker containers created by the [Rocker Project](https://rocker-project.org) which are run using [Jupyter Binder](https://jupyter.org/binder), which provides a temporary, free, virtual machine.  

When you launch a manuscript with Binder, a new browser tab will open and the environment launch either into RStudio or Jupyter Notebooks. Navigate to the directory with the manuscript of interest.

If the manuscript is written in Rmd, select the Rmd file in RStudio and click on `Knit` -- this will render the manuscript text and figures as PDF. 

Note: it may take several minutes to render a PDF the first time, as fonts and other dependencies are installed into the Binder VM for the first time. 

### Data Sets

Data sets which are too large to host on GitHub, are hosted on CyVerse Data Store and will by dynamically downloaded into the notebooks and into the virtual machines running the manuscripts when they are executed upon.

### Notebooks

This repository hosts the finalized versions of notebooks used in the publications of the Geno-Pheno-Envo project. Experimental Notebooks are hosted in our other GitHub Organizational repositories. 

### Acknowledgements

Thank you to Steven V. Miller for developing the Rmarkdown LaTeX configuration files for manuscripts. [This is Steven's blog describing the Template for Academic Manuscripts](http://svmiller.com/blog/2016/02/svm-r-markdown-manuscript/) and the github repository with all the templates can be found [here](https://github.com/svmiller/svm-r-markdown-templates).
