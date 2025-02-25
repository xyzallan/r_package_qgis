##' QGIS Algorithm provided by SAGA Variable distance buffer (saga:variabledistancebuffer)
##'
##' @title QGIS algorithm Variable distance buffer
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param DIST_FIELD `field` - Buffer Distance. The name of an existing field. ; delimited list of existing field names.
##' @param DIST_SCALE `number` - Scaling Factor for Attribute Value. A numeric value.
##' @param NZONES `number` - Number of Buffer Zones. A numeric value.
##' @param DARC `number` - Arc Vertex Distance (Degree). A numeric value.
##' @param BUFFER `vectorDestination` - Buffer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BUFFER - outputVector - Buffer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_variabledistancebuffer <- function(SHAPES = qgisprocess::qgis_default_value(), DIST_FIELD = qgisprocess::qgis_default_value(), DIST_SCALE = qgisprocess::qgis_default_value(), NZONES = qgisprocess::qgis_default_value(), DARC = qgisprocess::qgis_default_value(), BUFFER = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:variabledistancebuffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:variabledistancebuffer", `SHAPES` = SHAPES, `DIST_FIELD` = DIST_FIELD, `DIST_SCALE` = DIST_SCALE, `NZONES` = NZONES, `DARC` = DARC, `BUFFER` = BUFFER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:variabledistancebuffer", `SHAPES` = SHAPES, `DIST_FIELD` = DIST_FIELD, `DIST_SCALE` = DIST_SCALE, `NZONES` = NZONES, `DARC` = DARC, `BUFFER` = BUFFER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BUFFER")
  }
}