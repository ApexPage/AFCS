select p.v_physical_entity_id "id",
p.v_entity_logical_name "name",
p.v_df_physical_entity_name "phyName",
p.v_entity_desc "desc",
p.v_entity_type_id "type",
p.v_grain_id "grain",
p.v_model_property_id "modProp",
p.f_is_deprecated "isDeprecated",
p.v_logical_object_name "logicalObjName",
'' "properties",
bt.v_business_term_id "attrs_btId",
gl.v_business_term "attrs_name",
bt.v_physical_column_name "attrs_phyName",
gl.v_bt_contextual_desc "attrs_desc",
bd.v_data_element_id "attrs_dataElementType",
dt.v_logical_data_type "attrs_logicalDt",
dt.v_ora_data_type "attrs_physicalDt",
'' "attrs_size",
'' "attrs_precision",
'' "attrs_scale",
bt.v_primary_key "attrs_isPK",
bt.v_nullable "attrs_isNULL",
bt.v_default_value "attrs_defautlval",
bt.v_foreign_key "attrs_isReferenceKey",
bt.v_related_dim_entity "attrs_refEnt",
bt.v_related_dim_entity_column "attrs_refAttr",
bt.v_business_key "attrs_isBusinessKey",
bd.f_pii_flag "attrs_isPII",
bt.f_is_deprecated "attrs_isDeprecated",
'' "attrs_properties"
from catmeta.dc_physical_entity_master p, catmeta.dc_entity_bt_attr_dt_map bt, --dc_entity_tech_attr tech tech,
catmeta.dc_bt_glossary_dtls gl, catmeta.dc_business_term_dtls bd, catmeta.dc_data_type_master dt
where p.v_physical_entity_id = 'ENT6'
and p.f_latest_record_flag = 'Y'
and p.v_physical_entity_id = bt.v_physical_entity_id
and bt.v_business_term_id = bd.v_business_term_id
and bt.v_business_term_id = gl.v_business_term_id
and bd.v_logical_data_type = dt.v_logical_data_type_id
UNION
select p.v_physical_entity_id "id",
p.v_entity_logical_name "name",
p.v_df_physical_entity_name "phyName",
p.v_entity_desc "desc",
p.v_entity_type_id "type",
p.v_grain_id "grain",
p.v_model_property_id "modProp",
p.f_is_deprecated "isDeprecated",
p.v_logical_object_name "logicalObjName",
'' "properties",
bt.v_business_term_id "attrs_btId",
gl.v_business_term "attrs_name",
bt.v_physical_column_name "attrs_phyName",
gl.v_bt_contextual_desc "attrs_desc",
bd.v_data_element_id "attrs_dataElementType",
dt.v_logical_data_type "attrs_logicalDt",
dt.v_ora_data_type "attrs_physicalDt",
'' "attrs_size",
'' "attrs_precision",
'' "attrs_scale",
bt.v_primary_key "attrs_isPK",
bt.v_nullable "attrs_isNULL",
bt.v_default_value "attrs_defautlval",
bt.v_foreign_key "attrs_isReferenceKey",
bt.v_related_dim_entity "attrs_refEnt",
bt.v_related_dim_entity_column "attrs_refAttr",
bt.v_business_key "attrs_isBusinessKey",
bd.f_pii_flag "attrs_isPII",
bt.f_is_deprecated "attrs_isDeprecated",
'' "attrs_properties"
from catmeta.dc_physical_entity_master p, catmeta.dc_entity_tech_attr bt, 
catmeta.dc_bt_glossary_dtls gl, catmeta.dc_business_term_dtls bd, catmeta.dc_data_type_master dt
where p.v_physical_entity_id = 'ENT6'
and p.f_latest_record_flag = 'Y'
and p.v_physical_entity_id = bt.v_physical_entity_id
and bt.v_business_term_id = bd.v_business_term_id
and bt.v_business_term_id = gl.v_business_term_id
and bd.v_logical_data_type = dt.v_logical_data_type_id;
