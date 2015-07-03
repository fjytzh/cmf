<?php
namespace Common\Model;
use Common\Model\CommonModel;
class ProductModel extends CommonModel {
	/*
	 * 表结构
	 * id:post的自增id
	 * p_name:名称
	 * p_model:型号
	 * p_format 规格
	 * brand 品牌
	 * p_desc:详细说明
	 * pic:图片
	 * price:价格
	 * num:剩余数量
	 * total_num: 总数
	 * post_author
	 * post_date:更新时间
	 */
	
	protected $_auto = array (
		array ('post_date', 'mGetDate', 1, 'callback' ), 	// 增加的时候调用回调函数
		//array ('post_modified', 'mGetDate', 2, 'callback' ) 
	);
	// 获取当前时间
	function mGetDate() {
		return date ( 'Y-m-d H:i:s' );
	}
	
	protected function _before_write(&$data) {
		parent::_before_write($data);
	}
}