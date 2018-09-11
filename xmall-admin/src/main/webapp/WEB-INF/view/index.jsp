<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/ionicons.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/AdminLTE.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/_all-skins.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/morris.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/jquery-jvectormap.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/bootstrap-datepicker.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/daterangepicker.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/bootstrap3-wysihtml5.min.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
		
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-ui.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/raphael.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/morris.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.sparkline.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-jvectormap-1.2.2.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-jvectormap-world-mill-en.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.knob.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/moment.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/daterangepicker.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap-datepicker.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap3-wysihtml5.all.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.slimscroll.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/fastclick.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/adminlte.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/dashboard.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/demo.js"></script>
	</head>
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">
			<header class="main-header">
				<a href="index2.html" class="logo">
					<span class="logo-mini"><b>A</b>LT</span>
      				<span class="logo-lg"><b>Admin</b>LTE</span>
    			</a>
    			<nav class="navbar navbar-static-top">
      				<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        				<span class="sr-only">Toggle navigation</span>
      				</a>
      				<div class="navbar-custom-menu">
        				<ul class="nav navbar-nav">
          					<li class="dropdown user user-menu">
            					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
              						<img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              						<span class="hidden-xs">Alexander Pierce</span>
            					</a>
            					<ul class="dropdown-menu">
              						<li class="user-header">
                						<img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                						<p>
                  							Alexander Pierce - Web Developer
                  							<small>Member since Nov. 2012</small>
                						</p>
              						</li>
              						<li class="user-body">
                						<div class="row">
                  							<div class="col-xs-4 text-center">
                    							<a href="#">Followers</a>
                  							</div>
                  							<div class="col-xs-4 text-center">
                    							<a href="#">Sales</a>
                  							</div>
                  							<div class="col-xs-4 text-center">
                    							<a href="#">Friends</a>
                  							</div>
                						</div>
              						</li>
              						<li class="user-footer">
                						<div class="pull-left">
                  							<a href="#" class="btn btn-default btn-flat">Profile</a>
                						</div>
                						<div class="pull-right">
                  							<a href="#" class="btn btn-default btn-flat">Sign out</a>
               	 						</div>
              						</li>
            					</ul>
          					</li>
        				</ul>
      				</div>
    			</nav>
  			</header>
  			<aside class="main-sidebar">
    			<section class="sidebar">
      				<div class="user-panel">
        				<div class="pull-left image">
          					<img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        				</div>
        				<div class="pull-left info">
          					<p>Alexander Pierce</p>
        				</div>
      				</div>
      				<ul class="sidebar-menu" data-widget="tree">
        				<li class="treeview">
          					<a href="#">
            					<i class="fa fa-laptop"></i>
            						<span>UI Elements</span>
            						<span class="pull-right-container">
              						<i class="fa fa-angle-left pull-right"></i>
            					</span>
          					</a>
          					<ul class="treeview-menu">
            					<li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
					            <li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>
					            <li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
					            <li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
					            <li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
					            <li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
          					</ul>
        				</li>
        				<li class="treeview">
          					<a href="#">
				            	<i class="fa fa-edit"></i> <span>Forms</span>
				            	<span class="pull-right-container">
				              		<i class="fa fa-angle-left pull-right"></i>
				            	</span>
				          	</a>
							<ul class="treeview-menu">
					            <li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
					            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
					            <li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>
							</ul>
        				</li>
      				</ul>
    			</section>
  			</aside>
  			<div class="content-wrapper">
    			<section class="content-header">
	      			<h1>
	       	 			Dashboard
	        			<small>Control panel</small>
	      			</h1>
	      			<ol class="breadcrumb">
	        			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
	        			<li class="active">Dashboard</li>
	      			</ol>
    			</section>
    			<section class="content">
      				<div class="row"></div>
    			</section>
  			</div>
  			<footer class="main-footer">
    			<div class="pull-right hidden-xs">
      				<b>Version</b> 2.4.0
    			</div>
    			<strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    			reserved.
  			</footer>
       		immediately after the control sidebar -->
  			<div class="control-sidebar-bg"></div>
		</div>
	</body>
</html>