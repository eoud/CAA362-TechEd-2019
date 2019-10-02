@AbapCatalog.sqlViewName: 'ZCAA362VERTEXTPL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'TechEd 2019 Hands-On CAA362 - Vertex View'
define view zcaa362_sgeocity_vertex_tpl
  as select from zcaa362_sgeo_tpl
{
      //zcaa362_sgeo_tpl
  key city,
  key country,
      coordinate
}
