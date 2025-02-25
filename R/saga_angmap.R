##' QGIS Algorithm provided by SAGA Angmap (saga:angmap)
##'
##' @title QGIS algorithm Angmap
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param C `raster` - Dip grid (degrees). Path to a raster layer.
##' @param D `raster` - Dip direction grid (degrees). Path to a raster layer.
##' @param fB `number` - Global structure dip (degrees). A numeric value.
##' @param fC `number` - Global structure dip direction (degrees). A numeric value.
##' @param E `rasterDestination` - Angle. Path for new raster layer.
##' @param F `rasterDestination` - CL dipdir. Path for new raster layer.
##' @param G `rasterDestination` - CL dip. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * E - outputRaster - Angle
##' * F - outputRaster - CL dipdir
##' * G - outputRaster - CL dip
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_angmap <- function(DEM = qgisprocess::qgis_default_value(), C = qgisprocess::qgis_default_value(), D = qgisprocess::qgis_default_value(), fB = qgisprocess::qgis_default_value(), fC = qgisprocess::qgis_default_value(), E = qgisprocess::qgis_default_value(), F = qgisprocess::qgis_default_value(), G = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:angmap")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:angmap", `DEM` = DEM, `C` = C, `D` = D, `fB` = fB, `fC` = fC, `E` = E, `F` = F, `G` = G,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:angmap", `DEM` = DEM, `C` = C, `D` = D, `fB` = fB, `fC` = fC, `E` = E, `F` = F, `G` = G,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "E")
  }
}