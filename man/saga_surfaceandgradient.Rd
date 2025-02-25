% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_surfaceandgradient.R
\name{saga_surfaceandgradient}
\alias{saga_surfaceandgradient}
\title{QGIS algorithm Surface and gradient}
\usage{
saga_surfaceandgradient(
  MASK = qgisprocess::qgis_default_value(),
  SURF = qgisprocess::qgis_default_value(),
  GRAD = qgisprocess::qgis_default_value(),
  SURF_E = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{MASK}{\code{raster} - Mask. Path to a raster layer.}

\item{SURF}{\code{rasterDestination} - Surface. Path for new raster layer.}

\item{GRAD}{\code{rasterDestination} - Gradient. Path for new raster layer.}

\item{SURF_E}{\code{number} - Surface Approximation Threshold. A numeric value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Surface and gradient (saga:surfaceandgradient)
}
\details{
\subsection{Outputs description}{
\itemize{
\item GRAD - outputRaster - Gradient
\item SURF - outputRaster - Surface
}
}
}
