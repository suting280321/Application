
<%@ page isELIgnored="false" %>
<%@ page import="java.io.File" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  errorPage="errorPage.jsp"%>

<%-- <%String link = request.getParameter("link");%> --%>
<html>
<head>
    <title>创新方法工作平台</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="stylesheet" href="/webresources/ace-master/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/webresources/ace-master/assets/css/ace.min.css"/>
    <link rel="stylesheet" href="/webresources/ace-master/assets/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="/webresources/ace-master/assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="/webresources/ace-master/assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="/webresources/ace-master/assets/css/fonts.googleapis.com.css"/>
    <link href="css/bootstrap-table.min.css" rel="stylesheet">
    
    <script type="text/javascript" src="/webresources/ace-master/assets/js/ace-extra.min.js"></script>
    <script type="text/javascript" src="/webresources/ace-master/assets/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="/webresources/ace-master/assets/js/ace.min.js"></script>
    <script type="text/javascript" src="/webresources/ace-master/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/webresources/ace-master/assets/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="/webresources/ace-master/assets/js/jquery.dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="/webresources/ace-master/assets/js/jquery-ui.custom.min.js"></script>
    <script type="text/javascript" src="/webresources/ace-master/assets/js/jquery.ui.touch-punch.min.js"></script>
    <script type="text/javascript" src="/webresources/ace-master/assets/js/ace-elements.min.js"></script>
    <script type="text/javascript" src="/webresources/ace-master/assets/js/jquery.mobile.custom.min.js"></script>
    <script type="text/javascript" src="js/buttonAction.js"></script>
	<script src="js/bootstrap-table.min.js"></script>
	<script src="js/bootstrap-table-zh-CN.min.js"></script>
    <script type="text/javascript" src="js/test_table.js"></script>
    <style type="text/css">
.fixed-table-pagination div.pagination{
	margin-right: 70px;
	margin-top: 65px;
}
.fixed-table-pagination .pagination-detail{
	margin-left: 60px;
    margin-right: 390px;
    margin-top: 65px;
}
.btn-group+.btn, .btn-group>.btn {
    border-top-width: 0px;
    border-right-width: 0px;
    border-bottom-width: 0px;
    border-left-width: 0px;
}
.btn {
    padding-left: 4px;
    padding-right: 4px;
    padding-top: 4px;
    padding-bottom: 4px;
}
.btn-group .dropdown-toggle, .input-group-lg>.form-control,
 .input-group-lg>.input-group-addon, .input-group-lg>.input-group-btn>.btn {
    border-radius: 2px;
}
.fixed-table-body{
	margin-top: 30px;
}
/* .fixed-table-pagination{
	margin-top: 55px;
} */
/* .pull-right pagination-detail{
	margin-top: 65px;
}
.pull-right pagination{
	margin-top: 65px;
} */
</style>
</head>
<body class="no-skin">
<div id="navbarDiv" class="navbar navbar-default">
<!--     <div class="navbar navbar-default" id="navbarHtml"> -->
        <div id="navbar-container" class="navbar-container">
            <div class="navbar-header pull-left">
                <a id="href0" href="http://innovation.xjtu.edu.cn/" class="navbar-brand" style="text-decoration:none;">
                    <small> <i class="fa fa-leaf"></i>小微企业多创新方法融合与集成应用平台 </small>
                </a>
                <a id="href1" href="/Application/index3.jsp" class="navbar-brand" style="text-decoration:none;">
                    <small>
                        <small class="showAppNameDiv">应用案例</small>
                    </small>
                </a>
            </div>
            <div class="navbar-header pull-right" role="navigation">
                <ul class="nav ace-nav" style="height: 20px;">
                    <li class="grey">
                        <a id="href2"  href="#" onclick="gotoHref(this)"  style="text-decoration:none;">
                            <img class="nav-user-photo" type="text/javascript" src="/webresources/ace-master/assets/images/avatars/platform.png" alt="平台首页"> 平台主页
                        </a>
                    </li>
                    <li class="purple">
                        <a href="#" onclick="gotoHref(this)" style="text-decoration:none;">
                            <img class="nav-user-photo" type="text/javascript" src="/webresources/ace-master/assets/images/avatars/process.png" alt="模板层" > 模板层
                        </a>
                    </li>
                    <li class="green">
                        <a href="#"  style="text-decoration:none;">
                            <img class="nav-user-photo" type="text/javascript" src="/webresources/ace-master/assets/images/avatars/tool.png" alt="工具集"> 工具集
                        </a>
                    </li>
                    <li class="light-blue">
                       <!-- data-toggle="dropdown" --> 
                        <a  class="dropdown-toggle" style="text-decoration:none;">
                            <img id="userAvatar" class="nav-user-photo" type="text/javascript" src="/webresources/ace-master/assets/images/avatars/avatar2.png" alt="用户头像">
                            <span class="user-info">
									<small>欢迎光临,</small>
									<span id="userName">111</span>
								</span>
                           <!--  <i class="icon-caret-down"></i> -->
                        </a>
                        <ul id="userDropDown" class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close"> <li><a href="#" onclick="gotoUserInfo()"style="text-decoration:none;"><i class="icon-user"></i> 个人资料</a></li><li class="divider"></li><li><a href="#" onclick="logout()" style="cursor:pointer;text-decoration:none;"><i class="icon-off"></i> 退出</a></li></ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="main-container ace-save-state" id="main-container"style="height:80%;">
    <div class="main-content">
        <div class="main-content-inner" style="height:661px;">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#" style="text-decoration:none;">创新方法工具平台</a>
                    </li>

                    <li>
                        <a href="/Application/index.jsp" style="text-decoration:none;">应用案例</a>
                    </li>
                    <%-- <li>
                        <a href="/Application/index.jsp" style="text-decoration:none;">${str}</a>
                    </li> --%>
                </ul>
            </div>

            <div class="page-content">
                        <%-- <%
                        Integer count=(Integer)application.getAttribute("count");
     if(count==null){
         count=0;
     }
     application.setAttribute("count", count+1);
 %>
  <div style="text-align:center;">您是第<%=count %>个访问用户</div> --%>
                            <%--这里是判断文件是否存在，所以这里的地址为文件的目录地址--%>
                           <%--  <jsp:include page="<%=link%>" /> --%>
                          <!--  <div class="fixed-table-body" style="height: 485px;">
                           <div class="fixed-table-pagination" style="display: block;margin-top: 100px;"> -->
                          <table id="table"  style="border-collapse:separate; border-spacing:0px 10px;table-layout: fixed;margin:0 0 0 24%;width:60%"></table>
                   <!--      </div>
                    </div>

                </div>
            </div>
            /.col
        </div> -->
        <!-- /.row -->
    </div>
    <!-- /.page-content -->
    <div class="footer" >
			<div class="footer-inner">
				<div class="footer-content" style="left: 2px;right: 2px;padding: 0px;">
					<ul>
						<span class="bigger-120">
							<span class="blue bolder">
								<a href="http://cadcam.xjtu.edu.cn/" id="footbarHref" style="text-decoration:none;">西安交通大学CAD/CAM研究室 </a>
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

