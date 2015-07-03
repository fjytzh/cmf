<?php
namespace Product\Action;
use Common\Action\AdminbaseAction;
class AdminPageAction extends AdminbaseAction {
	protected $_obj;
	function _initialize() {
		parent::_initialize();
		$this->_obj =D("Product");
	}
	function index(){
		
		$where_ands=array();
		$fields=array(
			'p_name'  => array("field"=>"p_name","operator"=>"like"),
		);
		if(IS_POST){
			foreach ($fields as $param =>$val){
				if (isset($_POST[$param]) && !empty($_POST[$param])) {
					$operator=$val['operator'];
					$field   =$val['field'];
					$get=$_POST[$param];
					$_GET[$param]=$get;
					if($operator=="like"){
						$get="%$get%";
					}
					array_push($where_ands, "$field $operator '$get'");
				}
			}
		}else{
			foreach ($fields as $param =>$val){
				if (isset($_GET[$param]) && !empty($_GET[$param])) {
					$operator=$val['operator'];
					$field   =$val['field'];
					$get=$_GET[$param];
					if($operator=="like"){
						$get="%$get%";
					}
					array_push($where_ands, "$field $operator '$get'");
				}
			}
		}
		
		$where= join(" and ", $where_ands);
		
		$count=$this->_obj->where($where)->count();
		
		$page = $this->page($count, C('ADMIN_PAGE_NUM',null,20));
		
		$posts=$this->_obj->where($where)->limit($page->firstRow . ',' . $page->listRows)->select();
				
		$this->assign("Page", $page->show('Admin'));
		$this->assign("formget",$_GET);
		$this->assign("posts",$posts);
		$this->display();
	}
		
	function add(){
         $this->display();
	}
	
	function add_post(){
		if (IS_POST) {
			$_POST['smeta']['thumb'] = sp_asset_relative_url($_POST['smeta']['thumb']);
			$_POST['post']['post_date']=date("Y-m-d H:i:s",time());
			$_POST['post']['post_author']=get_current_admin_id();
			$_POST['post']['smeta']=json_encode($_POST['smeta']);
			$_POST['post']['num]'] = $_POST['post']['total_num'];
			$result=$this->_obj->add($_POST['post']);
			print_r($result);
			exit;
			if ($result) {
				//$this->success("添加成功！");
			} else {
				//$this->error("添加失败！");
			}
		}
	}
	
	public function edit(){
		$id = intval(I('id'));
		$post=$this->_obj->where("id=$id")->find();
		$this->assign("post",$post);
		$this->display();
	}
	
	public function edit_post(){
		if (IS_POST) {
			unset($_POST['post']['post_author']);
			$result=$this->_obj->save($_POST['post']);
			if ($result !== false) {
				//
				$this->success("保存成功！");
				//$this->success(json_encode($_POST['meta']));
			} else {
				$this->error("保存失败！");
			}
		}
	}
	
	//排序
	public function listorders() {
		$status = parent::_listorders($this->terms_relationship);
		if ($status) {
			$this->success("排序更新成功！");
		} else {
			$this->error("排序更新失败！");
		}
	}

	//删除
	function clean(){
		
		if(isset($_POST['ids'])){
			$ids = implode(",", $_POST['ids']);
			if ($this->_obj->where("id in ($ids)")->delete()!==false) {
				$this->success("删除成功！");
			} else {
				$this->error("删除失败！");
			}
		}
		if(isset($_GET['id'])){
			$id = intval(I("get.id"));
			if ($this->_obj->delete($id)!==false) {
				$this->success("删除成功！");
			} else {
				$this->error("删除失败！");
			}
		}
	}
	
	function addnum(){
		$id = intval(I('id'));
		$post=$this->_obj->where("id=$id")->find();
		$this->assign("post",$post);
        $this->display();
	}
	
	function addnum_post(){
		if (IS_POST) {
			$id = intval(I('id'));
			$post=$this->_obj->where("id=$id")->find();
			
			$update_arr = array();
			$update_arr['num'] = $post['num'] + $_POST['post']['add_num'];
			$update_arr['total_num'] = $post['total_num'] +  $_POST['post']['add_num'];
			$result=$this->_obj->save($update_arr);
			
			if ($result !== false) {
				//
				$this->success("保存成功！");
				//$this->success(json_encode($_POST['meta']));
			} else {
				$this->error("保存失败！");
			}
		}
	}
	
	
}