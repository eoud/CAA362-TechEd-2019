@AbapCatalog.sqlViewName: 'ZCAA362VERTEX'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'TechEd 2019 Hands-On CAA362 - Vertex View'
define view zcaa362_sgeocity_vertex
  as select from zcaa362_sgeocity
{
      //zcaa362_sgeocity
  key city,
  key country,
      coordinate
}
