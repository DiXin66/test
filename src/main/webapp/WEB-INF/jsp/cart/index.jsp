<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp"%>
<html>
<title>${title }</title>
<link rel="stylesheet" type="text/css" href="${jjsc}/static/css/wddc.css" />
<link rel="stylesheet" type="text/css" href="${jjsc}/static/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${jjsc}/static/css/reports.css" />
<link href="${jjsc}/static/css/demo_page.css" rel="stylesheet" />
<link href="${jjsc}/static/css/demo_table.css" rel="stylesheet" />
<link rel="stylesheet" href="${jjsc}/static/css/DT_bootstrap.css" />
<script type="text/javascript" src="${jjsc}/static/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${jjsc}/static/js/bootstrap.min.js"></script>
<body>
<jsp:include page="/common/header.jsp"/>
<div class="container">
	<div class="row">
	
		<div class="col-xs-12 mar-t-10">
		<div class="panel panel-primary">
		  <div class="panel-heading" style="height:50px;">
		   <div class="col-xs-10 panel-title" style="height:50px;">
		            我的购物车
		    </div>
		    <div class="col-xs-2 text-right panel-title" style="height:40px;">
		       <button class="btn btn-warning" type="button" onclick="deleteall()">清空购物车</button>
		    </div>
		  </div>
		  <div class="panel-body">
		    	<div class="adv-table" id="warp">
				<table  class="display table table-bordered table-striped" id="dynamic-table">
					<thead>
						<tr>
							<th align="center">编号 </th>
							<th align="center">家居名称</th>
							<th align="center">数量</th>
							<th align="center">单价</th>
							<th align="center">总价</th>
							<th align="center">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="data">
							<tr>
								   <td>${data.id }</td>
								   <td>${data.furnName }</td>
								   <td>
								   <a href="javascript:void(0);" onclick="more('${data.id }',1);">添加</a>
								   &nbsp;&nbsp;${data.number } &nbsp;&nbsp;
								   <a href="javascript:void(0);" onclick="more('${data.id }',-1);">减少</a>
								   </td>
								   <td>${data.price }</td>
								   <td>${data.total }</td>
								    <td>
								    <a href="${jjsc }/order/add?id=${data.id}">提交订单</a>
								    <a href="javascript:void(0);" onclick="deleteId('${data.id }');">删除</a>
								    </td>
								</tr>					
						</c:forEach>
					</tbody>
				</table>
			</div>
		  </div>
		  
		</div>
		
		</div>
	</div>

</div>
<jsp:include page="/common/foot.jsp"/>
<script type="text/javascript" language="javascript" src="${jjsc}/static/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="${jjsc}/static/js/DT_bootstrap.js"></script>
<script src="${jjsc}/static/js/dynamic_table_init.js"></script>
<script type="text/javascript">
function deleteId(id){
	if(confirm("确认删除吗？")){
		$.post("${jjsc}/cart/delete",{id:id},function(){
			alert("删除成功");
			window.location.reload();
		});
	}
	
}

function more(id,num){
	
		$.post("${jjsc}/cart/more",{id:id,num:num},function(){
			window.location.reload();
		});
	
}

function deleteall(){
	if(confirm("确认清空吗？")){
		$.post("${jjsc}/cart/deleteAll",function(){
			alert("清空成功");
			window.location.reload();
		});
	}
}
</script>
</body>
</html>
