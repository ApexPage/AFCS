select b.v_business_term_id "id",
b.v_bt_logical_name "name",
b.v_std_physical_column_name "phyName",
b.v_bt_origin "origin",
b.v_language "lang",
b.v_logical_data_type "logicalDt",
b.f_pii_flag as "isPII",
b.f_latest_record_flag as "islatestRecord",
b.d_created_date as "createdDate",
b.d_last_modified_date as "modifiedDate",
b.f_is_deprecated as "isDeprecated",
c.v_data_element_type_desc as "dataElementTypeDesc",
g.v_bt_contextual_desc "desc"
from dc_business_term_dtls b, dc_bt_data_element_type_master c,
dc_bt_glossary_dtls g
where
b.v_data_element_id = c.v_data_element_id
and b.v_business_term_id = g.v_business_term_id
and b.v_business_term_id like 'BT%' 
and b.f_latest_record_flag = 'Y'