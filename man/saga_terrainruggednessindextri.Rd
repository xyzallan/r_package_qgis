% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_terrainruggednessindextri.R
\name{saga_terrainruggednessindextri}
\alias{saga_terrainruggednessindextri}
\title{QGIS algorithm Terrain ruggedness index (tri)}
\usage{
saga_terrainruggednessindextri(
  DEM = qgisprocess::qgis_default_value(),
  RADIUS = qgisprocess::qgis_default_value(),
  DISTANCE_WEIGHTING_DW_WEIGHTING = qgisprocess::qgis_default_value(),
  DISTANCE_WEIGHTING_DW_IDW_POWER = qgisprocess::qgis_default_value(),
  DISTANCE_WEIGHTING_DW_BANDWIDTH = qgisprocess::qgis_default_value(),
  TRI = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{RADIUS}{\code{number} - Radius (Cells). A numeric value.}

\item{DISTANCE_WEIGHTING_DW_WEIGHTING}{\code{enum}  of \verb{("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")} - Distance Weighting. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DISTANCE_WEIGHTING_DW_IDW_POWER}{\code{number} - Inverse Distance Weighting Power. A numeric value.}

\item{DISTANCE_WEIGHTING_DW_BANDWIDTH}{\code{number} - Gaussian and Exponential Weighting Bandwidth. A numeric value.}

\item{TRI}{\code{rasterDestination} - Terrain Ruggedness Index (TRI). Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Terrain ruggedness index (tri) (saga:terrainruggednessindextri)
}
\details{
\subsection{Outputs description}{
\itemize{
\item TRI - outputRaster - Terrain Ruggedness Index (TRI)
}
}
}
