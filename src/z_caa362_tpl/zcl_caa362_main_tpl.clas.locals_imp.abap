*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations


class exercise_1 definition final.
  public section.
    methods run
      importing out type ref to if_oo_adt_classrun_out.

  private section.
    methods exercise_1_2
      importing out type ref to if_oo_adt_classrun_out.

    methods exercise_1_3
      importing out type ref to if_oo_adt_classrun_out.

endclass.



class exercise_1 implementation.

  method run.
    me->exercise_1_2( out ).
    me->exercise_1_3( out ).
  endmethod.


  method exercise_1_2.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " MAKE SURE THAT THE "exercise_selector" VARIABLE IN THE "main" METHOD IN THE GLOBAL CLASS TAB (LOCATED BELOW THIS SOURCE CODE WINDOW) IS SET TO 1.
    "
    " 1. SELECT all data from the CDS view "ZCAA362_COMPONENT_tpl"
    "    into an internal table name "result" defined by an inline declaration and display it on the ADT console.
    "     - Uncomment the first level of the SELECT statement and the OUT->WRITE statement
    "     - Replace the "_CDSVIEWNAME_" in the FROM clause with "zcaa362_component_tpl"
    "     - Replace the placeholder "_INLINE_RESULT_TAB_" with "@data(result)".
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 2. Restrict the result set such that it only contains screws which are part of a wheel.
    "    Use a WHERE condition on the field "category" of both the component and the its parent component.
    "    The latter condition is to be imposed by resolving the association _to_parent_component.
    "    - Uncomment the WHERE clause
    "    - Replace "_FIELD_" with "category"
    "    - Replace "_PATH_" with "\_to_parent_component-category"
    "    - Activate by pressing CTRL+F3, then execute by pressing F9
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

*    select
*       from _CDSVIEWNAME_
*       fields *
**       where _FIELD_ = 'Screw' and
**             _PATH_ = 'Wheel'
*       into table _INLINE_RESULT_TAB_.
*
*    out->write(
*      name = |\nComponent data read directly from CDS view:|
*      data = result
*    ).
  endmethod.

  method exercise_1_3.
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 1. Imitate the CDS view of the previous exercise with a CTE. Display the content on the console to make sure
    "    you are getting the same result. Take a look at the DDLS "ZCAA362_COMPONENT_tpl" to get an idea which
    "    database tables you need to use.
    "     - Uncomment the first level of the WITH-SELECT and the OUT->WRITE statement
    "     - In the SELECT definition of the CTE "view_content_as_cte" perform the following replacements:
    "       * "_COMPONENT_TABLE_" with "zcaa362_comp_tpl"
    "       * "_RELATION_TABLE_" with "zcaa362_rel_tpl"
    "       * "_JOIN_COND_" with "component~uuid = relation~uuid"
    "     - In the main SELECT statement replace the placeholder "_SOURCE_" in the FROM clause with the name
    "       "+view_content_as_cte" of the CTE
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 2. Impose the same restrictions on the result set as in part 2 of exercise_1_2. Do this by attaching the proper
    "    self-association on the CTE "+view_content_as_cte" and using the same WHERE clause as before.
    "     - Uncomment the association definition and WHERE clause
    "     - In the association definition replace the placeholder "_ASSOCIATION_CONDITION_" with the proper condition
    "       "+view_content_as_cte~parent_uuid = _to_parent_component~uuid"
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

*    with
*     +view_content_as_cte as (
*       select
*         from _COMPONENT_TABLE_ as component
*         left outer join _RELATION_TABLE_ as relation
*           on _JOIN_COND_
*         fields component~uuid,
*                relation~parent_uuid,
*                component~name,
*                component~category,
*                component~amount
*     )
**     with associations (
**       join to one +view_content_as_cte as _to_parent_component
**       on _ASSOCIATION_CONDITION_
**     )
*   select
*     from _SOURCE_
*     fields uuid,
*            parent_uuid,
*            name,
*            category,
*            amount
**     where category = 'Screw' and
**           \_to_parent_component-category = 'Wheel'
*     into table @data(result).
*
*    out->write(
*      name = |\nComponent data read from CTE:|
*      data = result
*    ).
  endmethod.
endclass.


class exercise_2 definition final.
  public section.
    methods run
      importing out type ref to if_oo_adt_classrun_out.

  private section.
    methods exercise_2_1and2
      importing out type ref to if_oo_adt_classrun_out.

    methods exercise_2_3.
endclass.

class exercise_2 implementation.

  method run.
    me->exercise_2_3( ).
    me->exercise_2_1and2( out ).
  endmethod.

  method exercise_2_1and2.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Exercise 2.1:
    " MAKE SURE THAT THE "exercise_selector" VARIABLE IN THE "main" METHOD IN THE GLOBAL CLASS TAB (LOCATED BELOW THIS SOURCE CODE WINDOW) IS SET TO 2.
    "
    " 1. Prepare CDS view "ZCAA362_SPFLI_EDGE_tpl" for usage in AMDP graph workspaces and AMDP
    "    graph procedures.
    "     - Concatenate key components "carrid" and "connid" into a single key component "spfli"
    "     - Cast component "distance" to type abap.int8
    "     - Activate the CDS view by pressing CTRL+F3
    "
    " 2. Define and implement an AMDP graph workspace in class "ZCL_CAA362_GRAPH_tpl".
    "     - Include marker interface "IF_AMDP_MARKER_HDB" in class "ZCL_CAA362_GRAPH_tpl"
    "     - Mark method "graph" as a DDL object container. Add "for ddl object" to the method definition
    "     - Mark method "graph" as a graph workspace written in language SQL. Append "by database graph workspace
    "       for hdb language sql" to the statement "method graph"
    "     - Define the edge table of your graph workspace, and its source, target and key columns.
    "       Add the following lines the the body of method "graph":
    "         "edge table zcaa362_spfli_edge
    "            source column cityfrom
    "            target column cityto
    "            key    column spfli"
    "     - Define the vertex table of your graph workspace and its key column.
    "       Add the following lines the the body of method "graph":
    "         "vertex table zcaa362_sgeocity_vertex
    "            key    column city"
    "     - Populate the using list of method "graph" by adding the source CDS views "zcaa362_spfli_edge"
    "       and "zcaa362_sgeocity_vertex" to it. Append "using zcaa362_spfli_edge zcaa362_sgeocity_vertex"
    "       to the statement "method graph"
    "     - Activate class "ZCL_CAA362_GRAPH_tpl" by pressing CTRL+F3, then switch to class
    "       "ZCL_CAA362_MAIN_tpl" and execute it by pressing F9
    "
    " Exercise 2.2:
    " 1. Define and implement your first AMDP graph procedure in class "ZCL_CAA362_GRAPH_tpl".
    "     - Pass the parameters of methods "get_shortest_path" by value instead of by reference. Substitute "PARAM"
    "       by "value(PARAM)", where PARAM is the name of the parameter, to each formal parameter definition.
    "     - Mark the method as a read-only graph procedure. Append "by database procedure for hdb language graph options read-only"
    "       to the statement "method get_shortest_path"
    "     - Populate the using list of the method by adding the used graph workspace "ZCL_CAA362_GRAPH_tpl=>graph" to it.
    "       Append "using ZCL_CAA362_GRAPH_tpl=>graph" to the "method get_shortest_path" statement
    "     - Implement the method by uncommenting the source lines inside of the procedure body
    "     - Activate class "ZCL_CAA362_GRAPH_tpl" by pressing CTRL+F3, then switch to class
    "       "ZCL_CAA362_MAIN_tpl" and execute it by pressing F9
    "
    " 2. Define and implement your second AMDP graph procedure in class "ZCL_CAA362_GRAPH_tpl".
    "     - Pass the parameters of methods "get_shortest_path_dis" by value instead of by reference. Substitute "PARAM"
    "       by "value(PARAM)", where PARAM is the name of the parameter, to each formal parameter definition.
    "     - Mark the method as a read-only graph procedure. Append "by database procedure for hdb language graph options read-only"
    "       to the statement "method get_shortest_path_dis"
    "     - Populate the using list of the method by adding the used graph workspace "ZCL_CAA362_GRAPH_tpl=>graph" to it.
    "       Append "using ZCL_CAA362_GRAPH_tpl=>graph" to the "method get_shortest_path_dis" statement
    "     - Implement the method by uncommenting the source lines inside of the procedure body
    "     - Activate class "ZCL_CAA362_GRAPH_tpl" by pressing CTRL+F3, then switch to class
    "       "ZCL_CAA362_MAIN_tpl" and execute it by pressing F9
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    data:
      lv_cityfrom type zcaa362_spfl_tpl-cityfrom,
      lv_cityto   type zcaa362_spfl_tpl-cityto,
      lv_distance type int8,
      lt_route    type zcl_caa362_graph_tpl=>tt_conn.

    lv_cityfrom = 'Nuernberg'.
    lv_cityto   = 'Rio De Janeiro'.

    " Calculate shortest flight route between Nuernberg and Rio de Janeiro
    " based on number of flights
    try.
        zcl_caa362_graph_tpl=>get_shortest_path(
          exporting
            im_cityfrom = lv_cityfrom
            im_cityto   = lv_cityto
          importing
            ex_route    = lt_route ).

        zcl_caa362_utility_tpl=>print_route(
          i_out       = out
          it_route    = lt_route
          iv_cityto   = lv_cityto
          iv_cityfrom = lv_cityfrom
          iv_type     = `Flights` ).

      catch before unwind cx_amdp_execution_failed into data(lr_exc).
        zcl_caa362_utility_tpl=>print_exception(
          ir_exc = lr_exc
          i_out  = out ).
    endtry.

    " Calculate shortest flight route between Nuernberg and Rio de Janeiro
    " based on flight distance
    try.
        zcl_caa362_graph_tpl=>get_shortest_path_dis(
          exporting
            im_cityfrom = lv_cityfrom
            im_cityto   = lv_cityto
          importing
            ex_route    = lt_route ).

        zcl_caa362_utility_tpl=>print_route(
          i_out        = out
          it_route     = lt_route
          iv_cityto    = lv_cityto
          iv_cityfrom  = lv_cityfrom
          iv_type     = `Distance` ).

      catch before unwind cx_amdp_execution_failed into lr_exc.
        zcl_caa362_utility_tpl=>print_exception(
          ir_exc = lr_exc
          i_out  = out ).
    endtry.
  endmethod.

  method exercise_2_3.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 1. Define and implement an AMDP scalar procedure in class "ZCL_CAA362_SCALAR_tpl".
    "     - Pass the parameters of methods "get_linear_distance" by value instead of by reference. Substitute "PARAM"
    "       by "value(PARAM)", where PARAM is the name of the parameter, to each formal parameter definition.
    "     - Mark the method as a read-only function. Append "by database function for hdb language sqlscript options read-only"
    "       to the statement "method get_shortest_path_dis"
    "     - Implement the method by uncommenting the source lines inside of the procedure body
    "     - Activate class "ZCL_CAA362_SCALAR_tpl" by pressing CTRL+F3, then switch to class
    "       "ZCL_CAA362_MAIN_tpl" and execute it by pressing F9
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    data:
      lv_cityfrom type zcaa362_spfl_tpl-cityfrom,
      lv_cityto   type zcaa362_spfl_tpl-cityto.

    lv_cityfrom = 'Nuernberg'.
    lv_cityto   = 'Rio De Janeiro'.

    " Insert new flight between Nuernberg and Rio de Janeiro
    zcl_caa362_utility_tpl=>insert_new_flight(
      im_cityfrom = lv_cityfrom
      im_cityto   = lv_cityto ).
  endmethod.
endclass.


class exercise_3 definition final.
  public section.
    methods run
      importing out type ref to if_oo_adt_classrun_out.

  private section.
    methods exercise_3_2
      importing out type ref to if_oo_adt_classrun_out.

    methods exercise_3_3
      importing out type ref to if_oo_adt_classrun_out.

    methods exercise_3_4
      importing out type ref to if_oo_adt_classrun_out.

    methods exercise_3_5
      importing out type ref to if_oo_adt_classrun_out.

    methods exercise_3_6
      importing out type ref to if_oo_adt_classrun_out.

endclass.

class exercise_3 implementation.

  method run.
    me->exercise_3_2( out ).
    me->exercise_3_3( out ).
    me->exercise_3_4( out ).
    me->exercise_3_5( out ).
    me->exercise_3_6( out ).
  endmethod.

  method exercise_3_2.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " MAKE SURE THAT THE "exercise_selector" VARIABLE IN THE "main" METHOD IN THE GLOBAL CLASS TAB (LOCATED BELOW THIS SOURCE CODE WINDOW) IS SET TO 3.
    "
    " 1. Read out the entire component hierarchy of the tricycle by using the hierarchy_descendants accessor
    "    function and print the result to the ADT console. Make sure you understand the role of the technical
    "    fields generated by the HANA hierarchy engine.
    "     - Uncomment the first level of the SELECT statement and the OUT->WRITE.
    "     - Replace the placeholder "_HIERARCHY_ENTITY_NAME_" with "zcaa362_component_hrchy_tpl"
    "     - Replace the placeholder "_START_CONDITION_" with either "name = 'Tricycle'" or "parent_uuid is initial"
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    "     - BONUS: Play around with the start condition and try to understand how and why the result set changes
    "
    " 2. Adjust the statement to only select screws which are part of the drivetrain. The first condition
    "    should be imposed using the WHERE clause of the main SELECT while the second condition should be imposed using
    "    the START WHERE clause of the hierarchy accessor function.
    "     - Replace your current START WHERE condition with "name = 'Drivetrain'"
    "     - Uncomment the WHERE clause and replace "_SCREW_CONDITION_" with "category = 'Screw'"
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 3. Answer for yourself the following question:
    "    Why would imposing the conditions from 2. be a lot more complicated if one could only follow the association
    "    by hand ?
    "
    "    Answer:
    "    The condition cannot be imposed in general by just one association step but may in general require
    "    resolving multiple association steps. In our case we need to resolve two steps for all members of the
    "    result set. This would still be possible to by hand, but it is not very elegant. Even worse, it would require
    "    prior knowledge about the structure of our data set. In the more general case one might need to resolve
    "    different numbers of association steps for different members of the result set.
    "
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

*    select
*      from hierarchy_descendants(
*        source _HIERARCHY_ENTITY_NAME_
*        start where _START_CONDITION_
*      )
*      fields name,
*             category,
*             amount,
*             hierarchy_rank,
*             hierarchy_parent_rank,
*             hierarchy_tree_size,
*             hierarchy_level
**      where _SCREW_CONDITION_
*      into table @data(result).
*
*    out->write(
*      name = |\nComponent data read from hierarchy using accessor function:|
*      data =  result
*    ).
  endmethod.

  method exercise_3_3.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 1. Access component data by directly selecting from the CDS hierarchy. Only select those screws which are part
    "    of a wheel. Make this condition robust against the actual structure of the data set by imposing the second
    "    condition on the ancestors of the screw nodes without using the hierarchy_descendants logic from exercise_3_2.
    "    Rather use the technical hierarchy fields to implement a self-join representing the ancestor relation.
    "     - Uncomment the first level of the SELECT statement and the OUT->WRITE statement
    "     - Replace the placeholders "_HIERARCHY_ENTITY_NAME_" with "zcaa362_component_hrchy_tpl"
    "     - Replace the placeholder "_SELF_JOIN_CONDITION_" with:

    "       parent~hierarchy_rank + parent~hierarchy_tree_size > child~hierarchy_rank and
    "       child~hierarchy_rank > parent~hierarchy_rank and
    "       parent~category = 'Wheel'
    "
    "      - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 2. Restrict the result set to all screws which are part of a wheel whose tire is black. Impose this additional
    "    condition in the global WHERE clause by using the "HIERARCHY_RANK" field of the parent and the
    "    "HIERARCHY_ANCESTORS" accessor function.
    "     - Uncomment the second level of the WHERE condition
    "     - Replace the placeholder "_BLACK_TIRE_CONDITION_" with "name = 'Black Tire'
    "     - Replace the placeholder "_COMPARISON_FIELD_" with "hierarchy_rank"
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

*    select
*      from _HIERARCHY_ENTITY_NAME_ as child
*        inner join _HIERARCHY_ENTITY_NAME_ as parent
*        on _SELF_JOIN_CONDITION_
*      fields child~name,
*             child~category,
*             child~amount,
*             child~hierarchy_rank,
*             child~hierarchy_parent_rank,
*             child~hierarchy_tree_size,
*             child~hierarchy_level
*      where child~category = 'Screw'
**            and parent~hierarchy_rank in ( select from hierarchy_ancestors(
**                  source zcaa362_component_hrchy_400
**                  start where _BLACK_TIRE_CONDITION_
**                  )
**                  fields
**                    _COMPARISON_FIELD_
**              )
*      into table @data(result).
*
*    out->write(
*      name = |\nComponent data read directly from hierarchy with conditions imposed through technical fields:|
*      data = result
*    ).
  endmethod.

  method exercise_3_4.
        """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 1. Use the "HIERARCHY_ANCESTORS_AGGREGATE" function on the CDS hierarchy "zcaa362_component_hrchy_tpl",
    "    to aggregate the amount of each component over the entire hierarchy. Then print the
    "    result to the ADT console.
    "     - Uncomment the first level of the WITH-SELECT statement as well as the OUT->WRITE statement.
    "     - Replace the placeholder "_HIERARCHY_AGGREGATION_ACCESSOR_" in the definition of CTE "+total_amount"
    "       with "hierarchy_ancestors_aggregate".
    "     - Replace the placeholder "_AGGREGATION_FUNCTION_" with "product( amount )"
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 2.  Join the cost information about atomic parts contained in "zcaa362_parts_tpl" to the previous result.
    "     Calculate the total cost for atomic parts as a new field by combining the cost information with the
    "     aggregated amount information. Print the result to the ADT console.
    "      - Uncomment the second level of the WITH-SELECT statement statement
    "      - Replace the placeholder "_JOIN_CONDITION_"  with "+total_amount~name = part~name"
    "      - Replace the placeholder "_TOTAL_COST_CALCULATION_" with "+total_amount~total_amount * part~cost"
    "      - Change the FROM clause of the main SELECT to "from +total_amount_with_leaf_cost"
    "      - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 3. Aggregate the total cost information for each node in the hierarchy as a new additional field.
    "    Display the result on the ADT console and then write it to the database table "zcaa362_aggr_tpl".
    "     - Uncomment the third level of the WITH-SELECT statement
    "     - In the definition of the CTE "+total_amounts_and_costs" replace the placeholder
    "       "_HIERARCHY_AGGREGATION_ACCESSOR_" with "hierarchy_descendants_aggregate"
    "     - Replace the placeholder "_JOIN_TABLE_" with "+total_amount_with_leaf_cost"
    "     - Replace the placeholder "_JOIN_CONDITION_RHS_" with "+total_amount_with_leaf_cost~hierarchy_rank"
    "     - Replace the placeholder "_AGGREGATION_FUNCTION_" with "sum( +total_amount_with_leaf_cost~total_cost )"
    "     - Change the FROM clause of the main SELECT to "from +total_amount_and_cost"
    "     - Uncomment the block of code prefaced with the comment "Write result to database table"
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

*    with
*      +total_amount as (
*        select
*          from _HIERARCHY_AGGREGATION_ACCESSOR_(
*            source zcaa362_component_hrchy_tpl
*            start where hierarchy_rank = 1
*            measures _AGGREGATION_FUNCTION_ as total_amount
*          )
*          fields hierarchy_rank,
*                 hierarchy_parent_rank,
*                 name,
*                 category,
*                 amount,
*                 total_amount
*      )
**      ,
**      +total_amount_with_leaf_cost as (
**        select
**          from +total_amount
**          left outer join zcaa362_part_tpl as part
**            on _JOIN_CONDITION_
**          fields +total_amount~hierarchy_rank,
**                 +total_amount~hierarchy_parent_rank,
**                 +total_amount~name,
**                 +total_amount~category,
**                 +total_amount~amount,
**                 +total_amount~total_amount,
**                 part~cost as cost,
**                 _TOTAL_COST_CALCULATION_ as total_cost
**      )
***      ,
***      +total_amount_and_cost as (
***        select
***          from _HIERARCHY_AGGREGATION_ACCESSOR_(
***            source zcaa362_component_hrchy_tpl as hierarchy
***            join _JOIN_TABLE_
***              on hierarchy~hierarchy_rank = _JOIN_CONDITION_RHS_
***            measures _AGGREGATION_FUNCTION_ as total_cost
***          ) as totals
***          inner join +total_amount_with_leaf_cost
***                  on totals~hierarchy_rank = +total_amount_with_leaf_cost~hierarchy_rank
***          fields totals~hierarchy_rank,
***                 totals~hierarchy_parent_rank,
***                 totals~name,
***                 totals~category,
***                 +total_amount_with_leaf_cost~amount,
***                 +total_amount_with_leaf_cost~total_amount,
***                 +total_amount_with_leaf_cost~cost,
***                 totals~total_cost
***      )
*    select
*      from +total_amount
*      fields hierarchy_rank,
*             hierarchy_parent_rank,
*             name,
*             category,
*             amount,
*             total_amount
**            ,cost
**            ,total_cost
*      into table @data(aggregation_result).
*
*    out->write(
*      name = |\nTotal amounts and cost per node:|
*      data = aggregation_result
*    ).

*    "Write result to database table
*    data aggregations_with_client type standard table of zcaa362_aggr_tpl.
*    move-corresponding aggregation_result to aggregations_with_client.
*    delete from zcaa362_aggr_tpl.
*    insert zcaa362_aggr_tpl from table @aggregations_with_client.
  endmethod.

  method exercise_3_5.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 1. Combine the results from exercise_3_3 with the concept of windowing in order to calculate the percentages
    "    of total costs per parent node, i.e. how is the total cost of any node distributed over its constituents.
    "    Sort the result table such that rows whose percentages add up to unity are next to each other and display
    "    it on the ADT console.
    "    - Uncomment the SELECT, SORT and OUT->WRITE statements
    "    - Replace "_AGGREGATION_RESULT_TABLE_" with "zcaa362_aggr_tpl"
    "    - Replace the placeholder "_PERCENTAGE_CALCULATION_" by "total_cost / sum( total_cost )"
    "    - Replace the placeholders "_WINDOWING_FIELD_" and "_SORTING_FIELD_" by "hierarchy_parent_rank"
    "    - Activate by pressing CTRL+F3, then execute by pressing F9
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*    select
*      from _AGGREGATION_RESULT_TABLE_
*      fields name,
*             hierarchy_rank,
*             hierarchy_parent_rank,
*             total_cost,
*             cast(
*               _PERCENTAGE_CALCULATION_ over( partition by _WINDOWING_FIELD_ )
*               as dec( 4,3 )
*             ) as cost_percentage
*      into table @data(result).
*
*    sort result by _SORTING_FIELD_.
*    out->write(
*      name = |\nTotal cost per node and related percentages per parent node:|
*      data = result
*    ).
  endmethod.

  method exercise_3_6.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 1. Again use the results from exercise_3_3 but now use a combination of grouping and windowing to calculate
    "    the total cost of the different types of screws and the percentage of this total cost in relation to the
    "    cost of all screws. Display the result on the ADT console.
    "     - Uncomment the SELECT and OUT->WRITE statements
    "     - Replace the placeholder "_TOTAL_COST_OF_TYPE_CALCULATION_" by "sum( total_cost )"
    "     - Replace the placeholder "_PERCENTAGE_CALCULATION_" by "sum( total_cost ) / sum( sum( total_cost ) )"
    "     - Replace the placeholder "_WINDOWING_FIELD_" by "category"
    "     - Replace the placeholder "_RESTRICT_TO_SCREWS_" with "category = 'Screw'"
    "     - Replace the placeholder "_GROUPING_FIELDS_" with "name, category"
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 2. Make sure you understand which of the "sum(...)" functions pertains to grouping aggregation and which to
    "    windowing aggregation.
    "
    "    Answer:
    "    The only "sum(...)" that belongs to windowing aggregation is the outer sum in
    "    "sum( total_cost ) / sum( sum( total_cost ) ) over( partition by category )" since it is the only aggregation
    "    function paired with an "over(...)" clause.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*    select
*      from zcaa362_aggr_tpl
*      fields name,
*             _TOTAL_COST_OF_TYPE_CALCULATION_ as total_cost_of_type,
*             cast(
*               _PERCENTAGE_CALCULATION_ over( partition by _WINDOWING_FIELD_ )
*               as dec( 4,3 )
*             ) as total_cost_percentage_of_type
*      where _RESTRICT_TO_SCREWS_
*      group by _GROUPING_FIELDS_
*      into table @data(result).
*
*    out->write(
*      name = |\nTotal cost of each type of screw and related percentage:|
*      data = result
*    ).
  endmethod.


endclass.
