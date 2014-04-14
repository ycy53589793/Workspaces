--颜色表
create table status_ (
  id_                      int,			--主键
  order_id_				   int,			--外键
  creator_                 varchar(36),	--创建人
  create_time_             date,		--创建时间
  modifier_                varchar(36),	--修改人
  modify_time_             date,		--修改时间
  rec_ver_                 int,			--版本号
  rec_status_              char(1),		--逻辑删除标记
  org_id_                  varchar(36),	--公司号
  color_name_			   varchar(36),	--状态名
  color_value_			   varchar(36),	--颜色值,十六进制的颜色值    FFEEOO
  primary key(id_)
);