# Download, unzip and import shapefile of U.S. military installations
#' @title Get military installation shapefile from online data repo and save to
#' @param shploc URL location for.zip file
#' @param shpfile Name of the file to upload
#' @return shp A shapefile with points designating U.S. military bases.
#' @export getMilBases

getMilBases <-  function(shploc = "http://www.acq.osd.mil/eie/Downloads/DISDI/installations_ranges.zip",
                         shpfile = "FY18_MIRTA_Points") {
    temp = tempfile()
    download.file(shploc, temp)
    exdir = tempdir()
    unzip(temp, exdir = exdir)

    list.files(exdir) ## sometimes teh shp names change, so use this to check to make sure shpfile is specified correctly

    shp <- rgdal::readOGR(exdir, shpfile)#[1]

        return(shp)

        }


