@AbapCatalog.sqlViewName: 'ZCAA362EDGE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'TechEd 2019 Hands-On CAA362 - Edge View'
define view zcaa362_spfli_edge
  as select from zcaa362_spfli
{
      //zcaa362_spfli
  key concat( carrid, connid) as spfli,
      countryfr,
      cityfrom,
      airpfrom,
      countryto,
      cityto,
      airpto,
      cast(distance as abap.int8) as distance,
      distid
}
