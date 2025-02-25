##' QGIS Algorithm provided by QGIS (native c++) Dissolve (native:dissolve)
##'
##' @title QGIS algorithm Dissolve
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Dissolve field(s). The name of an existing field. ; delimited list of existing field names.
##' @param SEPARATE_DISJOINT `boolean` - Keep disjoint features separate. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Dissolved. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Dissolved
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_dissolve <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), SEPARATE_DISJOINT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:dissolve")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:dissolve", `INPUT` = INPUT, `FIELD` = FIELD, `SEPARATE_DISJOINT` = SEPARATE_DISJOINT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:dissolve", `INPUT` = INPUT, `FIELD` = FIELD, `SEPARATE_DISJOINT` = SEPARATE_DISJOINT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}