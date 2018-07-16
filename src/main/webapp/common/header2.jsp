<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp" %>
<div class="navbar navbar-default navbar-fixed-top" id="mainnav" role="navigation">
    <div class="container">
        <div class="navbar-header">	
            	<a class="navbar-brand" href="${jjsc}/admin/index" ><span class="navbar-title">家居商城</span></a>   
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li style="background-color: #788BA0;height: 50px">
                <a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<span class="user-info" style="color:white;">
									功能菜单
								</span>
								<i class="ace-icon fa fa-caret-down"></i>
							</a>
							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li class="divider"></li>
								<li litype="indexsetting" >
									<a href="${jjsc}/admin/manage" >
										<i class="ace-icon fa fa-cog" ></i>
										管理员信息管理
									</a>
								</li>
								<li class="divider"></li>
								<li litype="indexsetting" >
									<a href="${jjsc}/admin/home" >
										<i class="ace-icon fa fa-cog" ></i>
										用户管理
									</a>
								</li>
								<li class="divider"></li>
								<li litype="indexsetting" >
									<a href="${jjsc}/furn/home" >
										<i class="ace-icon fa fa-cog" ></i>
										家居管理
									</a>
								</li>
								<li class="divider"></li>
								<li litype="indexsetting" >
									<a href="${jjsc}/order/admin" >
										<i class="ace-icon fa fa-cog" ></i>
										订单管理
									</a>
								</li>
								<li class="divider"></li>
								<li litype="indexsetting" >
									<a href="${jjsc}/admin/login" >
										<i class="ace-icon fa fa-cog" ></i>
										退出登录
									</a>
								</li>
								<li class="divider"></li>
								<li>
									<a onclick="window.history.back(-1);">
										<i class="fa fa-reply" aria-hidden="true"></i>
										返回
									</a>
								</li>
							</ul>               
                </li>
            </ul>
            
        </div><!--/.nav-collapse -->
    </div>
</div>