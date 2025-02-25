% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_minimumdistanceanalysis.R
\name{saga_minimumdistanceanalysis}
\alias{saga_minimumdistanceanalysis}
\title{QGIS algorithm Minimum distance analysis}
\usage{
saga_minimumdistanceanalysis(
  POINTS = qgisprocess::qgis_default_value(),
  TABLE = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{POINTS}{\code{source} - Points. Path to a vector layer.}

\item{TABLE}{\code{vectorDestination} - Minimum Distance Analysis. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Minimum distance analysis (saga:minimumdistanceanalysis)
}
\details{
\subsection{Outputs description}{
\itemize{
\item TABLE - outputVector - Minimum Distance Analysis
}
}
}
