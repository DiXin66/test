<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp"%>
<html>
<title>${title }</title>
<link rel="stylesheet" type="text/css" href="${jjsc}/static/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${jjsc}/static/css/reports.css" />
<link href="${jjsc}/static/css/demo_page.css" rel="stylesheet" />
<link href="${jjsc}/static/css/demo_table.css" rel="stylesheet" />
<script type="text/javascript" src="${jjsc}/static/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${jjsc}/static/js/bootstrap.min.js"></script>
<body>
<jsp:include page="/common/header2.jsp"/>
<div class="container">
	<div class="row mar-t-10">
	<form id ="pageForm" action="${jjsc }/furn/home" method="post">
	       <div class="col-md-12 mar-t-20">
	       
	       <div class="col-lg-6">
	       </div>
	          <div class="col-lg-6">
			    <div class="input-group">
			      <input type="text" class="form-control" name="name" value="${name }" placeholder="请输入商品名称">
			      <span class="input-group-btn">
			        <button class="btn btn-primary" onclick="query();" type="button">搜索</button>
			        <a class="btn btn-warning" href="${jjsc }/furn/add" type="button">新增</a>
			      </span>
			    </div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
	       </div>
	     <div class="col-md-12 mar-t-10"></div>
	     
	     <c:forEach items="${pageInfo.list}" var="data">
	     
	       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-6">
		    <div class="thumbnail">
		      <img src="${jjsc }/picture/${data.picture}" alt="..."  class="img-responsive" style="width: 100%;height: 175px;">
		      <div class="caption">
		        <h4><a href="${jjsc }/furn/add?id=${data.id}">${data.name }</a><a href="javascript:void(0);" onclick="deleteId('${data.id }');" style="float: right;">删除</a></h4>
		        <p>
		                      ￥${data.price }&nbsp;&nbsp;&nbsp;&nbsp;库存：${data.number }
		        </p>
		        
		      </div>
		    </div>
		  </div>
	     </c:forEach>
		 
		  
		  
    <jsp:include page="/common/pager.jsp"/>
		</form>
	</div>

</div>
<jsp:include page="/common/foot.jsp"/>
<script type="text/javascript">
function query(){
	$("#pageForm").submit();
}
function deleteId(id){
	if(confirm("确认删除吗？")){
		$.post("${jjsc}/furn/delete",{id:id},function(){
			alert("删除成功");
			window.location.reload();
		});
	}
}
</script>
</body>
</html>
