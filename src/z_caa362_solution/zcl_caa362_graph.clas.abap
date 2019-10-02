class zcl_caa362_graph definition
  public
  final
  create public .

  public section.
    interfaces:
      if_amdp_marker_hdb.

    types:
      tt_conn type standard table of zcaa362_spfli_edge with empty key.

    class-methods get_shortest_path
      importing value(im_cityfrom) type zcaa362_spfli-cityfrom
                value(im_cityto)   type zcaa362_spfli-cityto
      exporting value(ex_route)    type tt_conn.

    class-methods get_shortest_path_dis
      importing value(im_cityfrom) type zcaa362_spfli-cityfrom
                value(im_cityto)   type zcaa362_spfli-cityto
      exporting value(ex_route)    type tt_conn.

    class-methods graph for ddl object.
  protected section.
  private section.
endclass.



class zcl_caa362_graph implementation.
  method get_shortest_path by database procedure
    for hdb language graph options read-only
    using zcl_caa362_graph=>graph.
    Graph g = Graph ("ZCL_CAA362_GRAPH=>GRAPH");

    Vertex v_from = Vertex (:g, :im_cityfrom);
    Vertex v_to   = Vertex (:g, :im_cityto);

    WeightedPath<BigInt> p_path = Shortest_Path (:g, :v_from, :v_to);

    ex_route  = select :part.spfli,
                       :part.countryfr, :part.cityfrom, :part.airpfrom,
                       :part.countryto, :part.cityto, :part.airpto,
                       :part.distance, :part.distid
                foreach part in edges( :p_path );
  endmethod.

  method get_shortest_path_dis by database procedure
    for hdb language graph options read-only
    using zcl_caa362_graph=>graph.
    Graph g = Graph ("ZCL_CAA362_GRAPH=>GRAPH");

    Vertex v_from = Vertex (:g, :im_cityfrom);
    Vertex v_to   = Vertex (:g, :im_cityto);

    WeightedPath<BigInt> p_path = Shortest_Path (:g, :v_from, :v_to,
      (Edge flight) => BigInt{ return BigInt( :flight.distance ); }
    );

    ex_route  = select :part.spfli,
                       :part.countryfr, :part.cityfrom, :part.airpfrom,
                       :part.countryto, :part.cityto, :part.airpto,
                       :part.distance, :part.distid
                foreach part in edges( :p_path );
  endmethod.

  method graph by database graph workspace
    for hdb language sql
    using zcaa362_spfli_edge zcaa362_sgeocity_vertex.

    edge table zcaa362_spfli_edge
      source column cityfrom
      target column cityto
      key    column spfli
    vertex table zcaa362_sgeocity_vertex
      key    column city
  endmethod.
endclass.
