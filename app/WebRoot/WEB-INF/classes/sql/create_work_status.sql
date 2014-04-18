--作业类型、状态表
create table work_status_ (
  id_                      int,			--主键
  order_id_				   int,			--外键
  creator_                 varchar(36),	--创建人
  create_time_             date,		--创建时间
  modifier_                varchar(36),	--修改人
  modify_time_             date,		--修改时间
  rec_ver_                 int,			--版本号
  rec_status_              char(1),		--逻辑删除标记
  org_id_                  varchar(36),	--公司号
  work_type_id_			   int,			--作业类型id
  status_id_			   int,			--状态id
  primary key(id_),
  constraint fk_work_type_id_1 foreign key (work_type_id) references work_type_(id_),
  constraint fk_status_1 foreign key (status_id) references status_(id_)
);