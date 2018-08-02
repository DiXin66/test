<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp"%>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="${jjsc}/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="${jjsc}/static/css/login.css">
</head>
<body>
<div class="form-bg" style="padding: 20px 0;">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <form class="form-horizontal" action="${jjsc}/user/login" method="post">
                    <span class="heading">用户登录</span>
                    <div class="form-group">
                        <input type="text" class="form-control" id="inputEmail3" name="name" placeholder="用户名">
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="form-group help">
                        <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="密　码">
                        <i class="fa fa-lock"></i>
                        <span class="message">${result}</span>
                    </div>

                    <div class="form-group">
                        <div class="main-checkbox">
                            <input type="checkbox" value="None" id="checkbox1" name="check"/>
                            <label for="checkbox1"></label>
                        </div>
                        <span class="text"><a href="${jjsc }/user/toRegister">点击注册</a></span>
                        <div class="main-checkbox">
                            <input type="checkbox" value="None" id="checkbox2" name="check"/>
                            <label for="checkbox1"></label>
                        </div>
                        <span class="text"><a href="${jjsc }/admin/login">切换为管理员登录</a></span>
                        <button type="submit" class="btn btn-default">登录</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>