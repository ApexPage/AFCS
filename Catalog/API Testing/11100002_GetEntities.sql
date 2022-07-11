select p.v_physical_entity_id "id",
p.v_entity_logical_name "name",
p.v_df_physical_entity_name "phyName",
p.v_entity_desc "desc",
p.v_entity_type_id "type",
p.v_grain_id "grain",
p.v_model_property_id "modProp",
p.f_is_deprecated "isDeprecated",
p.v_logical_object_name "logicalObjName"
from dc_physical_entity_master p
where p.f_latest_record_flag = 'Y'
and p.v_physical_entity_id like 'ENT%'