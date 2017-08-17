<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
		<title>主页</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="renderer" content="webkit">
		
		<link rel="shortcut icon" href="${ctx}/assets/img/favicon.ico" />
		<!-- Loading Bootstrap -->
		<link href="${ctx}/assets/css/backend.min.css?v=1.0.1" rel="stylesheet">
		
		<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
		<!--[if lt IE 9]>
		  <script src="${ctx}/assets/js/html5shiv.js"></script>
		  <script src="${ctx}/assets/js/respond.min.js"></script>
		<![endif]-->
		<style>
		    .skin-list li{
		        float:left; width: 33.33333%; padding: 5px;
		    }
		    .skin-list li a{
		        display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4);
		    }
		</style>
		<script type="text/javascript">
			var ctxUrl = "${ctx}";
		    
			var require = {
				config : {
					"site" : {
						"name" : "qywx",
						"cdnurl" : "",
						"version" : "1.0.1",
					},
					"actionname" : "index",
					"jsname" : "backend\/index"
				}
			};
		</script>
    </head>
    <body class="hold-transition skin-green sidebar-mini fixed" id="tabs">
        <div class="wrapper">
			<header id="header" class="main-header">
                <!-- Logo -->
				<a href="javascript:;" class="logo">
				    <!-- 迷你模式下Logo的大小为50X50 -->
				    <span class="logo-mini">微信</span>
				    <!-- 普通模式下Logo -->
				    <span class="logo-lg"><b>企业微信</b></span>
				</a>
				<!-- 顶部通栏样式 -->
				<nav class="navbar navbar-static-top">
				    <!-- 边栏切换按钮-->
				    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
				        <span class="sr-only">Toggle navigation</span>
				    </a>

				    <div id="nav" class="pull-left">
				        <!--如果不想在顶部显示角标,则给ul加上disable-top-badge类即可-->
				        <ul class="nav nav-tabs nav-addtabs disable-top-badge" role="tablist">
				        </ul>
				    </div>

				    <div class="navbar-custom-menu">
				        <ul class="nav navbar-nav">
				
				            <li>
				                <a href="/index/index/index" target="_blank"><i class="fa fa-home" style="font-size:14px;"></i></a>
				            </li>
				
				            <li class="dropdown notifications-menu">
				                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
				                    <i class="fa fa-bell-o"></i>
				                    <span class="label label-warning"></span>
				                </a>
				                <ul class="dropdown-menu">
				                    <li class="header">Latest news</li>
				                    <li>
				                        <!-- FastAdmin最新更新信息,你可以替换成你自己站点的信息,请注意修改public/${ctx}/assets/js/backend/index.js文件 -->
				                        <ul class="menu">
				
				                        </ul>
				                    </li>
				                    <li class="footer"><a href="#" target="_blank">View all</a></li>
				                </ul>
				            </li>
				
				            <li class="dropdown messages-menu github-commits">
				                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
				                    <i class="fa fa-github"></i>
				                    <span class="label label-info"></span>
				                </a>
				                <ul class="dropdown-menu">
				                    <li class="header">Recent commits</li>
				                    <li>
				                        <ul class="menu">
				
				                        </ul>
				                    </li>
				                    <li class="footer"><a href="#" target="_blank">View all</a></li>
				                </ul>
				            </li>
				
				            <li>
				                <a href="javascript:;" data-toggle="wipecache" title="清空缓存">
				                    <i class="fa fa-trash"></i>
				                </a>
				            </li>
				
				            <li class="hidden-xs">
				                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-language"></i></a>
				                <ul class="dropdown-menu">
				                    <li class="active">
				                        <a href="?ref=addtabs&lang=zh-cn">简体中文</a>
				                    </li>
				                    <li class="">
				                        <a href="?ref=addtabs&lang=en">English</a>
				                    </li>
				                </ul>
				            </li>
				
				            <li class="hidden-xs">
				                <a href="#" data-toggle="fullscreen"><i class="fa fa-arrows-alt"></i></a>
				            </li>
				
				            <!-- 账号信息下拉框 -->
				            <li class="dropdown user user-menu">
				                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
				                    <img src="${ctx}/assets/img/avatar.png" class="user-image" alt="<shiro:principal property="username"/>">
				                    <span class="hidden-xs"><shiro:principal property="username"/></span>
				                </a>
				                <ul class="dropdown-menu">
				                    <!-- User image -->
				                    <li class="user-header">
				                        <img src="${ctx}/assets/img/avatar.png" class="img-circle" alt="">
				
				                        <p>
				                            <shiro:principal property="username"/><small>2017-07-13 14:40:49</small>
				                        </p>
				                    </li>
				                    <!-- Menu Body -->
				                    <li class="user-body">
				                        <div class="row">
				                            <div class="col-xs-4 text-center">
				                                <a href="http://www.fastadmin.net" target="_blank">官网</a>
				                            </div>
				                            <div class="col-xs-4 text-center">
				                                <a href="http://forum.fastadmin.net" target="_blank">论坛</a>
				                            </div>
				                            <div class="col-xs-4 text-center">
				                                <a href="http://doc.fastadmin.net" target="_blank">文档</a>
				                            </div>
				                        </div>
				                    </li>
				                    <!-- Menu Footer-->
				                    <li class="user-footer">
				                        <div class="pull-left">
				                            <a href="general/profile" class="btn btn-default btn-flat addtabsit">个人资料</a>
				                        </div>
				                        <div class="pull-right">
				                            <a href="${ctx}/logout" class="btn btn-default btn-flat">注销</a>
				                        </div>
				                    </li>
				                </ul>
				            </li>
				            <!-- 控制栏切换按钮 -->
				            <li>
				                <a href="javascript:;" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
				            </li>
				        </ul>
				    </div>
				</nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
				<section class="sidebar">
				    <!-- Sidebar user panel -->
				    <div class="user-panel hidden-xs">
				        <div class="pull-left image">
				            <a href="general/profile" class="addtabsit"><img src="${ctx}/assets/img/avatar.png" class="img-circle" /></a>
				        </div>
				        <div class="pull-left info">
				            <p><shiro:principal property="username"/></p>
				            <i class="fa fa-circle text-success"></i> 在线        </div>
				    </div>

				    <!-- search form -->
				    <form action="" method="get" class="sidebar-form" onsubmit="return false;">
				        <div class="input-group">
				            <input type="text" name="q" class="form-control" placeholder="搜索菜单">
				            <span class="input-group-btn">
				                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
				                </button>
				            </span>
				            <div class="menuresult list-group sidebar-form hide">
				            </div>
				        </div>
				    </form>
				    <!-- /.search form -->

				    <!-- sidebar menu: : style can be found in sidebar.less -->
				    <!--如果想始终显示子菜单,则给ul加上show-submenu类即可-->
					<ul class="sidebar-menu">
						<li class=" active"><a href="${ctx}/dashboard.jsp" addtabs="11180" url="${ctx}/dashboard.jsp" py="kzt" pinyin="kongzhitai">
							<i class="fa fa-dashboard "></i> <span>控制台</span> <span class="pull-right-container"> <small class="label pull-right bg-blue">hot</small></span></a>
						</li>
						<c:forEach items="${myRules}" var="item" varStatus="status">
							<c:if test="${item.type eq 1 && status.index eq 0}">
								<li class=" treeview">
									<a href="javascript:;" addtabs="${item.id}" url="javascript:;">
										<i class="${item.icon}"></i> <span>${item.name}</span> 
											<span class="pull-right-container"> <small class="label pull-right bg-purple">18</small></span>
									</a>
									<ul class="treeview-menu">
							</c:if>
							<c:if test="${item.type eq 2}">
								<li class=""><a href="${item.rule}" addtabs="${item.id}" url="${item.rule}" py="${item.py}" pinyin="${item.pinyin}">
									<i class="${item.icon}"></i> <span>${item.name}</span> <span class="pull-right-container"> </span></a>
								</li>
							</c:if>
							<c:if test="${item.type eq 1 && status.index ne 0}">
								</ul></li>
								<li class=" treeview">
									<a href="javascript:;" addtabs="${item.id}" url="javascript:;">
										<i class="${item.icon}"></i> <span>${item.name}</span> 
											<span class="pull-right-container"> <small class="badge pull-right bg-red">new</small></span>
									</a>
									<ul class="treeview-menu">
							</c:if>
							<c:if test="${fn:length(myRules) == status.index + 1}">
								</ul></li>
							</c:if>
						</c:forEach>
					<li class=" treeview"><a href="javascript:;" addtabs="11290"
						url="javascript:;" py="wxgl" pinyin="weixinguanli"><i
							class="fa fa-wechat"></i> <span>企业微信</span> <span
							class="pull-right-container"><i class="fa fa-angle-left"></i>
						</span></a>
						<ul class="treeview-menu">
							<li class=""><a href="/admin/wechat/autoreply"
								addtabs="11291" url="/admin/wechat/autoreply" py="wxzdhfgl"
								pinyin="weixinzidonghuifuguanli"><i class="fa fa-reply-all"></i>
									<span>自动回复</span> <span class="pull-right-container">
								</span></a></li>
							<li class=""><a href="/admin/wechat/config" addtabs="11297"
								url="/admin/wechat/config" py="wxpzgl"
								pinyin="weixinpeizhiguanli"><i class="fa fa-cog"></i> <span>配置管理</span>
									<span class="pull-right-container"> </span></a></li>
							<li class=""><a href="/admin/wechat/menu" addtabs="11303"
								url="/admin/wechat/menu" py="cdgl" pinyin="caidanguanli"><i
									class="fa fa-bars"></i> <span>菜单管理</span> <span
									class="pull-right-container"> </span></a></li>
							<li class=""><a href="/admin/wechat/response"
								addtabs="11310" url="/admin/wechat/response" py="zygl"
								pinyin="ziyuanguanli"><i class="fa fa-list-alt"></i> <span>资源管理</span>
									<span class="pull-right-container"> </span></a></li>
						</ul></li>
					<li class=""><a href="/admin/version" addtabs="11192"
						url="/admin/version" py="bbgl" pinyin="banbenguanli"><i
							class="fa fa-file-text-o"></i> <span>版本管理</span> <span
							class="pull-right-container"> </span></a></li>
					<li class="header">相关链接</li>
					<li><a href="http://doc.fastadmin.net"><i
							class="fa fa-list text-red"></i> <span>官方文档</span></a></li>
					<li><a href="http://forum.fastadmin.net"><i
							class="fa fa-comment text-yellow"></i> <span>社区交流</span></a></li>
					<li><a href="https://jq.qq.com/?_wv=1027&k=487PNBb"><i
							class="fa fa-qq text-aqua"></i> <span>QQ交流群</span></a></li>
				</ul>
			</section>
				<!-- /.sidebar -->

            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper tab-content tab-addtabs">

            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer hide">
                <div class="pull-right hidden-xs">
                </div>
                <strong>Copyright &copy; 2017-2018 <a href="http://fastadmin.net">Fastadmin</a>.</strong> All rights
                reserved.
            </footer>

            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
			<!-- Control Sidebar -->
			<aside class="control-sidebar control-sidebar-dark">
			    <!-- Create the tabs -->
			    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
			        <li class="active"><a href="#control-sidebar-setting-tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-wrench"></i></a></li>
			        <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
			        <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
			    </ul>
			    <!-- Tab panes -->
			    <div class="tab-content">
			        <!-- Home tab content -->
			        <div class="tab-pane active" id="control-sidebar-setting-tab">
			            <h4 class="control-sidebar-heading">布局设定</h4>
			            <div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-layout="fixed" class="pull-right"> 固定布局</label><p>盒子模型和固定布局不能同时启作用</p></div>
			            <div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-layout="layout-boxed" class="pull-right"> 盒子布局</label><p>盒子布局最大宽度将被限定为1250px</p></div>
			            <div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-layout="sidebar-collapse" class="pull-right"> 切换菜单栏</label><p>切换菜单栏的展示或收起</p></div>
			            <div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-enable="expandOnHover" class="pull-right"> 菜单栏自动展开</label><p>鼠标移到菜单栏自动展开</p></div>
			            <div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-menu="show-submenu" class="pull-right"> 显示菜单栏子菜单</label><p>菜单栏子菜单将始终显示</p></div>
			            <div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-menu="disable-top-badge" class="pull-right"> 禁用顶部彩色小角标</label><p>左边菜单栏的彩色小角标不受影响</p></div>
			            <div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-controlsidebar="control-sidebar-open" class="pull-right"> 切换右侧操作栏</label><p>切换右侧操作栏覆盖或独占</p></div>
			            <div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-sidebarskin="toggle" class="pull-right"> 切换右侧操作栏背景</label><p>将右侧操作栏背景亮色或深色切换</p></div>
			            <h4 class="control-sidebar-heading">皮肤</h4>
			            <ul class="list-unstyled clearfix skin-list">
			                <li><a href="javascript:;" data-skin="skin-blue" style="" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Blue</p></li>
			                <li><a href="javascript:;" data-skin="skin-black" class="clearfix full-opacity-hover"><div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display:block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display:block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Black</p></li>
			                <li><a href="javascript:;" data-skin="skin-purple" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Purple</p></li>
			                <li><a href="javascript:;" data-skin="skin-green" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Green</p></li>
			                <li><a href="javascript:;" data-skin="skin-red" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Red</p></li>
			                <li><a href="javascript:;" data-skin="skin-yellow" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Yellow</p></li>
			                <li><a href="javascript:;" data-skin="skin-blue-light" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Blue Light</p></li>
			                <li><a href="javascript:;" data-skin="skin-black-light" class="clearfix full-opacity-hover"><div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display:block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display:block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Black Light</p></li>
			                <li><a href="javascript:;" data-skin="skin-purple-light" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Purple Light</p></li>
			                <li><a href="javascript:;" data-skin="skin-green-light" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Green Light</p></li>
			                <li><a href="javascript:;" data-skin="skin-red-light" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Red Light</p></li>
			                <li><a href="javascript:;" data-skin="skin-yellow-light" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px;">Yellow Light</p></li>
			            </ul>
			        </div>
			        <div class="tab-pane" id="control-sidebar-home-tab">
			            <h3 class="control-sidebar-heading">Recent Activity</h3>
			            <ul class="control-sidebar-menu">
			                <li>
			                    <a href="javascript:void(0)">
			                        <i class="menu-icon fa fa-birthday-cake bg-red"></i>
			
			                        <div class="menu-info">
			                            <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
			                            <p>Will be 23 on April 24th</p>
			                        </div>
			                    </a>
			                </li>
			                <li>
			                    <a href="javascript:void(0)">
			                        <i class="menu-icon fa fa-user bg-yellow"></i>
			
			                        <div class="menu-info">
			                            <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>
			
			                            <p>New phone +1(800)555-1234</p>
			                        </div>
			                    </a>
			                </li>
			                <li>
			                    <a href="javascript:void(0)">
			                        <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>
			
			                        <div class="menu-info">
			                            <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>
			
			                            <p>nora@example.com</p>
			                        </div>
			                    </a>
			                </li>
			                <li>
			                    <a href="javascript:void(0)">
			                        <i class="menu-icon fa fa-file-code-o bg-green"></i>
			
			                        <div class="menu-info">
			                            <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>
			
			                            <p>Execution time 5 seconds</p>
			                        </div>
			                    </a>
			                </li>
			            </ul>
			            <!-- /.control-sidebar-menu -->
			
			            <h3 class="control-sidebar-heading">Tasks Progress</h3>
			            <ul class="control-sidebar-menu">
			                <li>
			                    <a href="javascript:void(0)">
			                        <h4 class="control-sidebar-subheading">
			                            Custom Template Design
			                            <span class="label label-danger pull-right">70%</span>
			                        </h4>
			
			                        <div class="progress progress-xxs">
			                            <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
			                        </div>
			                    </a>
			                </li>
			                <li>
			                    <a href="javascript:void(0)">
			                        <h4 class="control-sidebar-subheading">
			                            Update Resume
			                            <span class="label label-success pull-right">95%</span>
			                        </h4>
			
			                        <div class="progress progress-xxs">
			                            <div class="progress-bar progress-bar-success" style="width: 95%"></div>
			                        </div>
			                    </a>
			                </li>
			                <li>
			                    <a href="javascript:void(0)">
			                        <h4 class="control-sidebar-subheading">
			                            Laravel Integration
			                            <span class="label label-warning pull-right">50%</span>
			                        </h4>
			
			                        <div class="progress progress-xxs">
			                            <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
			                        </div>
			                    </a>
			                </li>
			                <li>
			                    <a href="javascript:void(0)">
			                        <h4 class="control-sidebar-subheading">
			                            Back End Framework
			                            <span class="label label-primary pull-right">68%</span>
			                        </h4>
			
			                        <div class="progress progress-xxs">
			                            <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
			                        </div>
			                    </a>
			                </li>
			            </ul>
			            <!-- /.control-sidebar-menu -->
			
			        </div>
			        <!-- /.tab-pane -->
			        <!-- Stats tab content -->
			        <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
			        <!-- /.tab-pane -->
			        <!-- Settings tab content -->
			        <div class="tab-pane" id="control-sidebar-settings-tab">
			            <form method="post">
			                <h3 class="control-sidebar-heading">General Settings</h3>
			
			                <!-- /.form-group -->
			
			                <div class="form-group">
			                    <label class="control-sidebar-subheading">
			                        Allow mail redirect
			                        <input type="checkbox" class="pull-right" checked>
			                    </label>
			
			                    <p>
			                        Other sets of options are available
			                    </p>
			                </div>
			                <!-- /.form-group -->
			
			                <div class="form-group">
			                    <label class="control-sidebar-subheading">
			                        Expose author name in posts
			                        <input type="checkbox" class="pull-right" checked>
			                    </label>
			
			                    <p>
			                        Allow the user to show his name in blog posts
			                    </p>
			                </div>
			                <!-- /.form-group -->
			
			                <!-- /.form-group -->
			            </form>
			        </div>
			        <!-- /.tab-pane -->
			    </div>
			</aside>
			<!-- /.control-sidebar -->
       	</div>
       	<!-- ./wrapper -->
       	<!-- end main content -->
        <script src="${ctx}/assets/js/require.js" data-main="${ctx}/assets/js/require-backend.min.js?v=1.0.1"></script>
    </body>
</html>