% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_r_stats_zonal.R
\name{grass7_r_stats_zonal}
\alias{grass7_r_stats_zonal}
\title{QGIS algorithm r.stats.zonal}
\usage{
grass7_r_stats_zonal(
  base = qgisprocess::qgis_default_value(),
  cover = qgisprocess::qgis_default_value(),
  method = qgisprocess::qgis_default_value(),
  .c = qgisprocess::qgis_default_value(),
  .r = qgisprocess::qgis_default_value(),
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
\item{base}{\code{raster} - Base raster. Path to a raster layer.}

\item{cover}{\code{raster} - Cover raster. Path to a raster layer.}

\item{method}{\code{enum}  of \verb{("count", "sum", "min", "max", "range", "average", "avedev", "variance", "stddev", "skewness", "kurtosis", "variance2", "stddev2", "skewness2", "kurtosis2")} - Method of object-based statistic. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{.c}{\code{boolean} - Cover values extracted from the category labels of the cover map. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.}

\item{.r}{\code{boolean} - Create reclass map with statistics as category labels. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.}

\item{output}{\code{rasterDestination} - Resultant raster. Path for new raster layer.}

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
QGIS Algorithm provided by GRASS r.stats.zonal (grass7:r.stats.zonal)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputRaster - Resultant raster
}
}
}
