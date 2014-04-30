--作业类型表
create table work_type_ (
  id_                      int,			--主键
  order_id_				   int,			--外键
  creator_                 varchar(36),	--创建人
  create_time_             date,		--创建时间
  modifier_                varchar(36),	--修改人
  modify_time_             date,		--修改时间
  rec_ver_                 int,			--版本号
  rec_status_              char(1),		--逻辑删除标记
  org_id_                  varchar(36),	--公司号
  type_name_			   varchar(36),	--作业类型名
  separate_rule_id_		   int,			--分解策略,外键
  primary key(id_),
  constraint fk_separate_rule_id_2 foreign key (separate_rule_id_) references separate_rule_(id_),
  constraint fk_order_id_2 foreign key (order_id_) references order_(id_)
);