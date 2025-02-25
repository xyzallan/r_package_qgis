% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_r_li_shape_ascii.R
\name{grass7_r_li_shape_ascii}
\alias{grass7_r_li_shape_ascii}
\title{QGIS algorithm r.li.shape.ascii}
\usage{
grass7_r_li_shape_ascii(
  input = qgisprocess::qgis_default_value(),
  config_txt = qgisprocess::qgis_default_value(),
  config = qgisprocess::qgis_default_value(),
  output_txt = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{input}{\code{raster} - Name of input raster map. Path to a raster layer.}

\item{config_txt}{\code{string} - Landscape structure configuration. String value.}

\item{config}{\code{file} - Landscape structure configuration file. Path to a file.}

\item{output_txt}{\code{fileDestination} - Shape. Path for new file.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by GRASS r.li.shape.ascii (grass7:r.li.shape.ascii)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output_txt - outputFile - Shape
}
}
}
