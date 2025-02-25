##' QGIS Algorithm provided by SAGA Raster difference (saga:rasterdifference)
##'
##' @title QGIS algorithm Raster difference
##'
##' @param A `raster` - A. Path to a raster layer.
##' @param B `raster` - B. Path to a raster layer.
##' @param C `rasterDestination` - Difference (A - B). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * C - outputRaster - Difference (A - B)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasterdifference <- function(A = qgisprocess::qgis_default_value(), B = qgisprocess::qgis_default_value(), C = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:rasterdifference")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:rasterdifference", `A` = A, `B` = B, `C` = C,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:rasterdifference", `A` = A, `B` = B, `C` = C,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "C")
  }
}