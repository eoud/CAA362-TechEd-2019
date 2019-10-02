class zcl_caa362_graph_tpl definition
  public
  final
  create public .

  public section.
    types:
      tt_conn type standard table of zcaa362_spfli_edge_tpl with empty key.

    class-methods get_shortest_path
      importing im_cityfrom type zcaa362_spfl_tpl-cityfrom
                im_cityto   type zcaa362_spfl_tpl-cityto
      exporting ex_route    type tt_conn.

    class-methods get_shortest_path_dis
      importing im_cityfrom type zcaa362_spfl_tpl-cityfrom
                im_cityto   type zcaa362_spfl_tpl-cityto
      exporting ex_route    type tt_conn.

    class-methods graph.
  protected section.
  private section.
endclass.



class zcl_caa362_graph_tpl implementation.
  method get_shortest_path.
*    Graph g = Graph ("ZCL_CAA362_GRAPH_TPL=>GRAPH");
*
*    Vertex v_from = Vertex (:g, :im_cityfrom);
*    Vertex v_to   = Vertex (:g, :im_cityto);
*
*    WeightedPath<BigInt> p_path = Shortest_Path (:g, :v_from, :v_to);
*
*    ex_route  = select :part.spfli,
*                       :part.countryfr, :part.cityfrom, :part.airpfrom,
*                       :part.countryto, :part.cityto, :part.airpto,
*                       :part.distance, :part.distid
*                foreach part in edges( :p_path );
  endmethod.

  method get_shortest_path_dis.
*    Graph g = Graph ("ZCL_CAA362_GRAPH_TPL=>GRAPH");
*
*    Vertex v_from = Vertex (:g, :im_cityfrom);
*    Vertex v_to   = Vertex (:g, :im_cityto);
*
*    WeightedPath<BigInt> p_path = Shortest_Path (:g, :v_from, :v_to,
*      (Edge flight) => BigInt{ return BigInt( :flight.distance ); }
*    );
*
*    ex_route  = select :part.spfli,
*                       :part.countryfr, :part.cityfrom, :part.airpfrom,
*                       :part.countryto, :part.cityto, :part.airpto,
*                       :part.distance, :part.distid
*                foreach part in edges( :p_path );
  endmethod.

  method graph.
  " BEWARE! WHEN DOING EXERCISE 2 THIS CLASS WILL HAVE SYNTAX ERRORS OVER MULTIPLE STEPS.
  " THIS IS FINE, SIMPLY FOLLOW THE INSTRUCTIONS UNTIL ALL ERRORS ARE RESOLVED.
  " YOU MAY DELETE THIS COMMENT.
  endmethod.
endclass.
