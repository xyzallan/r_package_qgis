##' QGIS Algorithm provided by SAGA Geodesic morphological reconstruction (saga:geodesicmorphologicalreconstruction)
##'
##' @title QGIS algorithm Geodesic morphological reconstruction
##'
##' @param INPUT_GRID `raster` - Input Grid. Path to a raster layer.
##' @param OBJECT_GRID `rasterDestination` - Object Grid. Path for new raster layer.
##' @param DIFFERENCE_GRID `rasterDestination` - Difference Input - Reconstruction. Path for new raster layer.
##' @param SHIFT_VALUE `number` - Shift value. A numeric value.
##' @param BORDER_YES_NO `boolean` - Preserve 1px border Yes/No. 1 for true/yes. 0 for false/no.
##' @param BIN_YES_NO `boolean` - Create a binary mask Yes/No. 1 for true/yes. 0 for false/no.
##' @param THRESHOLD `number` - Threshold. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DIFFERENCE_GRID - outputRaster - Difference Input - Reconstruction
##' * OBJECT_GRID - outputRaster - Object Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_geodesicmorphologicalreconstruction <- function(INPUT_GRID = qgisprocess::qgis_default_value(), OBJECT_GRID = qgisprocess::qgis_default_value(), DIFFERENCE_GRID = qgisprocess::qgis_default_value(), SHIFT_VALUE = qgisprocess::qgis_default_value(), BORDER_YES_NO = qgisprocess::qgis_default_value(), BIN_YES_NO = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:geodesicmorphologicalreconstruction")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:geodesicmorphologicalreconstruction", `INPUT_GRID` = INPUT_GRID, `OBJECT_GRID` = OBJECT_GRID, `DIFFERENCE_GRID` = DIFFERENCE_GRID, `SHIFT_VALUE` = SHIFT_VALUE, `BORDER_YES_NO` = BORDER_YES_NO, `BIN_YES_NO` = BIN_YES_NO, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:geodesicmorphologicalreconstruction", `INPUT_GRID` = INPUT_GRID, `OBJECT_GRID` = OBJECT_GRID, `DIFFERENCE_GRID` = DIFFERENCE_GRID, `SHIFT_VALUE` = SHIFT_VALUE, `BORDER_YES_NO` = BORDER_YES_NO, `BIN_YES_NO` = BIN_YES_NO, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DIFFERENCE_GRID")
  }
}