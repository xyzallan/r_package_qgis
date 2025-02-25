% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_rasterskeletonization.R
\name{saga_rasterskeletonization}
\alias{saga_rasterskeletonization}
\title{QGIS algorithm Raster skeletonization}
\usage{
saga_rasterskeletonization(
  INPUT = qgisprocess::qgis_default_value(),
  METHOD = qgisprocess::qgis_default_value(),
  INIT_METHOD = qgisprocess::qgis_default_value(),
  INIT_THRESHOLD = qgisprocess::qgis_default_value(),
  CONVERGENCE = qgisprocess::qgis_default_value(),
  RESULT = qgisprocess::qgis_default_value(),
  VECTOR = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{raster} - Grid. Path to a raster layer.}

\item{METHOD}{\code{enum}  of \verb{("[0] Standard", "[1] Hilditch's Algorithm", "[2] Channel Skeleton")} - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{INIT_METHOD}{\code{enum}  of \verb{("[0] Less than", "[1] Greater than")} - Initialisation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{INIT_THRESHOLD}{\code{number} - Threshold (Init.). A numeric value.}

\item{CONVERGENCE}{\code{number} - Convergence. A numeric value.}

\item{RESULT}{\code{rasterDestination} - Skeleton. Path for new raster layer.}

\item{VECTOR}{\code{vectorDestination} - Skeleton. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Raster skeletonization (saga:rasterskeletonization)
}
\details{
\subsection{Outputs description}{
\itemize{
\item RESULT - outputRaster - Skeleton
\item VECTOR - outputVector - Skeleton
}
}
}
