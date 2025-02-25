% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_landusescenariogenerator.R
\name{saga_landusescenariogenerator}
\alias{saga_landusescenariogenerator}
\title{QGIS algorithm Land use scenario generator}
\usage{
saga_landusescenariogenerator(
  FIELDS = qgisprocess::qgis_default_value(),
  FIELD_ID = qgisprocess::qgis_default_value(),
  SCENARIO = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  STATISTICS = qgisprocess::qgis_default_value(),
  KNOWN_CROPS = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{FIELDS}{\code{source} - Fields. Path to a vector layer.}

\item{FIELD_ID}{\code{source} - Field Identifier. Path to a vector layer.}

\item{SCENARIO}{\code{vectorDestination} - Land Use Scenario. Path for new vector layer.}

\item{OUTPUT}{\code{enum}  of \verb{("[0] Identifier", "[1] Name")} - Output of.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{STATISTICS}{\code{source} - Crop Statistics. Path to a vector layer.}

\item{KNOWN_CROPS}{\code{source} - Known Crops. Path to a vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Land use scenario generator (saga:landusescenariogenerator)
}
\details{
\subsection{Outputs description}{
\itemize{
\item SCENARIO - outputVector - Land Use Scenario
}
}
}
