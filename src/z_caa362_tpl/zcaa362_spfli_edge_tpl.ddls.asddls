@AbapCatalog.sqlViewName: 'ZCAA362EDGETPL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'TechEd 2019 Hands-On CAA362 - Edge View'
define view zcaa362_spfli_edge_tpl
  as select from zcaa362_spfl_tpl
{
      //zcaa362_spfl_tpl
  key carrid, 
  key connid,
      countryfr,
      cityfrom,
      airpfrom,
      countryto,
      cityto,
      airpto,
      distance,
      distid
}
