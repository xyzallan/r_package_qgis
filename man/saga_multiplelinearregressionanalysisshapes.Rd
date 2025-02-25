% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_multiplelinearregressionanalysisshapes.R
\name{saga_multiplelinearregressionanalysisshapes}
\alias{saga_multiplelinearregressionanalysisshapes}
\title{QGIS algorithm Multiple linear regression analysis (shapes)}
\usage{
saga_multiplelinearregressionanalysisshapes(
  TABLE = qgisprocess::qgis_default_value(),
  RESULTS = qgisprocess::qgis_default_value(),
  DEPENDENT = qgisprocess::qgis_default_value(),
  INFO_COEFF = qgisprocess::qgis_default_value(),
  INFO_MODEL = qgisprocess::qgis_default_value(),
  INFO_STEPS = qgisprocess::qgis_default_value(),
  METHOD = qgisprocess::qgis_default_value(),
  P_VALUE = qgisprocess::qgis_default_value(),
  CROSSVAL = qgisprocess::qgis_default_value(),
  CROSSVAL_K = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{TABLE}{\code{source} - Shapes. Path to a vector layer.}

\item{RESULTS}{\code{vectorDestination} - Results. Path for new vector layer.}

\item{DEPENDENT}{\code{source} - Dependent Variable. Path to a vector layer.}

\item{INFO_COEFF}{\code{source} - Details: Coefficients. Path to a vector layer.}

\item{INFO_MODEL}{\code{source} - Details: Model. Path to a vector layer.}

\item{INFO_STEPS}{\code{source} - Details: Steps. Path to a vector layer.}

\item{METHOD}{\code{enum}  of \verb{("[0] include all", "[1] forward", "[2] backward", "[3] stepwise")} - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{P_VALUE}{\code{number} - Significance Level. A numeric value.}

\item{CROSSVAL}{\code{enum}  of \verb{("[0] none", "[1] leave one out", "[2] 2-fold", "[3] k-fold")} - Cross Validation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{CROSSVAL_K}{\code{number} - Cross Validation Subsamples. A numeric value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Multiple linear regression analysis (shapes) (saga:multiplelinearregressionanalysisshapes)
}
\details{
\subsection{Outputs description}{
\itemize{
\item RESULTS - outputVector - Results
}
}
}
