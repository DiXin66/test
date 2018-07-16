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
<jsp:include page="/common/header.jsp"/>
<div class="container">
	<div class="row">
	
		<div class="row mar-t-10">
	<form id ="pageForm" action="${jjsc }/user/index" method="post">
	       <div class="col-md-12 mar-t-20">
	       
	       <div class="col-lg-6">
	       </div>
	          <div class="col-lg-6">
			    <div class="input-group">
			      <input type="text" class="form-control" name="name" value="${name }" placeholder="请输入商品名称">
			      <span class="input-group-btn">
			        <button class="btn btn-primary" onclick="query();" type="button">搜索</button>
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
		        <h4>${data.name }<a href="javascript:void(0);" onclick="Search('${data.id }');" style="float: right;">详情</a></h4>
		        <p>
		                      ￥${data.price }&nbsp;库存：${data.number } 
		                      &nbsp;
		                      <a href="${jjsc }/cart/add?id=${data.id}">加入购物车</a>
		            </p>
		      </div>
		    </div>
		  </div>
	     </c:forEach>
		 
		  
		  
    <jsp:include page="/common/pager.jsp"/>
		</form>
	</div>
		
	</div>

</div>
<jsp:include page="/common/foot.jsp"/>
<script type="text/javascript">
function query(){
	$("#pageForm").submit();
}
</script>
</body>
</html>
