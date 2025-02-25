% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qgis_printlayoutmapextenttolayer.R
\name{qgis_printlayoutmapextenttolayer}
\alias{qgis_printlayoutmapextenttolayer}
\title{QGIS algorithm Print layout map extent to layer}
\usage{
qgis_printlayoutmapextenttolayer(
  LAYOUT = qgisprocess::qgis_default_value(),
  MAP = qgisprocess::qgis_default_value(),
  CRS = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{LAYOUT}{\code{layout} - Print layout. Name of print layout in current project.}

\item{MAP}{\code{layoutitem} - Map item. UUID or item id of layout item.}

\item{CRS}{\code{crs} - Override CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..}

\item{OUTPUT}{\code{sink} - Extent. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by QGIS (native c++) Print layout map extent to layer (native:printlayoutmapextenttolayer)
}
\details{
\subsection{Outputs description}{
\itemize{
\item HEIGHT - outputNumber - Map height
\item OUTPUT - outputVector - Extent
\item ROTATION - outputNumber - Map rotation
\item SCALE - outputNumber - Map scale
\item WIDTH - outputNumber - Map width
}
}
}
