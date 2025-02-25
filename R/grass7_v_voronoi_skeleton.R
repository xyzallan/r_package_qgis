##' QGIS Algorithm provided by GRASS v.voronoi.skeleton (grass7:v.voronoi.skeleton)
##'
##' @title QGIS algorithm v.voronoi.skeleton
##'
##' @param input `source` - Input polygons layer. Path to a vector layer.
##' @param smoothness `number` - Factor for output smoothness. A numeric value.
##' @param thin `number` - Maximum dangle length of skeletons (-1 will extract the center line). A numeric value.
##' @param .a `boolean` - Create Voronoi diagram for input areas. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -a.
##' @param .s `boolean` - Extract skeletons for input areas. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.
##' @param .l `boolean` - Output tessellation as a graph (lines), not areas. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -l.
##' @param .t `boolean` - Do not create attribute table. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param output `vectorDestination` - Voronoi. Path for new vector layer.
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
##' * output - outputVector - Voronoi
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_voronoi_skeleton <- function(input = qgisprocess::qgis_default_value(), smoothness = qgisprocess::qgis_default_value(), thin = qgisprocess::qgis_default_value(), .a = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), .l = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:v.voronoi.skeleton")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:v.voronoi.skeleton", `input` = input, `smoothness` = smoothness, `thin` = thin, `-a` = .a, `-s` = .s, `-l` = .l, `-t` = .t, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:v.voronoi.skeleton", `input` = input, `smoothness` = smoothness, `thin` = thin, `-a` = .a, `-s` = .s, `-l` = .l, `-t` = .t, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}