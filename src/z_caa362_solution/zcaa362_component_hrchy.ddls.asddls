define hierarchy zcaa362_component_hrchy 
  as parent child hierarchy (
    source zcaa362_component
    child to parent association _to_parent_component
    start where parent_uuid is initial
    siblings order by uuid
  )
{
    uuid,
    parent_uuid,
    name,
    category,
    amount
    
}
