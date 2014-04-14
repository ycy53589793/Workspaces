--分解策略
create table separate_rule_ (
  id_                      int,			--主键
  creator_                 varchar(36),	--创建人
  create_time_             date,		--创建时间
  modifier_                varchar(36),	--修改人
  modify_time_             date,		--修改时间
  rec_ver_                 int,			--版本号
  rec_status_              char(1),		--逻辑删除标记
  org_id_                  varchar(36),	--公司号
  bms_visitable_           char(1),		--bms系统是否可见
  tms_visitable_           char(1),		--tms系统是否可见
  wms_visitable_           char(1),		--wms系统是否可见
  order_type_			   char(36),	--订单类型
  customer_				   char(255),	--客户
  trans_type_			   char(36),	--运输方式
  primary key(id_)
);