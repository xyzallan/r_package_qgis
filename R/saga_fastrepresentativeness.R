##' QGIS Algorithm provided by SAGA Fast representativeness (saga:fastrepresentativeness)
##'
##' @title QGIS algorithm Fast representativeness
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param LOD `number` - Level of Generalisation. A numeric value.
##' @param RESULT `rasterDestination` - Output. Path for new raster layer.
##' @param RESULT_LOD `rasterDestination` - Output Lod. Path for new raster layer.
##' @param SEEDS `rasterDestination` - Output Seeds. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Output
##' * RESULT_LOD - outputRaster - Output Lod
##' * SEEDS - outputRaster - Output Seeds
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fastrepresentativeness <- function(INPUT = qgisprocess::qgis_default_value(), LOD = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(), RESULT_LOD = qgisprocess::qgis_default_value(), SEEDS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fastrepresentativeness")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fastrepresentativeness", `INPUT` = INPUT, `LOD` = LOD, `RESULT` = RESULT, `RESULT_LOD` = RESULT_LOD, `SEEDS` = SEEDS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fastrepresentativeness", `INPUT` = INPUT, `LOD` = LOD, `RESULT` = RESULT, `RESULT_LOD` = RESULT_LOD, `SEEDS` = SEEDS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}