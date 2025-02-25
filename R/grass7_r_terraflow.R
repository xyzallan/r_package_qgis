##' QGIS Algorithm provided by GRASS r.terraflow (grass7:r.terraflow)
##'
##' @title QGIS algorithm r.terraflow
##'
##' @param elevation `raster` - Name of elevation raster map. Path to a raster layer.
##' @param .s `boolean` - SFD (D8) flow (default is MFD). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.
##' @param d8cut `number` - Routing using SFD (D8) direction. A numeric value.
##' @param memory `number` - Maximum memory to be used (in MB). A numeric value.
##' @param filled `rasterDestination` - Filled (flooded) elevation. Path for new raster layer.
##' @param direction `rasterDestination` - Flow direction. Path for new raster layer.
##' @param swatershed `rasterDestination` - Sink-watershed. Path for new raster layer.
##' @param accumulation `rasterDestination` - Flow accumulation. Path for new raster layer.
##' @param tci `rasterDestination` - Topographic convergence index (tci). Path for new raster layer.
##' @param stats `fileDestination` - Runtime statistics. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * accumulation - outputRaster - Flow accumulation
##' * direction - outputRaster - Flow direction
##' * filled - outputRaster - Filled (flooded) elevation
##' * stats - outputFile - Runtime statistics
##' * swatershed - outputRaster - Sink-watershed
##' * tci - outputRaster - Topographic convergence index (tci)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_terraflow <- function(elevation = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), d8cut = qgisprocess::qgis_default_value(), memory = qgisprocess::qgis_default_value(), filled = qgisprocess::qgis_default_value(), direction = qgisprocess::qgis_default_value(), swatershed = qgisprocess::qgis_default_value(), accumulation = qgisprocess::qgis_default_value(), tci = qgisprocess::qgis_default_value(), stats = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.terraflow")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.terraflow", `elevation` = elevation, `-s` = .s, `d8cut` = d8cut, `memory` = memory, `filled` = filled, `direction` = direction, `swatershed` = swatershed, `accumulation` = accumulation, `tci` = tci, `stats` = stats, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.terraflow", `elevation` = elevation, `-s` = .s, `d8cut` = d8cut, `memory` = memory, `filled` = filled, `direction` = direction, `swatershed` = swatershed, `accumulation` = accumulation, `tci` = tci, `stats` = stats, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "accumulation")
  }
}