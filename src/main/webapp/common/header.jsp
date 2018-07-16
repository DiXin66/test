<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp" %>
<div class="navbar navbar-default navbar-fixed-top" id="mainnav" role="navigation">
    <div class="container">
        <div class="navbar-header">	
            	<a class="navbar-brand" href="${jjsc}/user/index" ><span class="navbar-title">家居商城</span></a>   
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
									<a href="${jjsc}/user/manage" >
										<i class="ace-icon fa fa-cog" ></i>
										用户管理
									</a>
								</li>
								<li class="divider"></li>
								<li litype="indexsetting" >
									<a href="${jjsc}/user/index" >
										<i class="ace-icon fa fa-cog" ></i>
										商品浏览
									</a>
								</li>
								<li class="divider"></li>
								<li litype="indexsetting" >
									<a href="${jjsc}/cart/home" >
										<i class="ace-icon fa fa-cog" ></i>
										我的购物车
									</a>
								</li>
								<li class="divider"></li>
								<li litype="indexsetting" >
									<a href="${jjsc}/order/user" >
										<i class="ace-icon fa fa-cog" ></i>
										我的订单
									</a>
								</li>
								<li class="divider"></li>
								<li litype="indexsetting" >
									<a href="${jjsc}/index.jsp" >
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