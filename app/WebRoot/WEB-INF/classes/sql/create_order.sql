--物流订单表
create table order_ (
  id_                      int,			--主键
  creator_                 varchar(36),	--创建人
  create_time_             date,		--创建时间
  modifier_                varchar(36),	--修改人
  modify_time_             date,		--修改时间
  rec_ver_                 int,			--版本号
  rec_status_              char(1),		--逻辑删除标记
  org_id_                  varchar(36),	--公司号
  system_no_               varchar(36),	--系统号
  order_no_                varchar(36),	--物流订单号
  order_type_              varchar(255),--订单类型
  priority_                varchar(36),	--优先级
  trans_type_              varchar(255),--运输方式
  customer_                varchar(255),--客户
  order_time_              date,		--下单时间
  separate_rule_id_		   int,			--外键,分解策略
  require_send_time_fm_    date,		--要求发货时间从
  require_send_time_to_    date,		--要求发货时间到
  require_receive_time_fm_ date,		--要求送达时间从
  require_receive_time_to_ date,		--要求送达时间到
  shipper_                 varchar(255),--发货方
  location_fm_             varchar(255),--发货地点
  consignee_               varchar(255),--收货方
  location_to_             varchar(255),--收货地点
  order_source_            varchar(36),	--订单来源
  po_no_                   varchar(36),	--采购单号
  so_no_                   varchar(36),	--销售单号
  do_no_                   varchar(36),	--提货单号
  remark_                  varchar(255),--备注
  parent_order_            varchar(36),	--父订单号
  meger_flag_              char(1),		--合并标志
  split_flag_              char(1),		--拆分标志
  expiration_time_         date,		--失效日期
  appointment_flag_        char(1),		--是否预约
  emergent_flag_           char(1),		--是否紧急
  payment_type_            varchar(36),	--付款方式
  warehouser_              varchar(255),--仓库
  station_                 varchar(255),--基地
  editable_                char(1),		--是否可编辑
  temperature_level_       varchar(36),	--温层
  pre_order_time_          date,		--预约时间
  pre_order_no_            varchar(36),	--预约单号
  primary key(id_),
  constraint fk_separate_rule_id_1 foreign key (separate_rule_id) references separate_rule_(id_)
);