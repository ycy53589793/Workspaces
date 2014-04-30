create table order_type_(
	id_                      int,			--主键
	creator_                 varchar(36),	--创建人
	create_time_             date,			--创建时间
	modifier_                varchar(36),	--修改人
	modify_time_             date,			--修改时间
	rec_ver_                 int,			--版本号
	rec_status_              char(1),		--逻辑删除标记
	org_id_                  varchar(36),	--公司号
	name_					 varchar(36),	--订单类型名称
	primary key(id_)
);