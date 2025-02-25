% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_i_landsat_acca.R
\name{grass7_i_landsat_acca}
\alias{grass7_i_landsat_acca}
\title{QGIS algorithm i.landsat.acca}
\usage{
grass7_i_landsat_acca(
  rasters = qgisprocess::qgis_default_value(),
  b56composite = qgisprocess::qgis_default_value(),
  b45ratio = qgisprocess::qgis_default_value(),
  histogram = qgisprocess::qgis_default_value(),
  .arg_5 = qgisprocess::qgis_default_value(),
  .f = qgisprocess::qgis_default_value(),
  .x = qgisprocess::qgis_default_value(),
  .arg_2 = qgisprocess::qgis_default_value(),
  .s = qgisprocess::qgis_default_value(),
  output = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{rasters}{\code{multilayer} - Landsat input rasters. .}

\item{b56composite}{\code{number} - B56composite (step 6). A numeric value.}

\item{b45ratio}{\code{number} - B45ratio: Desert detection (step 10). A numeric value.}

\item{histogram}{\code{number} - Number of classes in the cloud temperature histogram. A numeric value.}

\item{.arg_5}{\code{boolean} - Data is Landsat-5 TM. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -5.}

\item{.f}{\code{boolean} - Apply post-processing filter to remove small holes. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -f.}

\item{.x}{\code{boolean} - Always use cloud signature (step 14). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -x.}

\item{.arg_2}{\code{boolean} - Bypass second-pass processing, and merge warm (not ambiguous) and cold clouds. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -2.}

\item{.s}{\code{boolean} - Include a category for cloud shadows. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.}

\item{output}{\code{rasterDestination} - ACCA Raster. Path for new raster layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by GRASS i.landsat.acca (grass7:i.landsat.acca)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputRaster - ACCA Raster
}
}
}
