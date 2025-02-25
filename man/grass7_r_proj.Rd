% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grass7_r_proj.R
\name{grass7_r_proj}
\alias{grass7_r_proj}
\title{QGIS algorithm r.proj}
\usage{
grass7_r_proj(
  input = qgisprocess::qgis_default_value(),
  crs = qgisprocess::qgis_default_value(),
  method = qgisprocess::qgis_default_value(),
  memory = qgisprocess::qgis_default_value(),
  resolution = qgisprocess::qgis_default_value(),
  .n = qgisprocess::qgis_default_value(),
  output = qgisprocess::qgis_default_value(),
  GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(),
  GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{input}{\code{raster} - Input raster to reproject. Path to a raster layer.}

\item{crs}{\code{crs} - New coordinate reference system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..}

\item{method}{\code{enum}  of \verb{("nearest", "bilinear", "bicubic", "lanczos", "bilinear_f", "bicubic_f", "lanczos_f")} - Interpolation method to use. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{memory}{\code{number} - Maximum memory to be used (in MB). A numeric value.}

\item{resolution}{\code{number} - Resolution of output raster map. A numeric value.}

\item{.n}{\code{boolean} - Do not perform region cropping optimization. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.}

\item{output}{\code{rasterDestination} - Reprojected raster. Path for new raster layer.}

\item{GRASS_REGION_PARAMETER}{\code{extent} - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..}

\item{GRASS_REGION_CELLSIZE_PARAMETER}{\code{number} - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.}

\item{GRASS_RASTER_FORMAT_OPT}{\code{string} - Output Rasters format options (createopt). String value.}

\item{GRASS_RASTER_FORMAT_META}{\code{string} - Output Rasters format metadata options (metaopt). String value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by GRASS r.proj (grass7:r.proj)
}
\details{
\subsection{Outputs description}{
\itemize{
\item output - outputRaster - Reprojected raster
}
}
}
