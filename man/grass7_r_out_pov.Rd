% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_r_out_pov.R
\name{grass7_r_out_pov}
\alias{grass7_r_out_pov}
\title{QGIS algorithm r.out.pov}
\usage{
grass7_r_out_pov(
  input = qgisprocess::qgis_default_value(),
  hftype = qgisprocess::qgis_default_value(),
  bias = qgisprocess::qgis_default_value(),
  scale = qgisprocess::qgis_default_value(),
  output = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{input}{\code{raster} - Input raster. Path to a raster layer.}

\item{hftype}{\code{number} - Height-field type (0=actual heights 1=normalized). A numeric value.}

\item{bias}{\code{number} - Elevation bias. A numeric value.}

\item{scale}{\code{number} - Vertical scaling factor. A numeric value.}

\item{output}{\code{fileDestination} - Name of output povray file (TGA height field file). Path for new file.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by GRASS r.out.pov (grass7:r.out.pov)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputFile - Name of output povray file (TGA height field file)
}
}
}
