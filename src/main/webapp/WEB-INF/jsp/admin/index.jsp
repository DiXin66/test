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
<jsp:include page="/common/header2.jsp"/>
<div class="container">
	<div class="row">
	
		<div class="col-xs-12 mar-t-10">
		<div class="panel panel-primary">
		  <div class="panel-heading" style="height:40px;">
		   <h3 class="panel-title">用户信息管理</h3>
		  </div>
		  <div class="panel-body">
		    	<div class="adv-table" id="warp">
				<table  class="display table table-bordered table-striped" id="dynamic-table">
					<thead>
						<tr>
							<th align="center">编号 </th>
							<th align="center">用户名 </th>
							<th align="center">地址 </th>
							<th align="center">联系方式</th>
							<th align="center">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="data">
							<tr>
								   <td>${data.id }</td>
								   <td>${data.name }</td>
								   <td>${data.address }</td>
								   <td>${data.tel }</td>
								    <td><a href="${jjsc}/admin/upUser?id=${data.id  } ">修改</a>  <a href="javascript:void(0);" onclick="deleteId('${data.id }');">删除</a></td>
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
		$.post("${jjsc}/admin/delete",{id:id},function(){
			alert("删除成功");
			window.location.reload();
		});
	}
	
}
</script>
</body>
</html>
