##' QGIS Algorithm provided by GRASS v.lidar.correction (grass7:v.lidar.correction)
##'
##' @title QGIS algorithm v.lidar.correction
##'
##' @param input `source` - Input vector layer (v.lidar.growing output). Path to a vector layer.
##' @param ew_step `number` - Length of each spline step in the east-west direction. A numeric value.
##' @param ns_step `number` - Length of each spline step in the north-south direction. A numeric value.
##' @param lambda_c `number` - Regularization weight in reclassification evaluation. A numeric value.
##' @param tch `number` - High threshold for object to terrain reclassification. A numeric value.
##' @param tcl `number` - Low threshold for terrain to object reclassification. A numeric value.
##' @param .e `boolean` - Estimate point density and distance. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -e.
##' @param output `vectorDestination` - Classified. Path for new vector layer.
##' @param terrain `vectorDestination` - Only 'terrain' points. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputVector - Classified
##' * terrain - outputVector - Only 'terrain' points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_lidar_correction <- function(input = qgisprocess::qgis_default_value(), ew_step = qgisprocess::qgis_default_value(), ns_step = qgisprocess::qgis_default_value(), lambda_c = qgisprocess::qgis_default_value(), tch = qgisprocess::qgis_default_value(), tcl = qgisprocess::qgis_default_value(), .e = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), terrain = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:v.lidar.correction")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:v.lidar.correction", `input` = input, `ew_step` = ew_step, `ns_step` = ns_step, `lambda_c` = lambda_c, `tch` = tch, `tcl` = tcl, `-e` = .e, `output` = output, `terrain` = terrain, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:v.lidar.correction", `input` = input, `ew_step` = ew_step, `ns_step` = ns_step, `lambda_c` = lambda_c, `tch` = tch, `tcl` = tcl, `-e` = .e, `output` = output, `terrain` = terrain, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}