--订单视图(物流订单、分解策略、状态视图)
create or replace order_view as (
	select
		  o.id_                      as	id_,						--主键
		  o.creator_                 as creator_,					--创建人
		  o.create_time_             as create_time_,				--创建时间
		  o.modifier_                as modifier_,					--修改人
		  o.modify_time_             as modify_time_,				--修改时间
		  o.rec_ver_                 as rec_ver_,					--版本号
		  o.rec_status_              as rec_status_,				--逻辑删除标记
		  o.org_id_                  as org_id_,					--公司号
		  o.system_no_               as system_no_,					--系统号
		  o.order_no_                as order_no_,					--物流订单号
		  o.order_type_              as order_type_,				--订单类型
		  o.priority_                as priority_,					--优先级
		  o.trans_type_              as trans_type_,				--运输方式
		  o.customer_                as customer_,					--客户
		  o.order_time_              as order_time_,				--下单时间
		  o.require_send_time_fm_    as require_send_time_fm_,		--要求发货时间从
		  o.require_send_time_to_    as require_send_time_to_,		--要求发货时间到
		  o.require_receive_time_fm_ as require_receive_time_fm_,	--要求送达时间从
		  o.require_receive_time_to_ as require_receive_time_to_,	--要求送达时间到
		  o.shipper_                 as shipper_,					--发货方
		  o.location_fm_             as location_fm_,				--发货地点
		  o.consignee_               as consignee_,					--收货方
		  o.location_to_             as location_to_,				--收货地点
		  o.order_source_            as order_source_,				--订单来源
		  o.po_no_                   as po_no_,						--采购单号
		  o.so_no_                   as so_no_,						--销售单号
		  o.do_no_                   as do_no_,						--提货单号
		  o.remark_                  as remark_,					--备注
		  o.parent_order_            as parent_order_,				--父订单号
		  o.meger_flag_              as meger_flag_,				--合并标志
		  o.split_flag_              as split_flag_,				--拆分标志
		  o.expiration_time_         as expiration_time_,			--失效日期
		  o.appointment_flag_        as appointment_flag_,			--是否预约
		  o.emergent_flag_           as emergent_flag_,				--是否紧急
		  o.payment_type_            as payment_type_,				--付款方式
		  o.warehouser_              as warehouser_,				--仓库
		  o.station_                 as station_,					--基地
		  o.editable_                as editable_,					--是否可编辑
		  o.temperature_level_       as temperature_level_,			--温层
		  o.pre_order_time_          as pre_order_time_,			--预约时间
		  o.pre_order_no_            as pre_order_no_,				--预约单号
		  s.bms_visitable_			 as bms_visitable_,				--bms是否可见
		  s.tms_visitable_			 as tms_visitable_,				--tms是否可见
		  s.wms_visitable_			 as wms_visitable_,				--wms是否可见
		  sv.name_					 as status_name_,				--状态名称
		  sv.color_name_			 as color_name_,				--状态颜色
		  sv.color_value_			 as color_value_				--状态颜色,十六进制
	from order_ o,separate_rule_ s,status_view sv,order_type_ ot
   where o.org_id_=s.org_id_
	 and o.separate_rule_id_=s.id_
	 and o.org_id_=ot.org_id_
	 and o.order_type_id_=ot.id_
	 and o.id_=sv.order_id_
	 and o.org_id_=sv.org_id_
	 and sv.is_current_status_='Y'
	 and o.rec_status_=0
	 and s.rec_status_=0
	 and sv.rec_status_=0
	 and ot.rec_status_=0
);