--订单商品表
create table sku_ (
  id_                      int,			--主键
  order_id_				   int,			--外键
  creator_                 varchar(36),	--创建人
  create_time_             date,		--创建时间
  modifier_                varchar(36),	--修改人
  modify_time_             date,		--修改时间
  rec_ver_                 int,			--版本号
  rec_status_              char(1),		--逻辑删除标记
  org_id_                  varchar(36),	--公司号
  sku_name_				   varchar(255),--商品名称
  package_type_			   varchar(36),	--包装规格
  package_unit_			   varchar(36),	--包装单位
  package_qty_			   double(12,4),--包装数量
  each_qty_				   int,			--EA数
  gross_weight_			   double(12,4),--毛重
  net_weight_			   double(12,4),--净重
  volume_				   double(12,4),--体积
  price_				   double(12,4),--单价
  amount_				   double(12,4),--金额
  temperature_			   double(12,4),--温层
  remark_				   varchar(255),--备注
  sku_type_				   varchar(36),	--商品类型
  production_date_		   date,		--生产日期
  valid_date_			   int,			--有效期
  valid_date_unit_		   varchar(36),	--有效期单位
  maker_				   varchar(255),--制造商
  bar_code_				   varchar(36),	--条码
  primary key(id_),
  constraint fk_order_id_2 foreign key (order_id_) references order_(id_)
);