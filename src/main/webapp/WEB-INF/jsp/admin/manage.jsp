<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp"%>
<html>
<title>${title }</title>
<link rel="stylesheet" type="text/css" href="${jjsc}/static/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${jjsc}/static/css/reports.css" />
<script type="text/javascript" src="${jjsc}/static/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${jjsc}/static/js/bootstrap.min.js"></script>
<body>
<jsp:include page="/common/header2.jsp"/>
<div class="container">
	<div class="row">
	
		<div class="col-xs-12 mar-t-10">
		<div class="panel panel-primary">
		  <div class="panel-heading" style="height:40px;">
		  <h3 class="panel-title">用户管理</h3>
		  </div>
		  <div class="panel-body">
		      <form id="dataForm" name="dataForm" action="${jjsc }/admin/update" method="post">
		    <div class="col-md-12 form-inline" style="margin-top:10px">
		    <input type="hidden" name = "id" value="${user.id }">
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left"><h4> 用户名：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="name" value="${user.name }" readonly="readonly" class="form-control" style="width:100%;"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left"><h4> 密码：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="password" value="${user.password }" class="form-control" style="width:100%;"/>
					</div>
				</div>
				
				
			</div>
			</form>
		  </div>
		  
		</div>
		
		</div>
		<div class="col-md-12" style="margin-top:20px" align="center">
		<button class="btn btn-warning" onclick="save();">
			保存
		</button>
		<button class="btn btn-warning" onclick="history.go(-1);">
			返回
		</button>
</div>
	</div>

</div>
<jsp:include page="/common/foot.jsp"/>
</body>
<script type="text/javascript">
function save(){

	if(confirm("确定修改吗？")){
		$("#dataForm").submit();
	}
	
}
</script>
</html>
