##' QGIS Algorithm provided by SAGA User defined filter (saga:userdefinedfilter)
##'
##' @title QGIS algorithm User defined filter
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param FILTER `source` - Filter Matrix. Path to a vector layer.
##' @param FILTER_3X3 `matrix` - Default Filter Matrix (3x3). A comma delimited list of values.
##' @param RESULT `rasterDestination` - Filtered Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Filtered Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_userdefinedfilter <- function(INPUT = qgisprocess::qgis_default_value(), FILTER = qgisprocess::qgis_default_value(), FILTER_3X3 = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:userdefinedfilter")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:userdefinedfilter", `INPUT` = INPUT, `FILTER` = FILTER, `FILTER_3X3` = FILTER_3X3, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:userdefinedfilter", `INPUT` = INPUT, `FILTER` = FILTER, `FILTER_3X3` = FILTER_3X3, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}