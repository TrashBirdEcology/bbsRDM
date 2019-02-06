# Download, unzip and import shapefile of U.S. military installations
#' @title Get military installation shapefile from online data repo and save to
#' @description
#' @param shploc URL location for.zip file.
#' @param shpfile Name of the file to upload
#' @return
#' @export getMilBases
#' @example milBases <- getMilBases(shploc = "http://www.acq.osd.mil/eie/Downloads/DISDI/installations_ranges.zip", shpfile = "MIRTA_Points")

getMilBases <-  function(shploc, shpfile) {
    temp = tempfile()
    download.file(shploc, temp)
    exdir = tempdir()
    unzip(temp, exdir = exdir)

    shp = rgdal::readOGR(exdir, shpfile)[1]

    return(shp)

        }

