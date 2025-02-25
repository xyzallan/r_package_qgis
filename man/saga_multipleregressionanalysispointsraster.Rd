% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_multipleregressionanalysispointsraster.R
\name{saga_multipleregressionanalysispointsraster}
\alias{saga_multipleregressionanalysispointsraster}
\title{QGIS algorithm Multiple regression analysis (points/raster)}
\usage{
saga_multipleregressionanalysispointsraster(
  GRIDS = qgisprocess::qgis_default_value(),
  SHAPES = qgisprocess::qgis_default_value(),
  ATTRIBUTE = qgisprocess::qgis_default_value(),
  INTERPOL = qgisprocess::qgis_default_value(),
  METHOD = qgisprocess::qgis_default_value(),
  P_IN = qgisprocess::qgis_default_value(),
  P_OUT = qgisprocess::qgis_default_value(),
  INFO_COEFF = qgisprocess::qgis_default_value(),
  INFO_MODEL = qgisprocess::qgis_default_value(),
  INFO_STEPS = qgisprocess::qgis_default_value(),
  RESIDUALS = qgisprocess::qgis_default_value(),
  REGRESSION = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{GRIDS}{\code{multilayer} - Grids. .}

\item{SHAPES}{\code{source} - Shapes. Path to a vector layer.}

\item{ATTRIBUTE}{\code{field} - Attribute. The name of an existing field. ; delimited list of existing field names.}

\item{INTERPOL}{\code{enum}  of \verb{("[0] Nearest Neighbor", "[1] Bilinear Interpolation", "[2] Inverse Distance Interpolation", "[3] Bicubic Spline Interpolation", "[4] B-Spline Interpolation")} - Grid Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{METHOD}{\code{enum}  of \verb{("[0] include all", "[1] forward", "[2] backward", "[3] stepwise")} - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{P_IN}{\code{number} - P in. A numeric value.}

\item{P_OUT}{\code{number} - P out. A numeric value.}

\item{INFO_COEFF}{\code{vectorDestination} - Details: Coefficients. Path for new vector layer.}

\item{INFO_MODEL}{\code{vectorDestination} - Details: Model. Path for new vector layer.}

\item{INFO_STEPS}{\code{vectorDestination} - Details: Steps. Path for new vector layer.}

\item{RESIDUALS}{\code{vectorDestination} - Residuals. Path for new vector layer.}

\item{REGRESSION}{\code{rasterDestination} - Regression. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Multiple regression analysis (points/raster) (saga:multipleregressionanalysispointsraster)
}
\details{
\subsection{Outputs description}{
\itemize{
\item INFO_COEFF - outputVector - Details: Coefficients
\item INFO_MODEL - outputVector - Details: Model
\item INFO_STEPS - outputVector - Details: Steps
\item REGRESSION - outputRaster - Regression
\item RESIDUALS - outputVector - Residuals
}
}
}
