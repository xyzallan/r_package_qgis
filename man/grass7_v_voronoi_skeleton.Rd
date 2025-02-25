% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_v_voronoi_skeleton.R
\name{grass7_v_voronoi_skeleton}
\alias{grass7_v_voronoi_skeleton}
\title{QGIS algorithm v.voronoi.skeleton}
\usage{
grass7_v_voronoi_skeleton(
  input = qgisprocess::qgis_default_value(),
  smoothness = qgisprocess::qgis_default_value(),
  thin = qgisprocess::qgis_default_value(),
  .a = qgisprocess::qgis_default_value(),
  .s = qgisprocess::qgis_default_value(),
  .l = qgisprocess::qgis_default_value(),
  .t = qgisprocess::qgis_default_value(),
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
\item{input}{\code{source} - Input polygons layer. Path to a vector layer.}

\item{smoothness}{\code{number} - Factor for output smoothness. A numeric value.}

\item{thin}{\code{number} - Maximum dangle length of skeletons (-1 will extract the center line). A numeric value.}

\item{.a}{\code{boolean} - Create Voronoi diagram for input areas. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -a.}

\item{.s}{\code{boolean} - Extract skeletons for input areas. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.}

\item{.l}{\code{boolean} - Output tessellation as a graph (lines), not areas. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -l.}

\item{.t}{\code{boolean} - Do not create attribute table. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.}

\item{output}{\code{vectorDestination} - Voronoi. Path for new vector layer.}

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
QGIS Algorithm provided by GRASS v.voronoi.skeleton (grass7:v.voronoi.skeleton)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputVector - Voronoi
}
}
}
