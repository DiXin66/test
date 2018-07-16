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
		  <h3 class="panel-title">家居管理</h3>
		  </div>
		  <div class="panel-body">
		      <form id="dataForm" name="dataForm" action="${jjsc }/furn/save" method="post"  enctype="multipart/form-data">
		    <div class="col-md-12 form-inline" style="margin-top:10px">
		    <input type="hidden" name = "id" value="${info.id }">
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left"><h4> 名称：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="name" value="${info.name }" class="form-control" style="width:100%;"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left"><h4> 类型：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="type" value="${info.type }" class="form-control" style="width:100%;"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left"><h4> 颜色：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="color" value="${info.color }" class="form-control" style="width:100%;"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left"><h4> 尺寸：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="size" value="${info.size }" class="form-control" style="width:100%;"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left"><h4> 价格：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="price" value="${info.price }" class="form-control" style="width:100%;"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left"><h4> 库存：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="number" value="${info.number }" class="form-control" style="width:100%;"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left"><h4> 图片：</h4></label>
			
					<div class="col-sm-8">
						<input type="file" id="dataName" name="pic" value="${info.picture }" class="form-control" style="width:100%;"/>
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
