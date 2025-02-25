##' QGIS Algorithm provided by GDAL Rearrange bands (gdal:rearrange_bands)
##'
##' @title QGIS algorithm Rearrange bands
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BANDS `band` - Selected band(s). Integer value representing an existing raster band number.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param DATA_TYPE `enum`  of `("Use Input Layer Data Type", "Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `rasterDestination` - Converted. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Converted
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_rearrange_bands <- function(INPUT = qgisprocess::qgis_default_value(), BANDS = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), DATA_TYPE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:rearrange_bands")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:rearrange_bands", `INPUT` = INPUT, `BANDS` = BANDS, `OPTIONS` = OPTIONS, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:rearrange_bands", `INPUT` = INPUT, `BANDS` = BANDS, `OPTIONS` = OPTIONS, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}