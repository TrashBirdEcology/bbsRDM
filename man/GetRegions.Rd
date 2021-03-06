% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GetRegions.R
\name{GetRegions}
\alias{GetRegions}
\title{Get BBS region names for download route data.}
\usage{

  GetRegions(Dir = "ftp://ftpext.usgs.gov/pub/er/md/laurel/BBS/DataFiles/",
  ZipFiles = TRUE, bbsDir = NULL)
}
\arguments{
\item{Dir}{location of the BBS files. Do not change unless they make major changes.}

\item{bbsDir}{Location of the folder containing bbs raw data (defined in runthrough.rmd)}
}
\description{
Read in list of regions (State/Prov/TerrName), from RegionCodes.txt, and then extract list of where the 10-stop data is kept
}
