@AbapCatalog.sqlViewName: 'ZCAA362COMPTPL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'TechEd 2019 Hands-On CAA362 - Component view'
define view zcaa362_component_tpl
  as select from zcaa362_comp_tpl

  /*
  *    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  *    BEFORE YOU START WORKING ON THE CDS VIEW MAKE SURE YOU HAVE EXECUTED
  *    CLASS ZCL_CAA362_MAIN_TPL AT LEAST ONCE BY OPENING IT AND PRESSING F9.
  *    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  *  
  * 1. Join the relational information in table "zcaa362_rel_tpl" about the components
  *    to the BOM table "zcaa362_comp_tpl". Use the field "uuid" as the join condition.
  *    - Uncomment the join statement
  *    - Replace "_JOINTABLE_" with "zcaa362_rel_tpl"
  *    - Replace "_JOIN_CONDITION_" with "zcaa362_comp_tpl.uuid = zcaa362_rel_tpl.uuid"
  *    - In the field list, uncomment and replace "_JOINED_FIELD_" with "parent_uuid"
  *
  * 2. Define a self-association named "_to_parent_component" which expresses the hierarchical relation
  *    contained in the fields "uuid" and "parent_uuid".
  *    - Uncomment the association statement
  *    - Replace "_ASSOCIATION_TARGET_" with "zcaa362_component_tpl"
  *    - Replace "_ASSOCIATION_NAME_" with "_to_parent_component"
  *    - Replace "_ASSOCIATION_CONDITION_" with "$projection.parent_uuid = _to_parent_component.uuid"
  *    - In the field list, uncomment the exposition of the association "_to_parent_component"
  *
  * 3. Press CTRL+F3 to activate the view. Then press F8 to check that it properly selects data.
  *
  *    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  *    IF THE PREVIEW DOES NOT DISPLAY ANY DATA FIRST MAKE SURE YOU HAVE EXECUTED
  *    CLASS ZCL_CAA362_MAIN_TPL AT LEAST ONCE BY OPENING IT AND PRESSING F9.
  *    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  */
  
//  left outer join _JOINTABLE_
//    on _JOIN_CONDITION_

//  association [0..1] to _ASSOCIATION_TARGET_ as _ASSOCIATION_NAME_
//    on _ASSOCIATION_CONDITION_

{
  key zcaa362_comp_tpl.uuid as uuid,
  //_JOINED_FIELD_,
  name,
  category,
  amount
  //,_to_parent_component
  
}
