class zcl_caa362_utility definition
  public
  final
  create public .

  public section.

    class-methods insert_new_flight
      importing value(im_cityfrom) type zcaa362_spfli-cityfrom
                value(im_cityto)   type zcaa362_spfli-cityto.

    class-methods print_route
      importing
        i_out       type ref to if_oo_adt_classrun_out
        it_route    type zcl_caa362_graph=>tt_conn
        iv_cityto   type zcaa362_spfli-cityto
        iv_cityfrom type zcaa362_spfli-cityfrom
        iv_type     type string.

    class-methods print_exception
      importing
        i_out  type ref to if_oo_adt_classrun_out
        ir_exc type ref to cx_amdp_execution_failed.
  protected section.
  private section.
endclass.



class zcl_caa362_utility implementation.
  method insert_new_flight.
    select single from zcaa362_sgeocity fields * where city = @im_cityfrom
    into @data(lv_cityfrom).
    select single from zcaa362_sgeocity fields * where city = @im_cityto
      into @data(lv_cityto).
    select from zcaa362_spfli fields * into table @data(lt_spfli).

    data(distance) = zcl_caa362_scalar=>get_linear_distance(
      im_coord1 = lv_cityfrom-coordinate
      im_coord2 = lv_cityto-coordinate ).

    if distance is initial.
      return.
    endif.

    insert zcaa362_spfli from @( value zcaa362_spfli(
      carrid = 'LH'
      connid = 9000
      countryfr = lv_cityfrom-country
      cityfrom = lv_cityfrom-city
      countryto = lv_cityto-country
      cityto = lv_cityto-city
      distance = distance
      distid = 'KM' ) ).
  endmethod.

  method print_route.
    if i_out is bound.
      data(lv_distance) = 0.
      loop at it_route assigning field-symbol(<edge>).
        lv_distance += <edge>-distance.
      endloop.
      i_out->write( ` `
        )->write( |{ '' width = 80 pad = '-' }|
        )->write( |{ iv_cityfrom }->{ iv_cityto }({ iv_type })|
        )->write( |Flights: { lines( it_route ) } Distance: { lv_distance } KM|
        )->write( |{ '' width = 80 pad = '-' }|
        )->write( it_route
        ).
    endif.
  endmethod.

  method print_exception.
    if i_out is bound.
      i_out->write( name = 'Exception' data = replace( val = ir_exc->sql_message sub = ': "'
        with = ':' && cl_abap_char_utilities=>newline && '"' occ = 0 ) ).
    endif.
  endmethod.
endclass.
