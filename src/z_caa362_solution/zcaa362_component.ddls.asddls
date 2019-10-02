@AbapCatalog.sqlViewName: 'ZCAA362COMPONENT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'TechEd 2019 Hands-On CAA362 - Component view'
define view zcaa362_component
  as select from zcaa362_comp
  
  left outer join zcaa362_rel
    on zcaa362_comp.uuid = zcaa362_rel.uuid

  association [0..1] to zcaa362_component as _to_parent_component
    on $projection.parent_uuid = _to_parent_component.uuid

{
  key zcaa362_comp.uuid as uuid,
  parent_uuid,
  name,
  category,
  amount,
  _to_parent_component
  
}
