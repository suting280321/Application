<%--
  Created by IntelliJ IDEA.
  User: Hehel
  Date: 2018/7/10
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>

<%@ page isELIgnored="false"%>
<%@ page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<%
	String path1 = request.getParameter("path");
	String path = path1.substring(0, path1.indexOf("-"));
%>

<%-- <%String link = request.getParameter("link");%> --%>
<html>
<head>
<title>创新方法工作平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet"
	href="/webresources/ace-master/assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="/webresources/ace-master/assets/css/ace.min.css" />
<link rel="stylesheet"
	href="/webresources/ace-master/assets/font-awesome/4.5.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="/webresources/ace-master/assets/css/ace-rtl.min.css" />
<link rel="stylesheet"
	href="/webresources/ace-master/assets/css/ace-skins.min.css" />
<link rel="stylesheet"
	href="/webresources/ace-master/assets/css/fonts.googleapis.com.css" />
<script type="text/javascript"
	src="/webresources/ace-master/assets/js/ace-extra.min.js"></script>
<script type="text/javascript"
	src="/webresources/ace-master/assets/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="/webresources/ace-master/assets/js/ace.min.js"></script>
<script type="text/javascript"
	src="/webresources/ace-master/assets/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/webresources/ace-master/assets/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="/webresources/ace-master/assets/js/jquery.dataTables.bootstrap.min.js"></script>
<script type="text/javascript"
	src="/webresources/ace-master/assets/js/jquery-ui.custom.min.js"></script>
<script type="text/javascript"
	src="/webresources/ace-master/assets/js/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript"
	src="/webresources/ace-master/assets/js/ace-elements.min.js"></script>
<script type="text/javascript"
	src="/webresources/ace-master/assets/js/jquery.mobile.custom.min.js"></script>
<!--  <script type="text/javascript" src="/webresources/common/js/userLogin.js"></script> -->
<script>
	//给页面加上图片
	$(document).ready(function() {
		$("#content img").each(function() {
			var src = $(this).attr('src');
			/* console.log("图片加载成功"); */
			$(this).attr('src', '/newsFiles/application/' + src);
		});
	});
	//footer变色   	
	try {
		ace.settings.loadState('main-container')
	} catch (e) {
	}
	$(document).ready(function() {
		$('#footbarHref').css('color', '#4682B4');
	});
</script>
</head>
<body class="no-skin">
	<div id="navbarDiv" class="navbar navbar-default">
		<!--     <div class="navbar navbar-default" id="navbarHtml"> -->
		<div id="navbar-container" class="navbar-container">
			<div class="navbar-header pull-left">
				<a id="href0" href="http://innovation.xjtu.edu.cn/"
					class="navbar-brand" style="text-decoration: none;"> <small>
						<i class="fa fa-leaf"></i>小微企业多创新方法融合与集成应用平台
				</small>
				</a> <a id="href1" href="/Application/index.jsp" class="navbar-brand"
					style="text-decoration: none;"> <small> <small
						class="showAppNameDiv">应用案例</small>
				</small>
				</a>
			</div>
			<div class="navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav" style="height: 20px;">
					<li class="grey"><a id="href2" href="#"
						onclick="gotoHref(this)" style="text-decoration: none;"> <img
							class="nav-user-photo" type="text/javascript"
							src="/webresources/ace-master/assets/images/avatars/platform.png"
							alt="平台首页"> 平台主页
					</a></li>
					<li class="purple"><a href="#" onclick="gotoHref(this)"
						style="text-decoration: none;"> <img class="nav-user-photo"
							type="text/javascript"
							src="/webresources/ace-master/assets/images/avatars/process.png"
							alt="模板层"> 模板层
					</a></li>
					<li class="green"><a href="#" style="text-decoration: none;">
							<img class="nav-user-photo" type="text/javascript"
							src="/webresources/ace-master/assets/images/avatars/tool.png"
							alt="工具集"> 工具集
					</a></li>
					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle" style="text-decoration: none;"> <img
							id="userAvatar" class="nav-user-photo" type="text/javascript"
							src="/webresources/ace-master/assets/images/avatars/avatar2.png"
							alt="用户头像"> <span class="user-info"> <small>欢迎光临,</small>
								<span id="userName">111</span>
						</span> <i class="icon-caret-down"></i>
					</a>
						<ul id="userDropDown"
							class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="#" onclick="gotoUserInfo()"
								style="text-decoration: none;"><i class="icon-user"></i>
									个人资料</a></li>
							<li class="divider"></li>
							<li><a href="#" onclick="logout()"
								style="cursor: pointer; text-decoration: none;"><i
									class="icon-off"></i> 退出</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
	</div>
	<div class="main-container ace-save-state" id="main-container">
		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#"
							style="text-decoration: none;">创新方法工具平台</a></li>

						<li><a href="/Application/index3.jsp"
							style="text-decoration: none;">应用案例</a></li>
						<li><%=path%></li>

						<%-- <li style="font-size:14px;"><%=request.getSession().getAttribute("name") %>
                    </li> --%>
						<%--
                    <li style="font-size:14px;">
                        <%=request.getAttribute("path") %>>
                    </li> 
                    <li>
                        <a href="/Application/index.jsp" style="text-decoration:none;">${str}</a>
                    </li> --%>
					</ul>
				</div>

				<div class="page-content"
					style="border: 300px solid #DDDDDD /* #F5F5F5*/; border-width: 0 300px;">

					<div class="row" style="margin: 0 90 0 90">
						<div class="col-xs-12">
							<div class="row" id="content">${msg}</div>
						</div>

					</div>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.page-content -->
		<div class="footer">
			<div class="footer-inner">
				<div class="footer-content"
					style="left: 2px; right: 2px; padding: 0px;">
					<ul>
						<span class="bigger-120"> <span class="blue bolder">
								<a href="http://cadcam.xjtu.edu.cn/" id="footbarHref"
								style="text-decoration: none;">西安交通大学CAD/CAM研究室 </a>
						</span>
						</span>
						<span>Copyright&copy; 2018</span>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>

</html>

