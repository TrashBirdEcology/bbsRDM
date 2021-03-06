% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getRouteInfo.R
\name{getRouteInfo}
\alias{getRouteInfo}
\title{Download route information from USGS server}
\usage{
getRouteInfo(routesFile = "routes.zip",
  routesDir = "ftp://ftpext.usgs.gov/pub/er/md/laurel/BBS/DataFiles/",
  RouteTypeID = 1, Stratum = NULL, BCR = NULL)
}
\arguments{
\item{RouteTypeID}{One or more numbers indicating route substrate (1=roadside;2=water;3=off-road; Default = 1, roadside only).}

\item{Stratum}{A vector of BBS physiographic stratum codes by which to filter the routes.}

\item{BCR}{A vector of Bird Conservation Region codes where by which to filter the routes.}

\item{routeDir}{Location of the routes.zip folder Should be in DatFiles folder (default).}

\item{routeFile}{Name of the route information file. Usually "routes.zip".}
}
\value{
If download successful, a dataframe with the results.
}
\description{
This function was adapted from **oharar/rBBS** package.
}
\examples{
# download BBS route data.

\dontrun{
RouteInfo <- getRouteInfo()
}

}
