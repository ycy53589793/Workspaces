--状态视图(状态明细、颜色)
create or replace status_view as (
	select
		sd.id_                      as id_,					--主键
		sd.order_id_				as order_id_,			--外键
		sd.creator_                 as creator_,			--创建人
		sd.create_time_             as create_time_,		--创建时间
		sd.modifier_                as modifier_,			--修改人
		sd.modify_time_             as modify_time_,		--修改时间
		sd.rec_ver_                 as rec_ver_,			--版本号
		sd.rec_status_              as rec_status_,			--逻辑删除标记
		sd.org_id_                  as org_id_,				--公司号
		sd.sequence_				as sequence_,			--序号
		sd.plan_time_			    as plan_time_,			--计划时间
		sd.actual_time_			    as actual_time_,		--实际时间
		sd.is_current_status_	    as is_current_status_,	--是否当前状态
		sd.last_status_			    as last_status_,		--上一个状态
		sd.visitable_			    as visitable_,			--是否可见
		sd.remark_				    as remark_,				--备注
		s.name_			   			as name_,				--状态名称
		co.color_name_				as color_name_,			--颜色名称
		co.color_value_				as color_value_			--颜色值，十六进制
	from status_detail sd,status s,color co
   where sd.status_id_=s.id_
     and sd.org_id_=s.org_id_
     and s.color_id_=co.id_
     and s.org_id_=co.org_id_
	 and sd.rec_status_=0
	 and s.rec_status_=0
	 and co.rec_status_=0
);