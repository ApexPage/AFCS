select g.v_glossary_id "id",
g.v_business_term_id "btId",
g.v_business_term  "name",
g.v_bt_context_type "ctxType",
g.v_bt_contextual_desc  "desc"
from catmeta.dc_bt_glossary_dtls g
where g.v_business_term_id like 'BT%'
and g.f_latest_record_flag = 'Y'