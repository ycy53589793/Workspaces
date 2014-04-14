--状态明细表
create table status_detail_ (
  id_                      int,			--主键
  order_id_				   int,			--外键
  creator_                 varchar(36),	--创建人
  create_time_             date,		--创建时间
  modifier_                varchar(36),	--修改人
  modify_time_             date,		--修改时间
  rec_ver_                 int,			--版本号
  rec_status_              char(1),		--逻辑删除标记
  org_id_                  varchar(36),	--公司号
  sequence_				   int,			--序号
  status_id_			   int,			--外键
  plan_time_			   date,		--计划时间
  actual_time_			   date,		--实际时间
  is_current_status_	   char(1),		--是否当前状态
  last_status_			   varchar(36),	--上一个状态
  visitable_			   char(1),		--是否可见
  remark_				   varchar(255),--备注
  primary key(id_),
  constraint fk_status_id_1 foreign key (status_id_) references status_(id_)
);