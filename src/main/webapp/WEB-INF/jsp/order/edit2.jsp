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
		  <h3 class="panel-title">订单管理</h3>
		  </div>
		  <div class="panel-body">
		    <form id="dataForm" name="dataForm" action="${jjsc }/order/save2" method="post">
		    <div class="col-md-12 form-inline" style="margin-top:10px">
		    <input type="hidden" name = "id" value="${info.id }" >
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left; width:125px" ><h4 style="text-align: right;"> 用&nbsp;户&nbsp;&nbsp;编&nbsp;号：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="userId" value="${info.userId }" readonly="readonly" class="form-control" style="width:100%;"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left; width:125px" ><h4 style="text-align: right;"> 购物车编号：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="cartId" value="${info.cartId }" readonly="readonly" class="form-control" style="width:100%;"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left; width:125px" ><h4 style="text-align: right;" > 订单总价格：</h4></label>
			 
					<div class="col-sm-8">
						<input type="text" id="dataName" name="price" value="${info.price }" class="form-control" style="width:100%;" readonly="readonly"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left; width:125px" ><h4 style="text-align: right;"> 下&nbsp;单&nbsp;&nbsp;时&nbsp;间：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="time" value="${info.time }" class="form-control" style="width:100%;" readonly="readonly"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left; width:125px" ><h4 style="text-align: right;"> 订&nbsp;单&nbsp;&nbsp;状&nbsp;态：</h4></label>
					<div class="col-sm-8">
						<input type="text" id="dataName" name="state" value="${info.state }" class="form-control" style="width:100%;" readonly="readonly"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left; width:125px"><h4 style="text-align: right;"> 收&nbsp;&nbsp;&nbsp;&nbsp;件&nbsp;&nbsp;&nbsp;&nbsp;人：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="recipient" value="${info.recipient }" class="form-control" style="width:100%;"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left; width:125px"><h4 style="text-align: right;"> 联&nbsp;系&nbsp;&nbsp;方&nbsp;式：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="tel" value="${info.tel }" class="form-control" style="width:100%;"/>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label class="control-label" style="float:left; width:125px"><h4 style="text-align: right;"> 收&nbsp;件&nbsp;&nbsp;地&nbsp;址：</h4></label>
			
					<div class="col-sm-8">
						<input type="text" id="dataName" name="address" value="${info.address }" class="form-control" style="width:100%;"/>
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
	if(confirm("确定修改吗啊？")){
		$("#dataForm").submit();
	}	
}
</script>
</html>
