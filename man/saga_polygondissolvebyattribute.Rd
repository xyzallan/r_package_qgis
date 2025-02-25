% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_polygondissolvebyattribute.R
\name{saga_polygondissolvebyattribute}
\alias{saga_polygondissolvebyattribute}
\title{QGIS algorithm Polygon dissolve (by attribute)}
\usage{
saga_polygondissolvebyattribute(
  POLYGONS = qgisprocess::qgis_default_value(),
  FIELD_1 = qgisprocess::qgis_default_value(),
  FIELD_2 = qgisprocess::qgis_default_value(),
  FIELD_3 = qgisprocess::qgis_default_value(),
  BND_KEEP = qgisprocess::qgis_default_value(),
  DISSOLVED = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{POLYGONS}{\code{source} - Polygons. Path to a vector layer.}

\item{FIELD_1}{\code{field} - 1. Attribute. The name of an existing field. ; delimited list of existing field names.}

\item{FIELD_2}{\code{field} - 2. Attribute. The name of an existing field. ; delimited list of existing field names.}

\item{FIELD_3}{\code{field} - 3. Attribute. The name of an existing field. ; delimited list of existing field names.}

\item{BND_KEEP}{\code{boolean} - Keep inner boundaries. 1 for true/yes. 0 for false/no.}

\item{DISSOLVED}{\code{vectorDestination} - Dissolved. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Polygon dissolve (by attribute) (saga:polygondissolvebyattribute)
}
\details{
\subsection{Outputs description}{
\itemize{
\item DISSOLVED - outputVector - Dissolved
}
}
}
