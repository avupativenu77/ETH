--{{ audit_helper.compare_relations(source('eth', 'contracts'))}}
--{{ target.name}}

--{{ target.database}}

--{{ target.schema}}

{{ codegen.generate_model_yaml(['stablecoin_activity_per_day'])}}