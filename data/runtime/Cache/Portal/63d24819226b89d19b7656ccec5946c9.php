<?php if (!defined('THINK_PATH')) exit();?>﻿
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />   
<meta name="viewport" content="width=1024" />
<meta name="keywords"  content="<?php echo ($site_seo_keywords); ?>" />
<meta name="description" content="<?php echo ($site_seo_description); ?>" />
<script type="text/javascript" src="/tpl/bs/Public/Js/domassistantcompressed-2.8.1.js"></script>
<script type="text/javascript" src="/tpl/bs/Public/Js/ie-css3.js"></script>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="/tpl/bs/Public/Css/style.css" />
<!--[if lt IE 9]>
	<script type="text/javascript" src="Js/html5.js"></script>
<![endif]-->
<title><?php echo ($site_seo_title); ?>-<?php echo ($site_name); ?></title>
</head>
<body>
<div class="theblankblock"></div>

 <header >
 <!--头部开始-->
	<div class="headtop">
		<div class="wp clearfix">
	<!-- 		<div class="share fl">
				<a href=""></a>
				<a href=""></a>
				<a href=""></a>
			</div> -->
			<div class="fr notmsg">
				<a href="#">联系我们</a>
				<a href="#">经销加盟</a>
			</div>
		</div>
	</div>
		<div class="headmain">
		<div class="wp clearfix">
			<div class="fl logo"><a href="/"></a></div>
			<nav class="fr">

         <?php $effected_id="1"; $filetpl="<a href='\$href' >\$label</a>"; $foldertpl=""; $ul_class="" ; $li_class="" ; $style="clearfix"; $showlevel=6; $dropdown=''; ?>

<?php echo sp_get_menu("main",$effected_id,$filetpl,$foldertpl,$ul_class,$li_class,$style,$showlevel,$dropdown);?>
                
				                 			</nav>
		</div>
	</div>
	<!--头部结束-->
</header>
<section id="banner">
	<div class="banwrapper">
		<ul>
          	<li class="cur crf"><img src="/tpl/bs/Public/Pic/banner1.jpg" alt="" />
				<div class="wp setanima">
					<div class="tit">建筑外墙保温解决方案&nbsp;&nbsp;</div>
					<div class="ctit">BUILDING'S EXTERIOR WALL <i style="color:#1E8CDA;">SOLUTIONS</i>&nbsp;&nbsp;</div>
                    <a class="more" href="#">Read More</a>
				</div>
			</li>
			<li class=""><img src="/tpl/bs/Public/Pic/banner4.jpg" alt="" />
				<div class="wp setanima">
					<div class="tit">公共内装解决方案&nbsp;&nbsp;</div>
					<div class="ctit">BUILDING'S EXTERIOR WALL <i style="color:#1E8CDA;">SOLUTIONS</i>&nbsp;&nbsp;</div>
					<a class="more" href="#">Read More</a>
				</div>
			</li>
			<li class=""><img src="/tpl/bs/Public/Pic/banner3.jpg" alt="" />
				<div class="wp setanima">
					<div class="tit">地铁站解决方案&nbsp;&nbsp;</div>
					<div class="ctit">BUILDING'S EXTERIOR WALL <i style="color:#1E8CDA;">SOLUTIONS</i>&nbsp;&nbsp;</div>
					<a class="more" href="#">Read More</a>
				</div>
			</li>
			<li class=""><img src="/tpl/bs/Public/Pic/banner2.jpg" alt="" />
				<div class="wp setanima">
					<div class="tit">钢结构建筑外围护解决方案&nbsp;&nbsp;</div>
					<div class="ctit">BUILDING'S EXTERIOR WALL <i style="color:#1E8CDA;">SOLUTIONS</i>&nbsp;&nbsp;</div>
					<a class="more" href="#">Read More</a>
				</div>
			</li>
			<li class=""><img src="/tpl/bs/Public/Pic/banner5.jpg" alt="" />
				<div class="wp setanima">
					<div class="tit">家庭装饰解决方案&nbsp;&nbsp;</div>
					<div class="ctit">BUILDING'S EXTERIOR WALL <i style="color:#1E8CDA;">SOLUTIONS</i>&nbsp;&nbsp;</div>
					<a class="more" href="#">Read More</a>
				</div>
			</li>
			<li class=""><img src="/tpl/bs/Public/Pic/banner6.jpg" alt="" />
				<div class="wp setanima">
					<div class="tit">洁净房解决方案&nbsp;&nbsp;</div>
					<div class="ctit">BUILDING'S EXTERIOR WALL <i style="color:#1E8CDA;">SOLUTIONS</i>&nbsp;&nbsp;</div>
					<a class="more" href="#">Read More</a>
				</div>
			</li>
		</ul>
	</div>
<!-- maparea--> 
<div id="holder" class="bancotr">
	<img name="newico" src="/tpl/bs/Public/Pic/new-ico.png" width="320" height="160" border="0" id="newico" usemap="#m_newico" alt="" />
    <map name="m_newico" id="m_newico">
		<area shape="poly" coords="31,86,160,161,13,161,31,86" href="javascript:;" alt="" />
		<area shape="poly" coords="86,31,161,161,34,86,86,31" href="javascript:;" alt="" />
		<area shape="poly" coords="160,12,160,161,87,33,160,12" href="javascript:;" alt="" />
		<area shape="poly" coords="159,12,159,161,232,33,159,12" href="javascript:;" alt="" />
		<area shape="poly" coords="233,31,158,161,285,86,233,31" href="javascript:;" alt="" />
		<area shape="poly" coords="288,86,159,161,306,161,288,86" href="javascript:;" alt="" />
    </map>
    <div class="bg">
      <img id="pointer" src="/tpl/bs/Public/Pic/pointer.png">
    </div>
	</div>
</section>

<section id="products">
		<div class="wp">
		<h2 id="prohst"><a href="/list/index/id/4">产品中心<br /><i>Product</i></a></h2>
		<ul class="clearfix">

<li><a href="/list/index/id/5"><img src="/tpl/bs/Public/Pic/20140522055219211.png" alt="" /></a>
				<span>装饰板</span></li>
<li><a href="/list/index/id/6"><img src="/tpl/bs/Public/Pic/20140523091125830.png" alt="" /></a>
				<span>金属装饰线条</span></li>
<li><a href="/list/index/id/7"><img src="/tpl/bs/Public/Pic/20140523091151851.png" alt="" /></a>
				<span>金属装饰板</span></li>
<li><a href="/list/index/id/8"><img src="/tpl/bs/Public/Pic/20140523091213973.png" alt="" /></a>
				<span>质感装饰砂浆</span></li>
<li><a href="/list/index/id/9"><img src="/tpl/bs/Public/Pic/20140523091347781.png" alt="" /></a>
				<span>干混砂浆</span></li>
            
          				</ul>
	</div>
</section>
<section id="superiority">
    <ul class="superiority-img">
    <li class="cur">
      <img class="lazy" src="/tpl/bs/Public/Pic/about_blank.png" data-original="/tpl/bs/Public/Images/20140516101724521.jpg" alt="保温<i>隔音</i>">
    </li>
	    <li>
      <img class="lazy" src="/tpl/bs/Public/Pic/about_blank.png"  data-original="/tpl/bs/Public/Images/20140514105849209.jpg" alt="A级<i>防火</i>">
    </li>
        <li>
      <img class="lazy" src="/tpl/bs/Public/Pic/about_blank.png"  data-original="/tpl/bs/Public/Images/20140514105937792.jpg" alt="品质<i>质量</i>">
    </li>
        <li>
      <img class="lazy" src="/tpl/bs/Public/Pic/about_blank.png"  data-original="/tpl/bs/Public/Images/20140514110035284.jpg" alt="时间<i>效率</i>">
    </li>
        <li>
      <img class="lazy" src="/tpl/bs/Public/Pic/about_blank.png"  data-original="/tpl/bs/Public/Images/20140514110116465.jpg" alt="绿色<i>环保</i>">
    </li>
      </ul>
  <ul class="superiority-info">
    <li>
	    <div class="slideinfo">
			<div class="slicont"><h4>保温<i>隔音</i></h4>
				<div class="cont">某某某公司采用硅酸钙板为基材，平整光滑，抗折抗冲击，冷热膨胀收缩系数小，随温度的变化尺寸几乎无变化；和隔音材料搭配使用能大大的提高墙面的隔音效果。另外，由于基材碳酸钙板的导热系数小，使产品具有隔热的良好性能。</div>
			</div>
				<div class="tit">产品优势 <span>Superiority</span></div>
		</div>
	</li>
	    <li>
	    <div class="slideinfo">
			<div class="slicont"><h4>A级<i>防火</i></h4>
				<div class="cont">板材本身具有不燃性，不会产生烟气和毒气，也不会爆裂，一般受热温度达1000°C以上，受热时间大于一小时，墙体不会破坏。</div>
			</div>
		</div>
	</li>
        <li>
	    <div class="slideinfo">
			<div class="slicont"><h4>品质<i>质量</i></h4>
				<div class="cont">某某某公司以无机材料为主要原料，所有涂料具有优良的耐碱性、耐污染性和抗冲击性。因有高度的防水性能，故可避免室内的水气和由此造成的发霉现象，用本产品制成的内装饰材料使用寿命为30年以上。 </div>
			</div>
		</div>
	</li>
        <li>
	    <div class="slideinfo">
			<div class="slicont"><h4>时间<i>效率</i></h4>
				<div class="cont">某某某公司主要采用装配式安装，不仅大大缩短了现场施工时间也节约了人工安装成本。</div>
			</div>
		</div>
	</li>
        <li>
	    <div class="slideinfo">
			<div class="slicont"><h4>绿色<i>环保</i></h4>
				<div class="cont">      某某某公司的材料主要为工业废弃物或可再生资源，相比现有建筑材料，可很大程度节省土地和矿产等不可再生资源，属绿色建材。</div>
			</div>
		</div>
	</li>
      </ul>
  </section>
<section id="case">
<div id="casebar"></div>
	<div class="wp">
	   <h2 id="caseIn"><a href="/list/index/id/17">工程案例<br /><i>CASE</i></a></h2>
	   <div class="desp">
			Companies adhering to the "low-carbon environmental protection, technological innovation, cooperation agreements as" corporate culture
	   </div>
<?php $content=sp_sql_posts_paged('cid:17;field:tid,post_title,smeta;limit 4;'); ?>
	</div>
	   <ul class="casebox clearfix">
	  <?php if(is_array($content['posts'])): foreach($content['posts'] as $key=>$vo): ?><li><a class="fangdajing" href="/article/index/id/<?php echo ($vo["tid"]); ?>"><i></i></a>
				<a class="beijing" href="/article/index/id/<?php echo ($vo["tid"]); ?>"><i><?php echo ($vo["post_title"]); ?></i></a>
				    <?php $smeta=json_decode($vo['smeta'],true); ?>
				<img src="/data/upload/<?php echo ($smeta["thumb"]); ?>" alt=""  width="250" height="162"/>
			</li><?php endforeach; endif; ?>

		   		 	   </ul>
</section>
<section id="news" class="scrollblock">
<div id="newsbar"></div>
	<div class="wp">
		<h2 id="t1"><a href="">最近动态<br /><i>NEWS</i></a></h2>
		<div id="t2" class="desp">
			Companies adhering to the "low-carbon environmental protection, technological innovation, cooperation agreements as" corporate culture
		</div>
		<ul class="newsbox clearfix">
<?php $list=sp_sql_posts_paged('cid:19,20;field:tid,post_title,smeta;limit 3;'); ?>
  <?php if(is_array($list['posts'])): foreach($list['posts'] as $key=>$vo): ?><li class="first">
				<div class="ico"></div>
						    <?php $smeta=json_decode($vo['smeta'],true); ?>
				<img src="/data/upload/<?php echo ($smeta["thumb"]); ?>" alt="" />
				<h3><a class="" href="/article/index/id/<?php echo ($vo["tid"]); ?>"><?php echo ($vo["post_title"]); ?></a></h3>
				<div class="data"><?php echo ($vo["post_excrept"]); ?>..</div>
				<a class="more" href="/article/index/id/<?php echo ($vo["tid"]); ?>">Read More</a>
			</li><?php endforeach; endif; ?>
          			
                  		</ul>
	</div>
</section>
<div class="vp"></div> 
<div class="pop popinside">
	<span class="close"></span>
	<iframe id="nesmore" src="" ></iframe>
</div>
<div style="position:relative;background:#fff;width:100%;height:35px;"></div>
<!--<section id="client">
<div class="wp">
<h2><a href="">客户<br /><i>CLIENT</i></a></h2>
<ul class="clearfix">
<li class="first"><img src="Pic/20140513095637603.png" alt="客户" title="客户"/></li>
</ul>
</div>
</section>-->
<!--<section id="map" style="width:100%;height:380px;">

</section>-->
<footer >

		<div class="wp top clearfix">
    <div class="left fl">
      <h3>联系我们<i></i></h3>
      <ul>
        <li class="phn"><i></i>4000-00-00</li>
        <li class="fix"><i></i>4000-00-00</li>
        <li class="mal"><i></i>aaaaaa@163.com</li>
        <li class="ars"><i></i>中华人民共和国95号</li>
        <li class="freephone"><i></i>全国免费报务热线: <em>4000-00-00</em></li>
      </ul>
    </div>
    <div class="mid fl">
      <h3>关于我们<i></i></h3>
        <div class="data">某某某公司建设工程有限公司是唯一家规模化、集团化、综合性极强的现代建筑材料生产、销售、施工企业。公司地址位于中华人民共和国内，占地面积100亩，1900年投资1.8亿元，并在成都、上海、呼和浩特、深圳、广州等城市设有办事处</div>
      <h3 class="lis"><i></i></h3>
      <div class="share">
        <a href="http://weixin.qq.com" target="_blank"></a>
        <a href="tencent://message/?uin=51664300&Menu=yes" target="_blank"></a>
        <a href="http://www.weibo.com" target="_blank"></a>
      </div>
    </div>

    <div class="right fl">
        <h3>导航<i></i></h3>
        <ul>
          
<li><a href='/list/index/id/3'>关于我们</a> </li>
                
<li><a href='/list/index/id/4'>产品中心</a> </li>
                
<li><a href='/list/index/id/10'>应用领域</a> </li>
                
<li><a href='/list/index/id/17'>工程案例</a> </li>
                
<li><a href='/list/index/id/18'>咨讯中心</a> </li>
                       
        </ul>
    </div>
</div>
<div class="bot">
  <div class="wp clearfix">
  <span class="fl">CopyrightCopyright &copy; 2014 ThinkCmf 版权所有</span>


    <span class="fr" style="padding-left:40px;"><a href="#" target="_blank" title="网站建设">网站建设</a>：<a href="#" target="_blank" title="某某某公司">某某某公司</a></span>
    <span class="fr">友情链接：<a href='http://www.thinkcmf.com' target='_blank'>ThinkCmf官方</a> &nbsp;&nbsp;<a href='#' target='_blank'>ThinkCmf帮助手册</a> &nbsp;&nbsp;<a href='http://bbs.thinkcmf.com' target='_blank'>ThinkCmf技术论坛</a> &nbsp;&nbsp;
      </span>
  </div>
</div>
</footer>
<script type="text/javascript" src="/tpl/bs/Public/Js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/tpl/bs/Public/Js/easing.js"></script>
<script type="text/javascript" src="/tpl/bs/Public/Js/lazyload.js"></script>
<script type="text/javascript">
//导航
$("nav li").hover(function(){
	$("i",this).addClass("hover");
	
},function(){
	$("i",this).removeClass("hover");
})
	
   
	$(window).scroll(function(){
	
		  var stp=$(window).scrollTop();
			if(stp==0){
				$(".theblankblock").height(0);
				$("#submen").addClass("nofix").css({"top":401})
					$("header").stop(true,false).css({"top":0})
					$("header").removeClass("fix").removeClass("aboutheader")
			}
			else if(stp>0){
				$(".theblankblock").height(145);
				$("#submen").removeClass("nofix").css({"top":64})
				$("header").stop(true,false).css({"top":-55})
				$("header").addClass("fix").addClass("aboutheader")
			}
		})
		
 	
	
	
	
	

</script> 
<!--<script type="text/javascript" src="Js/69a186c7db92468eb962428cc06570ea.js"></script>-->
<script type="text/javascript" src="/tpl/bs/Public/Js/raphael-min.js"></script>
<script type="text/javascript" src="/tpl/bs/Public/Js/jqueryrotate.js"></script>
<script type="text/javascript" src="/tpl/bs/Public/Js/jquery.superscrollorama.js"></script>
<script type="text/javascript" src="/tpl/bs/Public/Js/jquery.scrollorama.js"></script>
<script type="text/javascript" src="/tpl/bs/Public/Js/tweenmax.min.js"></script>
<script>
//lazyload
$("img.lazy").lazyload({effect:"fadeIn",failurelimit:10});

//map
/*	var map;
	var ruifox = '<span style="font-weight:bold">某某某公司建设工程有限公司</span><br/><span>地址：成都大邑工业集中发展区工业大道孟湾东路</span>'
	function initialize() {
		var myLatlng = new google.maps.LatLng(30.588742,103.549316);
		var myOptions = {
		 	zoom: 15,
			center: new google.maps.LatLng(30.588742,103.549316),
			scrollwheel: false,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		}
	
		map = new google.maps.Map(document.getElementById("map"), myOptions);
		var infowindow = new google.maps.InfoWindow({
			content: ruifox
		})
		var marker = new google.maps.Marker({
			position: myLatlng, 
			map: map, 
			title:"某某某公司有限公司"
		});
		infowindow.open(map,marker);
		google.maps.event.addListener(marker, 'click', function() {
			infowindow.open(map,marker);
		});
	}
initialize();*/

$("header").addClass("boxshadow");
//导航
$("nav li").hover(function(){
	$("i",this).addClass("hover");
	
},function(){
	$("i",this).removeClass("hover");
})
//产品!

$(".prodwrapper li").hover(function(){
	$("a",this).addClass("hover");
	$(".more i",this).css("left","0px").animate({left:"+=20px"},200)
},function(){
	$("a",this).removeClass("hover");
})
//产品选项卡
var number=$(".probox  ul").size()																				
$(".probox").width(number*1000);
//var $v_with= 0;
$(".prcontr span").click(function(){
	$(".prcontr span").removeClass("hover");
	$(this).addClass("hover");
	var index=$(this).index();
	Lwith=1000;
	var nowLeft= (-index)*Lwith;
	$(".probox").stop(true,true).animate({left:nowLeft+'px'},200);
	
})
//case
$(".casebox li").hover(function(){
	$(".beijing",this).stop(true,false).animate({top:"0px"},300);
	$(".fangdajing",this).stop(true,false).animate({top:"0px"},300,'easeOutBack');
},function(){
	$(".beijing",this).stop(true,false).animate({top:"242px"},300);
	$(".fangdajing",this).stop(true,false).animate({top:"-205px"},300);
})


/** -------------------- new add 20140508 -------------------- */
function scrollFun(){
  var superiority=$("#superiority"),
    superiorityImg=$("#superiority>.superiority-img"),
    superiorityInfo=$("#superiority>.superiority-info"),
    superiorityNum=$("li",superiorityImg).length,
    cases=$("#case"),
    superiorityTop=superiority.offset().top,
    oldwidth=superiority.width(),
    oldheight=superiority.height(),
    nextEle=$("li:not(.cur)",superiorityImg),
    marginNum=$(superiority).width()*(superiorityNum-1)+200;
    
  cases.css({"margin-top":marginNum});
  superiorityInfo.width(oldwidth*superiorityNum);

  $("li",superiorityInfo).width(oldwidth);
  $(window).scroll(function(){
    var scrollnum=$(window).scrollTop()-superiorityTop;
    
    if($(this).scrollTop()>=superiorityTop){
      superiority.css({"position":"fixed"});
      cases.css({"margin-top":marginNum+oldheight});
      superiorityInfo.css({"left":-scrollnum});
      nextEle.width(function(){
        var tempWidth=scrollnum-oldwidth*($(this).index()-1);
        if(tempWidth<0)tempWidth=0;
        return tempWidth;
      });
      if($(this).scrollTop()>=(superiorityTop+marginNum-200)){
        superiorityInfo.css({"left":oldwidth-superiorityInfo.width()});
        nextEle.width(function(){
          return oldwidth*(superiorityNum-$(this).index());
        });
      }
    }else{
      superiority.css({"position":"relative"});
      nextEle.width(0);
      superiorityInfo.css({"left":0});
      cases.css({"margin-top":marginNum});
    }
  });
}
scrollFun();
$(window).resize(function() {
  scrollFun();
  $(window).scrollTop($(window).scrollTop());
});

/*2014-5-12 15:21*/
//banner
	var curIndex=0;
	var time=600;
	var slideTime=6000;
	var int;
	var ints;
	ints=setTimeout(function(){
		int=setInterval("autoSlide()",slideTime);
	},6000)
	var adTxt=$("#banner li .setanima .tit");
	var adTxtct=$("#banner li .setanima .ctit");
	var adTxtctme=$("#banner li .setanima .more");
	
	$("#m_newico area").click(function(){
		if($(this).attr("class")=="current") return false;
		show($(this).index());
		window.clearInterval(int);
		window.clearInterval(ints);
		ints=setTimeout(function(){int=setInterval("autoSlide()",slideTime)},3000)
	})
	function autoSlide(){
		curIndex+1>=$("#banner li").size()?curIndex=-1:false;
		show(curIndex+1);
	}
  function show(index){
		$("#pointer").rotate({animateTo:(index*30)+15});	
		$.easing.def="easeOutQuad";
		$("#banner li").eq(curIndex).stop(false,true).delay(1000).fadeOut(time);
		adTxt.eq(curIndex).stop(false,true).animate({marginLeft:"-600px",opacity:"0"},time); //marginLeft:"-700px",
		adTxtct.eq(curIndex).stop(false,true).animate({marginLeft:"220px",opacity:"0"},time);
		adTxtctme.eq(curIndex).stop(false,true).animate({marginTop:"50px",opacity:"0"},time);
		$("#banner li").removeClass("cur");
		$("#m_newico area").removeClass("current").mouseout();
		$("#m_newico area").eq(index).addClass("current").mouseover();
		setTimeout(function(){
			$("#banner li").eq(index).stop(false,true).fadeIn(time).addClass("cur");
			adTxt.eq(index).css({marginLeft:"-600px",opacity:"0"}).stop(false,true).delay(500).animate({marginLeft:"-450px",opacity:"1"},time);
			adTxtct.eq(index).css({marginLeft:"220px",opacity:"0"}).stop(false,true).delay(500).animate({marginLeft:"0px",opacity:"1"},time);
			adTxtctme.eq(index).css({marginTop:"50px",opacity:"0"}).stop(false,true).delay(1000).animate({marginTop:"20px",opacity:"1"},time);
		//	adTxtct.eq(index).css({right:"-50px"}).stop(false,true).animate({right:"10px",},time);
		},600)
		curIndex=index;
	}
//banner end
/**---------------- new add 20140512 -----------------------*/
Raphael.fn.pieChart = function (cx, cy, r) {
  var paper = this,
      rad = Math.PI / 180,
      chart = this.set();
  function sector(cx, cy, r, startAngle, endAngle, params) {
      var x1 = cx + r * Math.cos(-startAngle * rad),
          x2 = cx + r * Math.cos(-endAngle * rad),
          y1 = cy + r * Math.sin(-startAngle * rad),
          y2 = cy + r * Math.sin(-endAngle * rad);
      return paper.path(["M", cx, cy, "L", x1, y1, "A", r, r, 0, +(endAngle - startAngle > 180), 0, x2, y2, "z"]).attr(params);
  }
  var angle = 0,
      start = 0,
      process = function (j) {
          var angleplus = 30,
              popangle = angle + (angleplus / 2),
              color = Raphael.hsb(start, .75, 1),
              bcolor = Raphael.hsb(start, 1, 1),
              ms = 500,
              p = sector(cx, cy, r, angle, angle + angleplus, {fill: "#fff", stroke: "#fff", "stroke-width": 3}),
              icoImg=$("#m_newico>area:eq("+(5-j)+")");
          icoImg.mouseover(function () {
            p.stop().animate({transform: "s1.1 1.1 " + cx + " " + cy,fill:"#1E8CDA",stroke:"#1E8CDA"}, ms, "elastic");
          }).mouseout(function () {
			if($(this).is(".current")) return false;
            p.stop().animate({transform: "",fill:"#fff",stroke: "#fff"}, ms, "elastic");
          });
          angle += angleplus;
          chart.push(p);
          start += .1;
      };
  for (i = 0; i < 6; i++) {
      process(i);
  }
  return chart;
};
Raphael("holder", 320, 320).pieChart(160, 160, 140);
$("#pointer").rotate(15);
$("#m_newico area:eq(0)").addClass("current").mouseover();
//index Animate
var controller = $.superscrollorama({
		triggerAtCenter: false,
		playoutAnimations: true
});

$("#products li").css('position','relative').each(function(){	
	$(this).css({left:600,top:0,opacity:0})
})


$('#t1').css('position','relative').each(function() {
		controller.addTween('#t1', TweenMax.from( $(this), 1, {delay:0,css:{left:0,top:50,opacity:0}, ease:Back.easeIn}),0,-900,false);
});
$('#t2').css('position','relative').each(function() {
		controller.addTween('#t2', TweenMax.from( $(this), 1, {delay:0,css:{left:400,top:0,opacity:0}, ease:Back.easeIn}),0,-800,false);
});

$("#products h2").css('position','relative').each(function(){	
	$(this).css({left:0,top:-40,opacity:0})
})


$(window).scroll(function(){
	  var stp=$(window).scrollTop();
    var thestp=$("#products").offset().top;
		if(stp>=(thestp-($(window).height()+150)/2)){
				$("#products h2").each(function(){
						$(this).animate({left:0,top:0,opacity:1},700,'')
				})
				setTimeout(function(){
					$("#products li").each(function(i){
						setTimeout(function(){ $("#products li").eq(i).animate({left:0,top:0,opacity:1},1000,'')},150*i)
					})
				},400)	
		}		
})

$(window).scroll(function(){
	var stp=$(window).scrollTop();
	var thestp=$("#case").offset().top;
	if(stp>=(thestp-($(window).height()+300)/2)){
				$(".casebox li").each(function(i){
					setTimeout(function(){ $(".casebox li").eq(i).addClass("hover")},100*i)
// $(".casebox li").eq(i).addClass("hover")
				})
	}
})

// initialize the plugin, pass in the class selector for the sections of content (blocks)
		var scrollorama = $.scrollorama({
					blocks:'.scrollblock',
					enablePin:false
		});	
		$("#news li").css("position","relative");
		scrollorama.animate('#news li:eq(0)',{delay: -800, duration: 1200, property:'left', start:-700, end:0})
		scrollorama.animate('#news li:eq(1)',{delay: -800, duration: 1200, property:'top', start:700, end:0})
		scrollorama.animate('#news li:eq(2)',{delay: -800, duration: 1200, property:'left', start:700, end:0})
		scrollorama.animate('#news li',{delay: -800, duration: 1200, property:'opacity', start:0.2, end:1 })

		
		
$(".popside").click(function(){
		var datUrl=$(this).attr("data-url");
		$(".pop iframe").attr("src",datUrl+"")
		$(".vp").fadeIn();
		$(".popinside").fadeIn();
		$("body").addClass("vistd");
	})
	$(".vp ,.close").click(function(){
		$(".vp").fadeOut();
		$(".popinside").fadeOut();
		$("body").removeClass("vistd");
	})
	

</script>
</body>
</html>