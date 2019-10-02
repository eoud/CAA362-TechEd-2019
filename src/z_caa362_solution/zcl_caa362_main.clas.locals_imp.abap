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
    " !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    " MAKE SURE THAT THE "exercise_selector" VARIABLE IN THE "main" METHOD
    " IN THE GLOBAL CLASS TAB (LOCATED BELOW THIS SOURCE CODE WINDOW) IS SET TO 1.
    " !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    "
    " 1. SELECT all data from the CDS view "zcaa362_component_###", where ### is your usernumber,
    "    into an internal table name "result" defined by an inline declaration and display it on the ADT console.
    "     - Uncomment the first level of the SELECT statement and the OUT->WRITE statement
    "     - Replace the "_CDSVIEWNAME_" in the FROM clause with "zcaa362_component_###"
    "     - Replace the placeholder "_INLINE_RESULT_TAB_" with "@data(result)".
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 2. Restrict the result set such that it only contains screws which are part of a wheel.
    "    Use a WHERE condition on the field "category" of both the component and the its parent component.
    "    The latter condition is to be imposed by resolving the association _to_parent_component
    "    - Uncomment the WHERE clause
    "    - Replace "_FIELD_" with "category"
    "    - Replace "_PATH_" with "\_to_parent_component-category"
    "    - Activate by pressing CTRL+F3, then execute by pressing F9
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    select
       from zcaa362_component
       fields *
       where category = 'Screw' and
             \_to_parent_component-category = 'Wheel'
       into table @data(result).

    out->write(
      name = |\nComponent data read directly from CDS view:|
      data = result
    ).
  endmethod.

  method exercise_1_3.
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 1. Imitate the CDS view of the previous exercise with a CTE. Display the content on the console to make sure
    "    you are getting the same result.
    "     - Uncomment the first level of the WITH-SELECT and the OUT-WRITE statement
    "     - In the SELECT definition of the CTE "view_content_as_cte" perform the following replacements:
    "       * "_COMPONENT_TABLE_" with "zcaa362_comp_###" where ### is your usernumber
    "       * "_RELATION_TABLE_" with "zcaa362_relation_###" where ### is your usernumber
    "       * "_JOIN_COND_" with "component~uuid = relation~uuid"
    "     - In the main SELECT statement replace the placeholder "_SOURCE_" in the FROM clause with the name
    "       "+view_content_as_cte" of the CTE
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 2. Impose the same restrictions on the result set as in part 2 of exercise_1_1. Do this by attaching the proper
    "    self-association on the CTE "+view_content_as_cte" and using the same WHERE clause as before.
    "     - Uncomment the association definition and WHERE clause
    "     - In the association definition replace the placeholder "_ASSOCIATION_CONDITION_" with the proper condition
    "       "+view_content_as_cte~parent_uuid = _to_parent_component~uuid"
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    with
     +view_content_as_cte as (
       select
         from zcaa362_comp as component
         left outer join zcaa362_rel as relation
           on component~uuid = relation~uuid
         fields component~uuid,
                relation~parent_uuid,
                component~name,
                component~category,
                component~amount
     )
     with associations (
       join to one +view_content_as_cte as _to_parent_component
       on +view_content_as_cte~parent_uuid = _to_parent_component~uuid
     )
   select
     from +view_content_as_cte
     fields uuid,
            parent_uuid,
            name,
            category,
            amount
     where category = 'Screw' and
           \_to_parent_component-category = 'Wheel'
     into table @data(result).

    out->write(
      name = |\nComponent data read from CTE:|
      data = result
    ).
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
    " !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    " MAKE SURE THAT THE "exercise_selector" VARIABLE IN THE "main" METHOD
    " IN THE GLOBAL CLASS TAB (LOCATED BELOW THIS SOURCE CODE WINDOW) IS SET TO 2.
    " !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    "
    " 1. Prepare CDS view "ZCAA362_SPFLI_EDGE_###", where ### is your usernumber,
    "    for usage in AMDP graph workspaces and AMDP graph procedures.
    "     - Concatenate key components "CARRID" and "CONNID" into a single key component "SPFLI"
    "     - Cast component "DISTANCE" (as "DISTANCE") to type ABAP.INT8
    "     - Activate the CDS view by pressing CTRL+F3
    "
    " 2. Define and implement an AMDP graph workspace in class "ZCL_CAA362_GRAPH_###", where ### is your
    "    username.
    "     - Include marker interface "IF_AMDP_MARKER_HDB" in class "ZCL_CAA362_GRAPH_###"
    "     - Mark method "GRAPH" as a DDL object container. Add "FOR DDL OBJECT" to the method definition
    "     - Mark method "GRAPH" as a graph workspace written in language SQL. Append "BY DATABASE GRAPH WORKSPACE
    "       FOR HDB LANGUAGE SQL" to the statement "METHOD GRAPH"
    "     - Define the edge table of your graph workspace, and its source, target and key columns.
    "       Add the following lines the the body of method "GRAPH":
    "         "EDGE TABLE ZCAA362_SPFLI_EDGE
    "            SOURCE COLUMN CITYFROM
    "            TARGET COLUMN CITYTO
    "            KEY    COLUMN SPFLI"
    "     - Define the vertex table of your graph workspace and its key column.
    "       Add the following lines the the body of method "GRAPH":
    "         "VERTEX TABLE ZCAA362_SGEOCITY_VERTEX
    "            KEY    COLUMN CITY"
    "     - Populate the using list of method "GRAPH" by adding the source CDS views "ZCAA362_SPFLI_EDGE"
    "       and "ZCAA362_SGEOCITY_VERTEX" to it. Append "USING ZCAA362_SPFLI_EDGE ZCAA362_SGEOCITY_VERTEX"
    "       to the statement "METHOD GRAPH"
    "     - Activate class "ZCL_CAA362_GRAPH_###" by pressing CTRL+F3, then switch to class
    "       "ZCL_CAA362_MAIN_###" and execute it by pressing F9
    "
    " Exercise 2.2:
    " 1. Define and implement your first AMDP graph procedure in class "ZCL_CAA362_GRAPH_###", where ### is your
    "    username.
    "     - Pass the parameters of methods "GET_SHORTEST_PATH" by value instead of by reference. Substitute "PARAM"
    "       by "VALUE(PARAM)", where PARAM is the name of the parameter, to each formal parameter definition.
    "     - Mark the method as a read-only graph procedure. Append "BY DATABASE PROCEDURE FOR HDB LANGUAGE GRAPH OPTIONS READ-ONLY"
    "       to the statement "METHOD GET_SHORTEST_PATH"
    "     - Populate the using list of the method by adding the used graph workspace "ZCL_CAA362_GRAPH_###=>GRAPH",
    "       where ### is your username, to it. Append "using ZCL_CAA362_GRAPH_###=>GRAPH" to the "METHOD GET_SHORTEST_PATH"
    "       statement
    "     - Implement the method by uncommenting the source lines inside of the procedure body
    "     - Activate class "ZCL_CAA362_GRAPH_###" by pressing CTRL+F3, then switch to class
    "       "ZCL_CAA362_MAIN_###" and execute it by pressing F9
    "
    " 2. Define and implement your second AMDP graph procedure in class "ZCL_CAA362_GRAPH_###", where ### is your
    "    username.
    "     - Pass the parameters of methods "get_shortest_path_dis" by value instead of by reference. Substitute "PARAM"
    "       by "VALUE(PARAM)", where PARAM is the name of the parameter, to each formal parameter definition.
    "     - Mark the method as a read-only graph procedure. Append "BY DATABASE PROCEDURE FOR HDB LANGUAGE GRAPH OPTIONS READ-ONLY"
    "       to the statement "METHOD GET_SHORTEST_PATH_DIS"
    "     - Populate the USING clause of the method by adding the used graph workspace "ZCL_CAA362_GRAPH_###=>GRAPH",
    "       where ### is your username, to it. Append "USING ZCL_CAA362_GRAPH_###=>GRAPH" to the "METHOD GET_SHORTEST_PATH_DIS"
    "       statement
    "     - Implement the method by uncommenting the source lines inside of the procedure body
    "     - Activate class "ZCL_CAA362_GRAPH_###" by pressing CTRL+F3, then switch to class
    "       "ZCL_CAA362_MAIN_###" and execute it by pressing F9
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    data:
      lv_cityfrom type zcaa362_spfli-cityfrom,
      lv_cityto   type zcaa362_spfli-cityto,
      lv_distance type int8,
      lt_route    type zcl_caa362_graph=>tt_conn.

    lv_cityfrom = 'Nuernberg'.
    lv_cityto   = 'Rio De Janeiro'.

    " Calculate shortest flight route between Nuernberg and Rio de Janeiro
    " based on number of flights
    try.
        zcl_caa362_graph=>get_shortest_path(
          exporting
            im_cityfrom = lv_cityfrom
            im_cityto   = lv_cityto
          importing
            ex_route    = lt_route ).

        zcl_caa362_utility=>print_route(
          i_out       = out
          it_route    = lt_route
          iv_cityto   = lv_cityto
          iv_cityfrom = lv_cityfrom
          iv_type     = `Flights` ).

      catch before unwind cx_amdp_execution_failed into data(lr_exc).
        zcl_caa362_utility=>print_exception(
          ir_exc = lr_exc
          i_out  = out ).
    endtry.

    " Calculate shortest flight route between Nuernberg and Rio de Janeiro
    " based on flight distance
    try.
        zcl_caa362_graph=>get_shortest_path_dis(
          exporting
            im_cityfrom = lv_cityfrom
            im_cityto   = lv_cityto
          importing
            ex_route    = lt_route ).

        zcl_caa362_utility=>print_route(
          i_out        = out
          it_route     = lt_route
          iv_cityto    = lv_cityto
          iv_cityfrom  = lv_cityfrom
          iv_type     = `Distance` ).

      catch before unwind cx_amdp_execution_failed into lr_exc.
        zcl_caa362_utility=>print_exception(
          ir_exc = lr_exc
          i_out  = out ).
    endtry.
  endmethod.

  method exercise_2_3.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 1. Define and implement an AMDP scalar procedure in class "ZCL_CAA362_SCALAR_###", where ### is your
    "    username.
    "     - Pass the parameters of methods "get_linear_distance" by value instead of by reference. Substitute "PARAM"
    "       by "VALUE(PARAM)", where PARAM is the name of the parameter, to each formal parameter definition.
    "     - Mark the method as a read-only function. Append "BY DATABASE FUNCTION FOR HDB LANGUAGE SQLSCRIPT OPTIONS READ-ONLY"
    "       to the statement "method get_shortest_path_dis"
    "     - Implement the method by uncommenting the source lines inside of the procedure body
    "     - Activate class "ZCL_CAA362_SCALAR_###" by pressing CTRL+F3, then switch to class
    "       "ZCL_CAA362_MAIN_###" and execute it by pressing F9
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    data:
      lv_cityfrom type zcaa362_spfli-cityfrom,
      lv_cityto   type zcaa362_spfli-cityto.

    lv_cityfrom = 'Nuernberg'.
    lv_cityto   = 'Rio De Janeiro'.

    " Insert new flight between Nuernberg and Rio de Janeiro
    zcl_caa362_utility=>insert_new_flight(
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
    " !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    " MAKE SURE THAT THE "exercise_selector" VARIABLE IN THE "main" METHOD
    " IN THE GLOBAL CLASS TAB (LOCATED BELOW THIS SOURCE CODE WINDOW) IS SET TO 1.
    " !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    "
    " 1. Read out the entire component hierarchy of the tricycle by using the hierarchy_descendants accessor
    "    function and print the result to the ADT console. Make sure you understand the role of the technical
    "    fields generated by the HANA hierarchy engine.
    "     - Uncomment the first level of the SELECT statement and the OUT->WRITE.
    "     - Replace the placeholder "_HIERARCHY_ENTITY_NAME_" with "zcaa362_component_hrchy_###" where ### is your user number
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

    select
      from hierarchy_descendants(
        source zcaa362_component_hrchy
        start where name = 'Tricycle'
        "start where name = 'Drivetrain'
      )
      fields name,
             category,
             amount,
             hierarchy_rank,
             hierarchy_parent_rank,
             hierarchy_tree_size,
             hierarchy_level
      "where category = 'Screw'
      into table @data(result).

    out->write(
      name = |\nComponent data read from hierarchy using accesor function:|
      data =  result
    ).
  endmethod.

  method exercise_3_3.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 1. Access component data by directly selecting from the CDS hierarchy. Only select those screws which are part
    "    of a wheel. Make this condition robust against the actual structure of the data set by imposing the second
    "    condition on the ancestors of the screw nodes without using the hierarchy_descendants logic from exercise_3_1.
    "    Rather use the technical hierarchy fields to implement a self-join representing the ancestor relation.
    "     - Uncomment the first level of the SELECT statement and the OUT->WRITE statement
    "     - Replace the placeholder "_HIERARCHY_ENTITY_NAME_" with "zcaa362_component_hrchy_###" where ### is your usernumber
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
    "     - Replace the placeholder "_IN_CONDITION_SET_" with:
    "
    "       ( select from hierarchy_ancestors(
    "           source zcaa362_component_hrchy_###
    "           start where name = 'Black Tire'
    "         )
    "         fields hierarchy_rank
    "       )
    "
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 3. Answer for yourself the following question:
    "    Why would it be impossible(?) to impose the conditions of 2. as formulated above on the result set without
    "    using the technical hierarchy fields?
    "
    "    Answer:
    "    The "black tire condition" is a condition on the relatives of the ancestors of our
    "    desired result set. This means we need the information about the ancestors directly bundled with the possible
    "    result set to impose this condition. It is not possible to select the descendants of wheels with
    "    "HIERARCHY_DESCENDANTS" and then use the WHERE clause to impose the condition that their
    "    ancestors have a "black tire" descendant, because "HIERARCHY_DESCENDANTS" only returns individual node data,
    "    but not the necessary combined information. THIS NEEDS REPHRASING!
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    select
      from zcaa362_component_hrchy as child
        inner join zcaa362_component_hrchy as parent
        on parent~hierarchy_rank + parent~hierarchy_tree_size > child~hierarchy_rank and
           child~hierarchy_rank > parent~hierarchy_rank and
           parent~category = 'Wheel'
      fields child~name,
             child~category,
             child~amount,
             child~hierarchy_rank,
             child~hierarchy_parent_rank,
             child~hierarchy_tree_size,
             child~hierarchy_level
      where child~category = 'Screw'
            and parent~hierarchy_rank in (
              select from hierarchy_ancestors(
                source zcaa362_component_hrchy
                start where name = 'Black Tire'
              )
              fields hierarchy_rank
            )
      into table @data(result).

    out->write(
      name = |\nComponent data read directly from hierarchy with conditions imposed through technical fields:|
      data = result
    ).
  endmethod.

  method exercise_3_4.
        """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 1. Use the "HIERARCHY_ANCESTORS_AGGREGATE" function on the CDS hierarchy "HIERARCHYNAME_###", where ### is your
    "    username, to aggregate the amount of each component over the entire hierarchy. Then print the
    "    result to the ADT console.
    "     - Uncomment the first level of the WITH-SELECT statement as well as the OUT->WRITE statement.
    "     - Replace the placeholder "_HIERARCHY_AGGREGATION_ACCESSOR_" in the definition of CTE "+total_amount"
    "       with "hierarchy_ancestors_aggregate".
    "     - Replace "###" in "HIERARCHYNAME_###" with your usernumber
    "     - Replace the placeholder "_AGGREGATION_FUNCTION_" with "product( amount )"
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 2.  Join the cost information about atomic parts contained in "zcaa362_parts_###" to the previous result.
    "     Calculate the total cost for atomic parts as a new field by combining the cost information with the
    "     aggregated amount information. Print the result to the ADT console.
    "      - Uncomment the second level of the WITH-SELECT statement statement
    "      - Change the ### in "zcaa362_parts_###" to your usernumber
    "      - Replace the placeholder "_JOIN_CONDITION_"  with "+total_amount~name = parts~name"
    "      - Replace the placeholder "_TOTAL_COST_CALCULATION_" with "+total_amount~total_amount * parts~cost"
    "      - Change the FROM clause of the main SELECT to "from +total_amounts_with_leaf_costs"
    "      - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 3. Aggregate the total cost information for each node in the hierarchy as a new additional field.
    "    Display the result on the ADT console and then write it to the database table "zcaa362_aggr_###".
    "     - Uncomment the third level of the WITH-SELECT statement
    "     - In the definition of the CTE "+total_amounts_and_costs" replace the placeholder
    "       "_HIERARCHY_AGGREGATION_ACCESOR_" with "hierarchy_descendants_aggregate"
    "     - Replace ### in "zcaa362_component_hrchy_###" with your usernumber
    "     - Replace the placeholder "_JOIN_TABLE_" with "+total_amount_with_leaf_cost"
    "     - Replace the placeholder "_JOIN_CONDITION_RHS_" with "+total_amount_with_leaf_cost~hierarchy_rank"
    "     - Replace the placeholder "_AGGREGATION_FUNCTION_" with "sum( +total_amount_with_leaf_cost~total_cost )"
    "     - Change the FROM clause of the main SELECT to "from +total_amount_and_cost"
    "     - Uncomment the block of code prefaced with the comment "Write result to database table"
    "     - Replace all instances of ### with your usernumber
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    with
      +total_amount as (
        select
          from hierarchy_ancestors_aggregate(
            source zcaa362_component_hrchy
            start where hierarchy_rank = 1
            measures product( amount ) as total_amount
          )
          fields hierarchy_rank,
                 hierarchy_parent_rank,
                 name,
                 category,
                 amount,
                 total_amount
      )
      ,
      +total_amount_with_leaf_cost as (
        select
          from +total_amount
          left outer join zcaa362_part as part
            on +total_amount~name = part~name
          fields +total_amount~hierarchy_rank,
                 +total_amount~hierarchy_parent_rank,
                 +total_amount~name,
                 +total_amount~category,
                 +total_amount~amount,
                 +total_amount~total_amount,
                 part~cost as cost,
                 +total_amount~total_amount * part~cost as total_cost
      )
      ,
      +total_amount_and_cost as (
        select
          from hierarchy_descendants_aggregate(
            source zcaa362_component_hrchy as hierarchy
            join +total_amount_with_leaf_cost
              on hierarchy~hierarchy_rank = +total_amount_with_leaf_cost~hierarchy_rank
            measures sum( +total_amount_with_leaf_cost~total_cost ) as total_cost
          ) as totals
          inner join +total_amount_with_leaf_cost
                  on totals~hierarchy_rank = +total_amount_with_leaf_cost~hierarchy_rank
          fields totals~hierarchy_rank,
                 totals~hierarchy_parent_rank,
                 totals~name,
                 totals~category,
                 +total_amount_with_leaf_cost~amount,
                 +total_amount_with_leaf_cost~total_amount,
                 +total_amount_with_leaf_cost~cost,
                 totals~total_cost
      )
    select
      from +total_amount_and_cost
      fields hierarchy_rank,
             hierarchy_parent_rank,
             name,
             category,
             amount,
             total_amount,
             cost,
             total_cost
      into table @data(aggregation_result).

    out->write(
      name = |\nTotal amounts and cost per node:|
      data = aggregation_result
    ).

    "Write result to database table
    data aggregations_with_client type standard table of zcaa362_aggr.
    move-corresponding aggregation_result to aggregations_with_client.
    delete from zcaa362_aggr.
    insert zcaa362_aggr from table @aggregations_with_client.
  endmethod.

  method exercise_3_5.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 1. Combine the results from exercise_3_3 with the concept of windowing in order to calculate the percentages
    "    of total costs per parent node, i.e. how is the total cost of any node distributed over its constituents.
    "    Sort the result table such that rows whose percentages add up to unity are next to each other and display
    "    it on the ADT console.
    "    - Uncomment the SELECT, SORT and OUT->WRITE statements
    "    - Replace ### in"zcaa362_aggr_###" with your usernumber
    "    - Replace the placeholder "_PERCENTAGE_CALCULATION_" by "total_cost / sum( total_cost )"
    "    - Replace the placeholders "_WINDOWING_FIELD_" and "_SORTING_FIELD_" by "hierarchy_parent_rank"
    "    - Activate by pressing CTRL+F3, then execute by pressing F9
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    select
      from zcaa362_aggr
      fields name,
             hierarchy_rank,
             hierarchy_parent_rank,
             total_cost,
             cast(
               total_cost / sum( total_cost ) over( partition by hierarchy_parent_rank )
               as dec( 4,3 )
             ) as cost_percentage
      into table @data(result).

    sort result by hierarchy_parent_rank.
    out->write(
      name = |\nTotal cost per node and related percentages per parent node:|
      data = result
    ).
  endmethod.

  method exercise_3_6.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 1. Again use the results from exercise_3_3 but now use a combination of grouping and windowing to calculate
    "    the total cost of the different types of screws and the percentage of this total cost in relation to the
    "    cost of all screws. Display the result on the ADT console.
    "     - Uncomment the SELECT and OUT->WRITE statements
    "     - Replace ### in"zcaa362_aggr_###" with your usernumber
    "     - Replace the placeholder "_TOTAL_COST_OF_TYPE_CALCULATION_" by "sum( total_cost )"
    "     - Replace the placeholder "_PERCENTAGE_CALCULATION_" by "sum( total_cost ) / sum( sum( total_cost ) )"
    "     - Replace the placeholder "_WINDOWING_FIELD_" by "category"
    "     - Replace the placeholder "_RESTRICT_TO_SCREWS_" with "category = 'Screw'"
    "     - Replace the placeholder "_GROUPING_FIELDS_" with "name, category"
    "     - Activate by pressing CTRL+F3, then execute by pressing F9
    "
    " 2. Make sure you understand which of the "sum(...)" functions pertains to grouping aggregation and which to
    "    windowing aggregation.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    select
      from zcaa362_aggr
      fields name,
             sum( total_cost ) as total_cost_of_type,
             cast(
              sum( total_cost ) / sum( sum( total_cost ) ) over( partition by category )
              as dec( 4,3 )
             ) as total_cost_percentage_of_type
      where category = 'Screw'
      group by name, category
      into table @data(result).

    out->write(
      name = |\nTotal cost of each type of screw and related percentage:|
      data = result
    ).
  endmethod.


endclass.
