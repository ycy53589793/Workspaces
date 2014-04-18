--用户表
create table user_ (
  id_                      int,			--主键
  creator_                 varchar(36),	--创建人
  create_time_             date,		--创建时间
  modifier_                varchar(36),	--修改人
  modify_time_             date,		--修改时间
  rec_ver_                 int,			--版本号
  rec_status_              char(1),		--逻辑删除标记
  org_id_                  varchar(36),	--公司号
  username_				   varchar(36),	--用户名
  password_				   int,			--密码
  email_				   varchar(36),	--邮箱
  sex_					   char(1),		--性别
  birthday_				   date,		--出生日期
  role_					   varchar(36),	--角色
  age_					   int,			--年龄
  group_				   int,			--用户组
  primary key(id_)
);