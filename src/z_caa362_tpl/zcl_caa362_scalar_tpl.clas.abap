class zcl_caa362_scalar_tpl definition
  public
  final
  create public .

  public section.
    types:
      ty_unit type c length 128.

    class-methods get_linear_distance
      importing im_coord1      type geom_ewkb
                im_coord2      type geom_ewkb
                im_unit        type ty_unit default 'kilometer'
      returning value(rt_dist) type int8.
  protected section.
  private section.
endclass.



class zcl_caa362_scalar_tpl implementation.
  method get_linear_distance.

  endmethod.
endclass.
