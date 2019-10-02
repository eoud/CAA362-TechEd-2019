class zcl_caa362_scalar definition
  public
  final
  create public .

  public section.
    interfaces:
      if_amdp_marker_hdb.

    types:
      ty_unit type c length 128.

    class-methods get_linear_distance
      importing value(im_coord1) type geom_ewkb
                value(im_coord2) type geom_ewkb
                value(im_unit)   type ty_unit default 'kilometer'
      returning value(rt_dist)   type int8.
  protected section.
  private section.
endclass.



class zcl_caa362_scalar implementation.
  method get_linear_distance by database function
    for hdb language sqlscript options read-only.
    rt_dist = to_bigint( :im_coord1.st_distance( :im_coord2, :im_unit ));
  endmethod.
endclass.
