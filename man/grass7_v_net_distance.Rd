% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_v_net_distance.R
\name{grass7_v_net_distance}
\alias{grass7_v_net_distance}
\title{QGIS algorithm v.net.distance}
\usage{
grass7_v_net_distance(
  input = qgisprocess::qgis_default_value(),
  flayer = qgisprocess::qgis_default_value(),
  tlayer = qgisprocess::qgis_default_value(),
  threshold = qgisprocess::qgis_default_value(),
  arc_type = qgisprocess::qgis_default_value(),
  from_cats = qgisprocess::qgis_default_value(),
  from_where = qgisprocess::qgis_default_value(),
  to_type = qgisprocess::qgis_default_value(),
  to_cats = qgisprocess::qgis_default_value(),
  to_where = qgisprocess::qgis_default_value(),
  arc_column = qgisprocess::qgis_default_value(),
  arc_backward_column = qgisprocess::qgis_default_value(),
  node_column = qgisprocess::qgis_default_value(),
  .g = qgisprocess::qgis_default_value(),
  .l = qgisprocess::qgis_default_value(),
  output = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(),
  GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{input}{\code{source} - Input vector line layer (network). Path to a vector layer.}

\item{flayer}{\code{source} - Input vector from points layer (from). Path to a vector layer.}

\item{tlayer}{\code{source} - Input vector to layer (to). Path to a vector layer.}

\item{threshold}{\code{number} - Threshold for connecting nodes to the network (in map unit). A numeric value.}

\item{arc_type}{\code{enum}  of \verb{("line", "boundary")} - Arc type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{from_cats}{\code{string} - From Category values. String value.}

\item{from_where}{\code{string} - From WHERE conditions of SQL statement without 'where' keyword. String value.}

\item{to_type}{\code{enum}  of \verb{("point", "line", "boundary")} - To feature type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{to_cats}{\code{string} - To Category values. String value.}

\item{to_where}{\code{string} - To WHERE conditions of SQL statement without 'where' keyword. String value.}

\item{arc_column}{\code{field} - Arc forward/both direction(s) cost column (number). The name of an existing field. ; delimited list of existing field names.}

\item{arc_backward_column}{\code{field} - Arc backward direction cost column (number). The name of an existing field. ; delimited list of existing field names.}

\item{node_column}{\code{field} - Node cost column (number). The name of an existing field. ; delimited list of existing field names.}

\item{.g}{\code{boolean} - Use geodesic calculation for longitude-latitude locations. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -g.}

\item{.l}{\code{boolean} - Write each output path as one line, not as original input segments. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -l.}

\item{output}{\code{vectorDestination} - Network_Distance. Path for new vector layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_SNAP_TOLERANCE_PARAMETER}{\code{number} - v.in.ogr snap tolerance (-1 = no snap). A numeric value.}

\item{GRASS_MIN_AREA_PARAMETER}{\code{number} - v.in.ogr min area. A numeric value.}

\item{GRASS_OUTPUT_TYPE_PARAMETER}{\code{enum}  of \verb{("auto", "point", "line", "area")} - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{GRASS_VECTOR_DSCO}{\code{string} - v.out.ogr output data source options (dsco). String value.}

\item{GRASS_VECTOR_LCO}{\code{string} - v.out.ogr output layer options (lco). String value.}

\item{GRASS_VECTOR_EXPORT_NOCAT}{\code{boolean} - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by GRASS v.net.distance (grass7:v.net.distance)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputVector - Network_Distance
}
}
}
