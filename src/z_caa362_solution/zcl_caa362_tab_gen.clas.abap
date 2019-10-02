class zcl_caa362_tab_gen definition
  public
  final
  create public .

  public section.
    interfaces if_oo_adt_classrun.

    types:
      ty_unit type c length 128.

    class-methods gen_comp.
    class-methods gen_rel.
    class-methods gen_part.
    class-methods gen_aggr.
    class-methods gen_spfli.
    class-methods gen_sgeocity.
    class-methods gen_entries.
  protected section.
  private section.
endclass.

class zcl_caa362_tab_gen implementation.
  method gen_comp.
     insert zcaa362_comp from table @( value #(
      ( client = 000 uuid = 'TC00' name = 'Tricycle'       category = `Vehicle`   amount = 1 )
      ( client = 000 uuid = 'WH00' name = 'Wheel'          category = 'Wheel'     amount = 1 )
      ( client = 000 uuid = 'WT00' name = 'White Tire'     category = 'Tire'      amount = 1 )
      ( client = 000 uuid = 'SS00' name = 'Slotted Screw'  category = 'Screw'     amount = 4 )
      ( client = 000 uuid = 'PS00' name = 'Phillips Screw' category = 'Screw'     amount = 8 )
      ( client = 000 uuid = 'DT00' name = 'Drivetrain'     category = 'Internals' amount = 1 )
      ( client = 000 uuid = 'WH01' name = 'Wheel'          category = 'Wheel'     amount = 2 )
      ( client = 000 uuid = 'BT01' name = 'Black Tire'     category = 'Tire'      amount = 1 )
      ( client = 000 uuid = 'SS01' name = 'Slotted Screw'  category = 'Screw'     amount = 4 )
      ( client = 000 uuid = 'TS01' name = 'Torx Screw'     category = 'Screw'     amount = 8 )
      ( client = 000 uuid = 'GE00' name = 'Gear'           category = 'Gear'      amount = 1  )
      ( client = 000 uuid = 'SS02' name = 'Slotted Screw'  category = 'Screw'     amount = 10 )
      ( client = 000 uuid = 'PS02' name = 'Phillips Screw' category = 'Screw'     amount = 16 )
    ) ).
  endmethod.

  method gen_rel.
    insert zcaa362_rel from table @( value #(
      ( client = 000 uuid = 'TC00' parent_uuid = '' )
      ( client = 000 uuid = 'WH00' parent_uuid = 'TC00' )
      ( client = 000 uuid = 'WT00' parent_uuid = 'WH00' )
      ( client = 000 uuid = 'SS00' parent_uuid = 'WH00' )
      ( client = 000 uuid = 'PS00' parent_uuid = 'WH00' )
      ( client = 000 uuid = 'DT00' parent_uuid = 'TC00' )
      ( client = 000 uuid = 'WH01' parent_uuid = 'DT00' )
      ( client = 000 uuid = 'BT01' parent_uuid = 'WH01' )
      ( client = 000 uuid = 'SS01' parent_uuid = 'WH01' )
      ( client = 000 uuid = 'TS01' parent_uuid = 'WH01' )
      ( client = 000 uuid = 'GE00' parent_uuid = 'DT00' )
      ( client = 000 uuid = 'SS02' parent_uuid = 'GE00' )
      ( client = 000 uuid = 'PS02' parent_uuid = 'GE00' )
    ) ).
  endmethod.

  method gen_part.
    insert zcaa362_part from table @( value #(
      ( client = 000 name = 'Black Tire'     cost = '50.0'  )
      ( client = 000 name = 'White Tire'     cost = '100.0' )
      ( client = 000 name = 'Slotted Screw'  cost = '1.0'   )
      ( client = 000 name = 'Phillips Screw' cost = '2.0'   )
      ( client = 000 name = 'Torx Screw'     cost = '5.0'   )
    ) ).
  endmethod.

  method gen_aggr.
    insert zcaa362_aggr_pre from table @( value #(
      ( client = 000 hierarchy_rank = 1 hierarchy_parent_rank = 0 name = 'Tricycle'       category = `Vehicle`   amount = 1 total_amount = 1 cost = '0.0' total_cost = '350.0' )
      ( client = 000 hierarchy_rank = 2 hierarchy_parent_rank = 1 name = 'Drivetrain'     category = 'Internals' amount = 1 total_amount = 1 cost = '0.0' total_cost = '230.0' )
      ( client = 000 hierarchy_rank = 3 hierarchy_parent_rank = 2 name = 'Gear'           category = 'Gear'      amount = 1 total_amount = 1 cost = '0.0' total_cost = '42.0' )
      ( client = 000 hierarchy_rank = 4 hierarchy_parent_rank = 3 name = 'Phillips Screw' category = 'Screw'     amount = 16 total_amount = 16 cost = '2.0' total_cost = '32.0' )
      ( client = 000 hierarchy_rank = 5 hierarchy_parent_rank = 3 name = 'Slotted Screw'  category = 'Screw'     amount = 10 total_amount = 10 cost = '1.0' total_cost = '10.0' )
      ( client = 000 hierarchy_rank = 6 hierarchy_parent_rank = 2 name = 'Wheel'          category = 'Wheel'     amount = 2 total_amount = 2 cost = '0.0' total_cost = '188.0' )
      ( client = 000 hierarchy_rank = 7 hierarchy_parent_rank = 6 name = 'Black Tire'     category = 'Tire'      amount = 1 total_amount = 2 cost = '50.0' total_cost = '100.0' )
      ( client = 000 hierarchy_rank = 8 hierarchy_parent_rank = 6 name = 'Slotted Screw'  category = 'Screw'     amount = 4 total_amount = 8 cost = '1.0' total_cost = '8.0' )
      ( client = 000 hierarchy_rank = 9 hierarchy_parent_rank = 6 name = 'Torx Screw'     category = 'Screw'     amount = 8 total_amount = 16 cost = '5.0' total_cost = '80.0' )
      ( client = 000 hierarchy_rank = 10 hierarchy_parent_rank = 1 name = 'Wheel'          category = 'Wheel'     amount = 1 total_amount = 1 cost = '0.0' total_cost = '120.0' )
      ( client = 000 hierarchy_rank = 11 hierarchy_parent_rank = 10 name = 'Phillips Screw' category = 'Screw'     amount = 8 total_amount = 8 cost = '2.0' total_cost = '16.0' )
      ( client = 000 hierarchy_rank = 12 hierarchy_parent_rank = 10 name = 'Slotted Screw'  category = 'Screw'     amount = 4 total_amount = 4 cost = '1.0' total_cost = '4.0' )
      ( client = 000 hierarchy_rank = 13 hierarchy_parent_rank = 10 name = 'White Tire'     category = 'Tire'      amount = 1 total_amount = 1 cost = '100.0' total_cost = '100.0' )
    ) ).
  endmethod.


  method gen_spfli.
    data lt_spfli_tab type standard table of zcaa362_spfli.

    select from zcaa362_spfli fields * into table @lt_spfli_tab.
    delete zcaa362_spfli from table @lt_spfli_tab.
    clear lt_spfli_tab.

    append value zcaa362_spfli( carrid = 'AA' connid = '0001' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6165.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0002' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0003' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0004' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0005' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6682.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0006' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'DCA' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '345.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0007' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'DCA' countryto = 'US' cityto = 'New York' airpto = 'LGA' distance = '345.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0008' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'DCA' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '966.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0009' countryfr = 'AR' cityfrom = 'Buenos Aires' airpfrom = 'EZE' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '8490.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0010' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6907.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0011' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0012' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '7788.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0013' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '660.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0014' countryfr = 'BR' cityfrom = 'Rio De Janeiro' airpfrom = 'GIG' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '7719.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0015' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '784.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0016' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'IAD' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '5888.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0017' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '2525.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0018' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '6165.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0019' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0020' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'US' cityto = 'Washington' airpto = 'DCA' distance = '345.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0021' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'AR' cityto = 'Buenos Aires' airpto = 'EZE' distance = '8490.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0022' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '6907.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0023' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'BR' cityto = 'Rio De Janeiro' airpto = 'GIG' distance = '7719.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0024' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0025' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0026' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'PE' cityto = 'Lima' airpto = 'LIM' distance = '5854.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0027' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '5777.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0028' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '5372.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0029' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '1166.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0030' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0031' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '6403.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0032' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '6323.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0033' countryfr = 'US' cityfrom = 'New York' airpfrom = 'LGA' countryto = 'US' cityto = 'Washington' airpto = 'DCA' distance = '345.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0034' countryfr = 'US' cityfrom = 'New York' airpfrom = 'LGA' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '1166.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0035' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0036' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0037' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0038' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '660.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0039' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '784.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0040' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'Washington' airpto = 'IAD' distance = '5888.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0041' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '2525.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0042' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0043' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1606.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0044' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '209.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0045' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6351.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0046' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '925.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0047' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '951.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0048' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '1171.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0049' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0050' countryfr = 'PE' cityfrom = 'Lima' airpfrom = 'LIM' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5854.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0051' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '1606.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0052' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5777.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0053' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6762.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0054' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5372.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0055' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '209.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0056' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6162.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0057' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '6682.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0058' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'US' cityto = 'Washington' airpto = 'DCA' distance = '966.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0059' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '7788.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0060' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '1166.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0061' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'US' cityto = 'New York' airpto = 'LGA' distance = '1166.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0062' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '6351.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0063' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '6762.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0064' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '6162.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0065' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '7133.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0066' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0067' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '925.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0068' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6403.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0069' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '951.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0070' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '7133.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0071' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '1171.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0072' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6323.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AA' connid = '0073' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0001' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '853.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0002' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6165.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0003' countryfr = 'BR' cityfrom = 'Brasilia' airpfrom = 'BSB' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '8728.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0004' countryfr = 'EG' cityfrom = 'Cairo' airpfrom = 'CAI' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '3217.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0005' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '853.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0006' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'BR' cityto = 'Brasilia' airpto = 'BSB' distance = '8728.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0007' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'EG' cityto = 'Cairo' airpto = 'CAI' distance = '3217.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0008' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'AR' cityto = 'Buenos Aires' airpto = 'EZE' distance = '11036.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0009' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1123.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0010' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '459.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0011' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'BR' cityto = 'Rio De Janeiro' airpto = 'GIG' distance = '9151.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0012' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '410.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0013' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'Washington' airpto = 'IAD' distance = '6186.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0014' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '2247.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0015' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0016' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'RU' cityto = 'St. Petersburg' airpto = 'LED' distance = '2147.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0017' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0018' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'PE' cityto = 'Lima' airpto = 'LIM' distance = '10259.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0019' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1461.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0020' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1056.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0021' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '588.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0022' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'DE' cityto = 'Nuernberg' airpto = 'NUE' distance = '631.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0023' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6682.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0024' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'RU' cityto = 'Moscow' airpto = 'SVO' distance = '2470.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0025' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '599.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0026' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '869.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0027' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '842.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0028' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '483.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0029' countryfr = 'AR' cityfrom = 'Buenos Aires' airpfrom = 'EZE' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '11036.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0030' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '1123.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0031' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0032' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '941.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0033' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '459.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0034' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6202.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0035' countryfr = 'BR' cityfrom = 'Rio De Janeiro' airpfrom = 'GIG' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '9151.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0036' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '410.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0037' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'IAD' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '6186.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0038' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '2247.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0039' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '6165.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0040' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0041' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '6202.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0042' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0043' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '5777.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0044' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LCY' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0045' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LCY' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0046' countryfr = 'RU' cityfrom = 'St. Petersburg' airpfrom = 'LED' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '2147.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0047' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0048' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0049' countryfr = 'PE' cityfrom = 'Lima' airpfrom = 'LIM' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '10259.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0050' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '1461.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0051' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '1056.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0052' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5777.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0053' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '1056.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0054' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '588.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0055' countryfr = 'DE' cityfrom = 'Nuernberg' airpfrom = 'NUE' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '631.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0056' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '6682.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0057' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0058' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1056.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0059' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '599.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0060' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'SVO' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '2470.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0061' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '599.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0062' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '941.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0063' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '599.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0064' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '896.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0065' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '869.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0066' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '842.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0067' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '896.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AF' connid = '0068' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '483.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0001' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '878.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0002' countryfr = 'EG' cityfrom = 'Cairo' airpfrom = 'CAI' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '2126.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0003' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1123.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0004' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'Washington' airpto = 'IAD' distance = '6186.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0005' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0006' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'PE' cityto = 'Lima' airpto = 'LIM' distance = '10259.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0007' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1461.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0008' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '588.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0009' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'DE' cityto = 'Nuernberg' airpto = 'NUE' distance = '631.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0010' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '599.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0011' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '869.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0012' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '842.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0013' countryfr = 'AR' cityfrom = 'Buenos Aires' airpfrom = 'EZE' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '11129.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0014' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '878.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0015' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'EG' cityto = 'Cairo' airpto = 'CAI' distance = '2126.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0016' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '1123.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0017' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'AR' cityto = 'Buenos Aires' airpto = 'EZE' distance = '11129.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0018' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '966.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0019' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'BR' cityto = 'Rio De Janeiro' airpto = 'GIG' distance = '9174.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0020' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '716.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0021' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1357.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0022' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6907.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0023' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0024' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'RU' cityto = 'St. Petersburg' airpto = 'LED' distance = '2341.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0025' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0026' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1872.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0027' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1362.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0028' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '7788.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0029' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'RU' cityto = 'Moscow' airpto = 'SVO' distance = '2384.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0030' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '941.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0031' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '412.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0032' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '706.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0033' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '966.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0034' countryfr = 'BR' cityfrom = 'Rio De Janeiro' airpfrom = 'GIG' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '9174.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0035' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '716.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0036' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'IAD' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '6186.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0037' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1357.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0038' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0039' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '6907.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0040' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '6683.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0041' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LCY' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0042' countryfr = 'RU' cityfrom = 'St. Petersburg' airpfrom = 'LED' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '2341.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0043' countryfr = 'RU' cityfrom = 'St. Petersburg' airpfrom = 'LED' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '1986.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0044' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0045' countryfr = 'PE' cityfrom = 'Lima' airpfrom = 'LIM' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '10259.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0046' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '1461.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0047' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1872.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0048' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '1919.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0049' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1362.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0050' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '588.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0051' countryfr = 'DE' cityfrom = 'Nuernberg' airpfrom = 'NUE' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '631.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0052' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '7788.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0053' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'SVO' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '2384.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0054' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'SVO' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '2099.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0055' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '599.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0056' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '941.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0057' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '896.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0058' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '869.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0059' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '842.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0061' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '412.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0062' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6683.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0063' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'RU' cityto = 'St. Petersburg' airpto = 'LED' distance = '1986.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0064' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1919.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0065' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'RU' cityto = 'Moscow' airpto = 'SVO' distance = '2099.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0066' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '896.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'AZ' connid = '0067' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '706.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0001' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6165.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0002' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0003' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0004' countryfr = 'EG' cityfrom = 'Cairo' airpfrom = 'CAI' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '3552.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0005' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0006' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0007' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6682.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0008' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'DME' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '2491.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0009' countryfr = 'AR' cityfrom = 'Buenos Aires' airpfrom = 'EZE' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '11116.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0010' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6907.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0011' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0012' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0013' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '7788.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0014' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '660.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0015' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '660.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0016' countryfr = 'BR' cityfrom = 'Rio De Janeiro' airpfrom = 'GIG' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '9266.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0017' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '784.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0018' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'IAD' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '5888.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0019' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '2525.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0020' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '6165.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0021' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0022' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '6907.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0023' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0024' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0025' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '5777.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0026' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '5372.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0027' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0028' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LCY' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '660.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0029' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LCY' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1290.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0030' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LCY' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '1171.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0031' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LCY' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0032' countryfr = 'RU' cityfrom = 'St. Petersburg' airpfrom = 'LED' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '2087.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0033' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0034' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0035' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '1171.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0036' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0037' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'EG' cityto = 'Cairo' airpto = 'CAI' distance = '3552.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0038' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0039' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'RU' cityto = 'Moscow' airpto = 'DME' distance = '2491.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0040' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'AR' cityto = 'Buenos Aires' airpto = 'EZE' distance = '11116.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0041' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0042' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '660.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0043' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'BR' cityto = 'Rio De Janeiro' airpto = 'GIG' distance = '9266.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0044' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '784.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0045' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'Washington' airpto = 'IAD' distance = '5888.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0046' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '2525.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0047' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0048' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'RU' cityto = 'St. Petersburg' airpto = 'LED' distance = '2087.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0049' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1606.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0050' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1290.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0051' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '209.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0052' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6351.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0053' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0054' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '925.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0055' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '951.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0056' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '1171.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0057' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0058' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '1606.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0059' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5777.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0060' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '1290.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0061' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '1290.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0062' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6762.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0063' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5372.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0064' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '209.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0065' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6162.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0066' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '6682.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0067' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '7788.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0068' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '6351.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0069' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '6762.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0070' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '6162.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0071' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0072' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0073' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '925.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0074' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '951.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0075' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '1171.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0076' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '1171.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0077' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '1171.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0078' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'BA' connid = '0079' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0001' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '853.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0002' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'RU' cityto = 'Moscow' airpto = 'DME' distance = '3023.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0003' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '878.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0004' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '1093.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0005' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6165.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0006' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'RU' cityto = 'St. Petersburg' airpto = 'LED' distance = '2826.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0007' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0008' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0009' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '996.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0010' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '484.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0011' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'DE' cityto = 'Nuernberg' airpto = 'NUE' distance = '1150.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0012' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '853.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0013' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '265.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0014' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '1506.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0015' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '953.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0016' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '857.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0017' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '853.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0018' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0019' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6682.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0020' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'DME' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '3023.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0021' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'DME' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '3427.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0022' countryfr = 'AR' cityfrom = 'Buenos Aires' airpfrom = 'EZE' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '10031.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0023' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '878.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0024' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6907.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0025' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1362.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0026' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '7788.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0027' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '1123.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0028' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1093.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0029' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1423.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0030' countryfr = 'BR' cityfrom = 'Rio De Janeiro' airpfrom = 'GIG' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '8122.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0031' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1011.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0032' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'IAD' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '5888.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0033' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '6165.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0034' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0035' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '6907.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0036' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0037' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0038' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '5777.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0039' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '5372.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0040' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0041' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LCY' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1290.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0042' countryfr = 'RU' cityfrom = 'St. Petersburg' airpfrom = 'LED' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '2826.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0043' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0044' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0045' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'Washington' airpto = 'IAD' distance = '5888.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0046' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0047' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1290.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0048' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '209.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0049' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6351.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0050' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0051' countryfr = 'PE' cityfrom = 'Lima' airpfrom = 'LIM' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '9519.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0052' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '996.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0053' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '513.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0054' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '1461.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0055' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '484.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0056' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'RU' cityto = 'Moscow' airpto = 'DME' distance = '3427.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0057' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'AR' cityto = 'Buenos Aires' airpto = 'EZE' distance = '10031.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0058' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1362.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0059' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '1423.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0060' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'BR' cityto = 'Rio De Janeiro' airpto = 'GIG' distance = '8122.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0061' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '1011.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0062' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5777.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0063' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '1290.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0064' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '1290.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0065' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'PE' cityto = 'Lima' airpto = 'LIM' distance = '9519.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0066' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '513.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0067' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6762.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0068' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '1056.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0069' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '537.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0070' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '1855.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0071' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '1410.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0072' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '1241.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0073' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5372.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0074' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '209.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0075' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6162.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0076' countryfr = 'DE' cityfrom = 'Nuernberg' airpfrom = 'NUE' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1150.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0077' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '6682.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0078' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '7788.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0079' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '6351.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0080' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '6762.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0081' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '6162.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0082' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '853.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0083' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1123.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0084' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0085' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0086' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1461.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0087' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1056.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0088' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '265.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0089' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '537.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0090' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1506.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0091' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1855.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0092' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '953.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0093' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1410.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0094' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '857.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'IB' connid = '0095' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1241.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0001' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '1093.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0002' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '1506.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0003' countryfr = 'EG' cityfrom = 'Cairo' airpfrom = 'CAI' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '2922.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0004' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '459.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0005' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'Washington' airpto = 'IAD' distance = '6186.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0006' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6682.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0007' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '869.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0008' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'DME' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '2028.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0009' countryfr = 'AR' cityfrom = 'Buenos Aires' airpfrom = 'EZE' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '11449.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0010' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '966.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0011' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1093.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0012' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'EG' cityto = 'Cairo' airpto = 'CAI' distance = '2922.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0013' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '459.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0014' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'RU' cityto = 'Moscow' airpto = 'DME' distance = '2028.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0015' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'AR' cityto = 'Buenos Aires' airpto = 'EZE' distance = '11449.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0016' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '966.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0017' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'BR' cityto = 'Rio De Janeiro' airpto = 'GIG' distance = '9545.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0018' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '459.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0019' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'US' cityto = 'Washington' airpto = 'IAD' distance = '6547.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0020' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1865.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0021' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6202.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0022' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '660.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0023' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'RU' cityto = 'St. Petersburg' airpto = 'LED' distance = '1751.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0024' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '660.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0025' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1876.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0026' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1423.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0027' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '834.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0028' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'DE' cityto = 'Nuernberg' airpto = 'NUE' distance = '190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0029' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6996.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0030' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '898.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0031' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '433.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0032' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '577.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0033' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'RU' cityto = 'Moscow' airpto = 'VKO' distance = '2028.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0034' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'CA' cityto = 'Ottawa' airpto = 'YOW' distance = '6002.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0035' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '285.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0036' countryfr = 'BR' cityfrom = 'Rio De Janeiro' airpfrom = 'GIG' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '9545.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0037' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '459.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0038' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'IAD' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '6186.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0039' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'IAD' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '6547.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0040' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'IAD' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '5888.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0041' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '1865.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0042' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '6202.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0043' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LCY' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '660.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0044' countryfr = 'RU' cityfrom = 'St. Petersburg' airpfrom = 'LED' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '1751.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0045' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '660.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0046' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'Washington' airpto = 'IAD' distance = '5888.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0047' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6351.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0048' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'CA' cityto = 'Ottawa' airpto = 'YOW' distance = '5349.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0049' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '1876.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0050' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '1423.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0051' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '834.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0052' countryfr = 'DE' cityfrom = 'Nuernberg' airpfrom = 'NUE' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0053' countryfr = 'DE' cityfrom = 'Nuernberg' airpfrom = 'NUE' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '293.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0054' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '6682.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0055' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '6996.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0056' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '6351.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0057' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '898.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0058' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1506.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0059' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '869.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0060' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '433.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0061' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'RU' cityto = 'Moscow' airpto = 'VKO' distance = '1601.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0062' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '652.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0063' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '577.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0064' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'VKO' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '2028.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0065' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'VKO' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '1601.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0066' countryfr = 'CA' cityfrom = 'Ottawa' airpfrom = 'YOW' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '6002.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0067' countryfr = 'CA' cityfrom = 'Ottawa' airpfrom = 'YOW' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '5349.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0068' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '285.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0069' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'DE' cityto = 'Nuernberg' airpto = 'NUE' distance = '293.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LH' connid = '0070' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '652.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0001' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '637.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0002' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '857.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0003' countryfr = 'EG' cityfrom = 'Cairo' airpfrom = 'CAI' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '2826.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0004' countryfr = 'EG' cityfrom = 'Cairo' airpfrom = 'CAI' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '2745.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0005' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '410.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0006' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '483.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0007' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'DME' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '2417.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0008' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'DME' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '2186.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0009' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '716.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0010' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '706.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0011' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '459.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0012' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '285.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0013' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '637.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0014' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'EG' cityto = 'Cairo' airpto = 'CAI' distance = '2826.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0015' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '410.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0016' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'RU' cityto = 'Moscow' airpto = 'DME' distance = '2417.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0017' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '716.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0018' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '459.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0019' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'US' cityto = 'Washington' airpto = 'IAD' distance = '6560.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0020' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6215.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0021' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '784.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0022' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'RU' cityto = 'St. Petersburg' airpto = 'LED' distance = '2191.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0023' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '784.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0024' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1497.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0025' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1011.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0026' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '230.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0027' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'IAD' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '6560.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0028' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'IAD' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '6668.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0029' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '1765.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0030' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '6215.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0031' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '6323.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0032' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LCY' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '784.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0033' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LCY' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0034' countryfr = 'RU' cityfrom = 'St. Petersburg' airpfrom = 'LED' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '2191.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0035' countryfr = 'RU' cityfrom = 'St. Petersburg' airpfrom = 'LED' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '1969.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0036' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '784.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0037' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0038' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '1497.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0039' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '1726.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0040' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '1011.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0041' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '1241.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0042' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '1008.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0043' countryfr = 'DE' cityfrom = 'Nuernberg' airpfrom = 'NUE' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '293.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0044' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '7154.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0045' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '652.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0046' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '364.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0047' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '857.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0048' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'EG' cityto = 'Cairo' airpto = 'CAI' distance = '2745.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0049' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '483.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0050' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'RU' cityto = 'Moscow' airpto = 'DME' distance = '2186.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0051' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '706.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0052' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '285.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0053' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '230.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0054' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'US' cityto = 'Washington' airpto = 'IAD' distance = '6668.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0055' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1765.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0056' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6323.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0057' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'GB' cityto = 'London' airpto = 'LCY' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0058' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'RU' cityto = 'St. Petersburg' airpto = 'LED' distance = '1969.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0059' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0060' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1726.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0061' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1241.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0062' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '1008.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0063' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'DE' cityto = 'Nuernberg' airpto = 'NUE' distance = '293.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0064' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '7154.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0065' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '652.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'LX' connid = '0066' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '364.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0001' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '2236.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0002' countryfr = 'EG' cityfrom = 'Cairo' airpfrom = 'CAI' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1226.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0003' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '2247.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0004' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'TR' cityto = 'Istanbul' airpto = 'SAW' distance = '2247.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0005' countryfr = 'TR' cityfrom = 'Ankara' airpfrom = 'ESB' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '2201.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0006' countryfr = 'TR' cityfrom = 'Ankara' airpfrom = 'ESB' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '366.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0007' countryfr = 'TR' cityfrom = 'Ankara' airpfrom = 'ESB' countryto = 'TR' cityto = 'Istanbul' airpto = 'SAW' distance = '366.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0008' countryfr = 'TR' cityfrom = 'Ankara' airpfrom = 'ESB' countryto = 'RU' cityto = 'Moscow' airpto = 'VKO' distance = '1791.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0009' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1357.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0010' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'TR' cityto = 'Ankara' airpto = 'ESB' distance = '2201.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0011' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1865.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0012' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'TR' cityto = 'Istanbul' airpto = 'SAW' distance = '1865.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0013' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1916.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0014' countryfr = 'EG' cityfrom = 'Alexandria' airpfrom = 'HBE' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1091.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0015' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'IAD' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '8413.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0016' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '2236.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0017' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'EG' cityto = 'Cairo' airpto = 'CAI' distance = '1226.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0018' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '2247.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0019' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'TR' cityto = 'Ankara' airpto = 'ESB' distance = '366.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0020' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1357.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0021' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '1865.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0022' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '1916.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0023' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'EG' cityto = 'Alexandria' airpto = 'HBE' distance = '1091.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0024' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'US' cityto = 'Washington' airpto = 'IAD' distance = '8413.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0025' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '8068.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0026' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'RU' cityto = 'St. Petersburg' airpto = 'LED' distance = '2096.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0027' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '2525.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0028' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '2525.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0029' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '3230.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0030' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '2720.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0031' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '2697.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0032' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'DE' cityto = 'Nuernberg' airpto = 'NUE' distance = '1677.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0033' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '8843.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0034' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '2272.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0035' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'DE' cityto = 'Berlin' airpto = 'TXL' distance = '1718.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0036' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '1425.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0037' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'RU' cityto = 'Moscow' airpto = 'VKO' distance = '1781.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0038' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '1765.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0039' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '8068.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0040' countryfr = 'RU' cityfrom = 'St. Petersburg' airpfrom = 'LED' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '2096.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0041' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '2525.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0042' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'TR' cityto = 'Istanbul' airpto = 'SAW' distance = '2525.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0043' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '2525.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0044' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '3230.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0045' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '2720.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0046' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '2697.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0047' countryfr = 'DE' cityfrom = 'Nuernberg' airpfrom = 'NUE' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1677.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0048' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '8843.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0049' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'SAW' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '2247.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0050' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'SAW' countryto = 'TR' cityto = 'Ankara' airpto = 'ESB' distance = '366.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0051' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'SAW' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '1865.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0052' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'SAW' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '2525.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0053' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '2272.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0054' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'TXL' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1718.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0055' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1425.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0056' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'VKO' countryto = 'TR' cityto = 'Ankara' airpto = 'ESB' distance = '1791.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0057' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'VKO' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1781.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'TK' connid = '0058' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1765.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0001' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '853.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0002' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '637.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0003' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0004' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'GB' cityto = 'London' airpto = 'LTN' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0005' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'DE' cityto = 'Berlin' airpto = 'SXF' distance = '1506.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0006' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '853.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0007' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0008' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1461.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0009' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'GB' cityto = 'London' airpto = 'LTN' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0010' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1056.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0011' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '599.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0012' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '842.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0013' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'DME' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '2491.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0014' countryfr = 'RU' cityfrom = 'Moscow' airpfrom = 'DME' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '2541.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0015' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '716.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0016' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0017' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '1123.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0018' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'DE' cityto = 'Berlin' airpto = 'SXF' distance = '1178.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0019' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '941.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0020' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '637.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0021' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '716.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0022' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '784.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0023' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1497.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0024' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'GB' cityto = 'London' airpto = 'LTN' distance = '784.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0025' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1011.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0026' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '993.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0027' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '410.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0028' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'DE' cityto = 'Berlin' airpto = 'SXF' distance = '869.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0029' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '473.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0030' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '491.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0031' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0032' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0033' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'RU' cityto = 'Moscow' airpto = 'DME' distance = '2491.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0034' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1489.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0035' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '784.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0036' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1606.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0037' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1290.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0038' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'DE' cityto = 'Berlin' airpto = 'SXF' distance = '951.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0039' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '925.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0040' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '1171.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0041' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LGW' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0042' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '1461.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0043' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '1497.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0044' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '1606.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0045' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'GB' cityto = 'London' airpto = 'LTN' distance = '1606.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0046' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '513.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0047' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'DE' cityto = 'Berlin' airpto = 'SXF' distance = '2308.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0048' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LTN' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1190.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0049' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LTN' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '379.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0050' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LTN' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '784.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0051' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LTN' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1606.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0052' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LTN' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1290.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0053' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LTN' countryto = 'DE' cityto = 'Berlin' airpto = 'SXF' distance = '951.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0054' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LTN' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '1171.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0055' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LTN' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0056' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '1056.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0057' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '1011.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0058' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '1290.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0059' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '513.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0060' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'GB' cityto = 'London' airpto = 'LTN' distance = '1290.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0061' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'DE' cityto = 'Berlin' airpto = 'SXF' distance = '1855.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0062' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'RU' cityto = 'Moscow' airpto = 'DME' distance = '2541.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0063' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '993.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0064' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'DE' cityto = 'Berlin' airpto = 'SXF' distance = '1067.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0065' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '1369.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0066' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1123.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0067' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '410.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0068' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'DE' cityto = 'Berlin' airpto = 'SXF' distance = '869.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0069' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'FR' cityto = 'Toulouse' airpto = 'TLS' distance = '599.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0070' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'ORY' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '842.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0071' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'SXF' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '1506.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0072' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'SXF' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '1178.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0073' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'SXF' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '869.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0074' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'SXF' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '951.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0075' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'SXF' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '2308.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0076' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'SXF' countryto = 'GB' cityto = 'London' airpto = 'LTN' distance = '951.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0077' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'SXF' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '1855.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0078' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'SXF' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '1067.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0079' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'SXF' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '869.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0080' countryfr = 'DE' cityfrom = 'Berlin' airpfrom = 'SXF' countryto = 'IT' cityto = 'Venice' airpto = 'VCE' distance = '769.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0081' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '599.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0082' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '941.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0083' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '473.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0084' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '925.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0085' countryfr = 'FR' cityfrom = 'Toulouse' airpfrom = 'TLS' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '599.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0086' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '842.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0087' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'CH' cityto = 'Geneva' airpto = 'GVA' distance = '491.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0088' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '1171.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0089' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'GB' cityto = 'London' airpto = 'LTN' distance = '1171.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0090' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '1369.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0091' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'FR' cityto = 'Paris' airpto = 'ORY' distance = '842.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0092' countryfr = 'IT' cityfrom = 'Venice' airpfrom = 'VCE' countryto = 'DE' cityto = 'Berlin' airpto = 'SXF' distance = '769.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0093' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'GB' cityto = 'London' airpto = 'LGW' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'U2' connid = '0094' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'GB' cityto = 'London' airpto = 'LTN' distance = '808.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0001' countryfr = 'ES' cityfrom = 'Barcelona' airpfrom = 'BCN' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6165.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0002' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0003' countryfr = 'FR' cityfrom = 'Paris' airpfrom = 'CDG' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6682.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0004' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'DCA' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '345.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0005' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'DCA' countryto = 'US' cityto = 'New York' airpto = 'LGA' distance = '345.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0006' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'DCA' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '966.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0007' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6907.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0008' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1872.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0009' countryfr = 'IT' cityfrom = 'Rome' airpfrom = 'FCO' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '7788.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0010' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1865.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0011' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6202.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0012' countryfr = 'DE' cityfrom = 'Frankfurt' airpfrom = 'FRA' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1876.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0013' countryfr = 'BR' cityfrom = 'Rio De Janeiro' airpfrom = 'GIG' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '7719.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0014' countryfr = 'CH' cityfrom = 'Geneva' airpfrom = 'GVA' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1497.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0015' countryfr = 'US' cityfrom = 'Washington' airpfrom = 'IAD' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '8413.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0016' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '1865.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0017' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'US' cityto = 'Washington' airpto = 'IAD' distance = '8413.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0018' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '8068.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0019' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '8843.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0020' countryfr = 'TR' cityfrom = 'Istanbul' airpfrom = 'IST' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '1765.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0021' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'ES' cityto = 'Barcelona' airpto = 'BCN' distance = '6165.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0022' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '5841.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0023' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'US' cityto = 'Washington' airpto = 'DCA' distance = '345.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0024' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '6907.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0025' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'DE' cityto = 'Frankfurt' airpto = 'FRA' distance = '6202.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0026' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'BR' cityto = 'Rio De Janeiro' airpto = 'GIG' distance = '7719.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0027' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '8068.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0028' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0029' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '5777.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0030' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '5372.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0031' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '1166.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0032' countryfr = 'US' cityfrom = 'New York' airpfrom = 'JFK' countryto = 'CH' cityto = 'Zurich' airpto = 'ZRH' distance = '6323.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0033' countryfr = 'US' cityfrom = 'New York' airpfrom = 'LGA' countryto = 'US' cityto = 'Washington' airpto = 'DCA' distance = '345.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0034' countryfr = 'US' cityfrom = 'New York' airpfrom = 'LGA' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '1166.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0035' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5543.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0036' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1606.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0037' countryfr = 'GB' cityfrom = 'London' airpfrom = 'LHR' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6351.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0038' countryfr = 'PT' cityfrom = 'Lisbon' airpfrom = 'LIS' countryto = 'ES' cityto = 'Madrid' airpto = 'MAD' distance = '513.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0039' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5777.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0040' countryfr = 'ES' cityfrom = 'Madrid' airpfrom = 'MAD' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '513.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0041' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '5372.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0042' countryfr = 'GB' cityfrom = 'Manchester' airpfrom = 'MAN' countryto = 'US' cityto = 'Chicago' airpto = 'ORD' distance = '6162.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0043' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'FR' cityto = 'Paris' airpto = 'CDG' distance = '6682.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0044' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'US' cityto = 'Washington' airpto = 'DCA' distance = '966.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0045' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'IT' cityto = 'Rome' airpto = 'FCO' distance = '7788.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0046' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '8843.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0047' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '1166.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0048' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'US' cityto = 'New York' airpto = 'LGA' distance = '1166.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0049' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'GB' cityto = 'London' airpto = 'LHR' distance = '6351.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0050' countryfr = 'US' cityfrom = 'Chicago' airpfrom = 'ORD' countryto = 'GB' cityto = 'Manchester' airpto = 'MAN' distance = '6162.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0051' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'TR' cityto = 'Istanbul' airpto = 'IST' distance = '1765.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0052' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'US' cityto = 'New York' airpto = 'JFK' distance = '6323.0000' distid = 'KM' ) to lt_spfli_tab.
    append value zcaa362_spfli( carrid = 'US' connid = '0053' countryfr = 'CH' cityfrom = 'Zurich' airpfrom = 'ZRH' countryto = 'PT' cityto = 'Lisbon' airpto = 'LIS' distance = '1726.0000' distid = 'KM' ) to lt_spfli_tab.
    insert zcaa362_spfli from table @lt_spfli_tab.
  endmethod.

  method gen_sgeocity.
    data lt_sgeocity_tab type standard table of zcaa362_sgeocity.

    select * from zcaa362_sgeocity into table @lt_sgeocity_tab.
    delete zcaa362_sgeocity from table @lt_sgeocity_tab.
    clear lt_sgeocity_tab.

    append value zcaa362_sgeocity( city = 'Alexandria' country = 'EG' coordinate = '0101000020E610000000000020EBF23D4000000020142F3F40' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Ankara' country = 'TR' coordinate = '0101000020E61000007CF8FF5F5F7F4040AB0C00A065104440' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Barcelona' country = 'ES' coordinate = '0101000020E6100000ABFFFF9FAFA000402E00006007A64440' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Berlin' country = 'DE' coordinate = '0101000020E61000000F000020850B2B40DFFFFFDFA3304A40' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Bern' country = 'CH' coordinate = '0101000020E6100000241400E014FD1D40080F004001754740' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Brasilia' country = 'BR' coordinate = '0101000020E6100000000000E0DDF547C00000008003BD2FC0' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Buenos Aires' country = 'AR' coordinate = '0101000020E6100000DA1B7C6132354DC02BF697DD934741C0' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Cairo' country = 'EG' coordinate = '0101000020E610000000000060D5673F40000000E0341F3E40' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Chicago' country = 'US' coordinate = '0101000020E61000000000006027F055C0000000A09BE44440' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Frankfurt' country = 'DE' coordinate = '0101000020E61000006D1915DD1F24214013AFFC4344044940' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Geneva' country = 'CH' coordinate = '0101000020E6100000000000A0906F1840000000007A1E4740' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Istanbul' country = 'TR' coordinate = '0101000020E6100000D2CEFF9F89D03C40551600000B7D4440' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Lima' country = 'PE' coordinate = '0101000020E61000005473B9C1504753C097900F7A360B28C0' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Lisbon' country = 'PT' coordinate = '0101000020E6100000BBF9FF3F974522C08B1300A001644340' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'London' country = 'GB' coordinate = '0101000020E6100000000000A0C492D7BF00000020F6EF4940' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Madrid' country = 'ES' coordinate = '0101000020E61000001C5F7B6649800CC0E9103812683C4440' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Manchester' country = 'GB' coordinate = '0101000020E610000000000000193302C00000000046AD4A40' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Moscow' country = 'RU' coordinate = '0101000020E6100000F775E09C11B54240A88FC01F7EFC4B40' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'New York' country = 'US' coordinate = '0101000020E61000005C39FF9FD87752C038C5FC3F7B634440' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Nuernberg' country = 'DE' coordinate = '0101000020E6100000118A52E7F627264022C66B5ED5BF4840' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Ottawa' country = 'CA' coordinate = '0101000020E610000000000020D4EA52C0000000A047A94640' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Paris' country = 'FR' coordinate = '0101000020E610000000000080F787034000000040157C4840' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Quebec' country = 'CA' coordinate = '0101000020E6100000CC9A58E02BD951C0CCEEC9C342654740' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Rio De Janeiro' country = 'BR' coordinate = '0101000020E610000092FFFF3F12A045C066D1FF1F5CCF36C0' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Rome' country = 'IT' coordinate = '0101000020E6100000E3C798BB9630294011363CBD52E64440' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'St. Petersburg' country = 'RU' coordinate = '0101000020E61000000000004033433E400000004070E64D40' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Toulouse' country = 'FR' coordinate = '0101000020E61000006E179AEB34D2F53FC170AE6186D04540' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Venice' country = 'IT' coordinate = '0101000020E6100000C0EC9E3C2CB42840CBD93BA3ADC04640' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Washington' country = 'US' coordinate = '0101000020E6100000118AADA0694253C0F775E09C116D4340' ) to lt_sgeocity_tab.
    append value zcaa362_sgeocity( city = 'Zurich' country = 'CH' coordinate = '0101000020E61000000F0000C02C1921400D0000407BBB4740' ) to lt_sgeocity_tab.
    insert zcaa362_sgeocity from table @lt_sgeocity_tab.
  endmethod.

  method gen_entries.
    delete from zcaa362_sgeocity.
    delete from zcaa362_spfli.
    delete from zcaa362_comp.
    delete from zcaa362_rel.
    delete from zcaa362_part.
    delete from zcaa362_aggr_pre.

    gen_sgeocity( ).
    gen_spfli( ).
    gen_comp( ).
    gen_rel( ).
    gen_part( ).
    gen_aggr( ).
  endmethod.

  method if_oo_adt_classrun~main.
    delete from zcaa362_sgeocity.
    delete from zcaa362_spfli.
    delete from zcaa362_comp.
    delete from zcaa362_rel.
    delete from zcaa362_part.
    delete from zcaa362_aggr_pre.

    gen_sgeocity( ).
    gen_spfli( ).
    gen_comp( ).
    gen_rel( ).
    gen_part( ).
    gen_aggr( ).
  endmethod.



endclass.
