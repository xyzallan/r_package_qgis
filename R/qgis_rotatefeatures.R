##' QGIS Algorithm provided by QGIS (native c++) Rotate (native:rotatefeatures)
##'
##' @title QGIS algorithm Rotate
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ANGLE `number` - Rotation (degrees clockwise). A numeric value.
##' @param ANCHOR `point` - Rotation anchor point. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param OUTPUT `sink` - Rotated. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Rotated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_rotatefeatures <- function(INPUT = qgisprocess::qgis_default_value(), ANGLE = qgisprocess::qgis_default_value(), ANCHOR = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:rotatefeatures")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:rotatefeatures", `INPUT` = INPUT, `ANGLE` = ANGLE, `ANCHOR` = ANCHOR, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:rotatefeatures", `INPUT` = INPUT, `ANGLE` = ANGLE, `ANCHOR` = ANCHOR, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}