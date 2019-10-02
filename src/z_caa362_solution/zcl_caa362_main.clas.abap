class zcl_caa362_main definition
  public
  final
  create public .

  public section.
    interfaces if_oo_adt_classrun.

  private section.
    class-data exercise_selector type i.

endclass.



class zcl_caa362_main implementation.
  method if_oo_adt_classrun~main.
    " Fill DB tables
    zcl_caa362_tab_gen=>gen_entries(  ).

    " Select exercise 1,2 or 3
    exercise_selector = 0.

    case exercise_selector.
      when 1.
        new exercise_1( )->run( out ).

      when 2.
        new exercise_2( )->run( out ).

      when 3.
        new exercise_3( )->run( out ).

      when others.
        out->write( |Database tables have been filled.\nTo execute exercise methods please set exercise_selector in the global class tab to 1,2 or 3 accordingly.| ).
    endcase.
  endmethod.
endclass.
