--订单扩展表
create table order_expand_ (
  id_                      int,			--主键
  creator_                 varchar(36),	--创建人
  create_time_             date,		--创建时间
  modifier_                varchar(36),	--修改人
  modify_time_             date,		--修改时间
  rec_ver_                 int,			--版本号
  rec_status_              char(1),		--逻辑删除标记
  org_id_                  varchar(36),	--公司号
  order_id_				   int,		    --订单id
  name_					   varchar(36),	--字段名
  value_				   varchar(255),--字段值
  primary key(id_),
  constraint fk_order_id_1 foreign key (order_id_) references order_(id_)
);