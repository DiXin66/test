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
		  <div class="panel-heading" style="height:40px;">
		   <h3 class="panel-title">我的订单</h3>
		  </div>
		  <div class="panel-body">
		    	<div class="adv-table" id="warp">
				<table  class="display table table-bordered table-striped" id="dynamic-table">
					<thead>
						<tr>
							<th align="center">订单编号 </th>
							<th align="center">用户编号 </th>
							<th align="center">购物车编号</th>
							<th align="center">总价</th>
							<th align="center">下单时间</th>
							<th align="center">状态</th>
							<th align="center">收件人</th>
							<th align="center">联系方式</th>
							<th align="center">收件地址</th>
							<th align="center">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="data">
							<tr>
								   <td width="85px">${data.id }</td>
								   <td width="85px">${data.userId }</td>
								   <td width="110px">${data.cartId }</td>
								   <td width="50px">${data.price }</td>
								   <td width="170px"><fmt:formatDate value="${data.time }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
								   <td width="70px">${data.state==0?'未付款':'已付款' }</td>
								   <td width="70px">${data.recipient }</td>
								   <td width="101px">${data.tel }</td>
								   <td width="200px">${data.address }</td>
								   <td>
								  		 <a href="${jjsc}/order/update?id=${data.id  } ">修改</a>
								   		 <a href="javascript:void(0);" onclick="deleteId('${data.id }');">删除</a>
								         <c:if test="${data.state == 0 }">
								    	  <a href="javascript:void(0);" onclick="pay('${data.id }');">付款</a>
								    	 </c:if>
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
		$.post("${jjsc}/order/delete",{id:id},function(){
			alert("删除成功");
			window.location.reload();
		});
	}
}

function pay(id){
	if(confirm("确认付款吗？")){
		$.post("${jjsc}/order/pay",{id:id},function(data){
			if(data == 1){
				alert('付款成功');
			}else if(data == 2){
				alert('订单中家居数量大于系统库存');
			}else if(data == 3){
				alert('订单中价格大于用户余额');
			}
			window.location.reload();
		});
	}
	
}
</script>
</body>
</html>
