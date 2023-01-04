<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content_List/content_List.css">
<title>#### pointshop ####</title>
</head>
<body>
<%@ include file="include/leftBar.jsp" %>

<div class="pointshop_List" style="padding-top:50px;padding-left:550px;position: relative;z-index: 1;">


<div class="card" style="width: 800px; height:750px; border:1px solid #dddddd; border-radius:15px;">
  <div class="card-body" style="height:100px; ">
 	<!-- 컨텐츠 헤더 -->  
 		
 		<table border="0" cellpadding= "0" cellspacing="0" width="760"  style="margin-bottom:0px; position:relative;">

		  	<tr>
				<td width="50%"  align="center" rowspan="2">
				<img src="${pageContext.request.contextPath}/resources/img/pointmarket.png" alt="" width="250" height="100" class="rounded-circle me-2">
		  		</td>
		  		
		  		<td width="15%"  align="center" rowspan="2">
		  			<img class ="rounded-circle me-2" src="/resources/uploadfiles/${minfo.profileName} " alt="..." width="70" height="70" >
		  		
		  		</td>
		  		
		  		<td height="20%">
		  			<div id = "shop_profile01">${minfo.nick}
			
					</div>
		   		</td>
		   		
		  	</tr>
		  	
		  	<tr>
		  		<td>
			  		<a href="pointList">
				   		<button type="button" class="btn btn-outline-secondary" 
				          style="--bs-btn-padding-y: .4rem; --bs-btn-padding-x: .9rem; --bs-btn-font-size: .95rem;">
				  		 보유포인트 : ${minfo.point}p
						</button>
					</a>
					

	   				<c:if test="${sid eq admin}">
					<button type="button" class="btn btn-outline-primary" onclick="script:window.location='pointshop_write'"
			          style="--bs-btn-padding-y: .4rem; --bs-btn-padding-x: .9rem; --bs-btn-font-size: .95rem; margin-top: 5px;">
			  		 상품올리기
					</button>
					</c:if>
					
					
				</td>	
		  	</tr>
	   </table>
	
	
  </div>
  <br>
  	<hr style="margin:30px;">
  
  
  <!-- 판매중 리스트 -->
  	<div class="overflow-auto" style="height:600px">
  	<div class="row row-cols-3 row-cols-md-3 g-4" style="padding-left: 20px;padding-right: 20px;">	
   	<c:forEach items="${sList}" var="sList">	
	
	  <div class="col" >
	    <div class="card">
				<img src="/resources/uploadfiles/${sList.fileName}" width="100" height="230" class="card-img-top" alt="...">

		      
		      <div class="card-body" style="height: 120px;padding:10px;">
				<div>
				<span class="shop_text01">${sList.title }</span>
					<button type="button" class="btn btn-danger" style="height: 25px; padding: 2px; font-size:12px; margin-left: 10px; ">
					<fmt:formatNumber value="${sList.spoint}" pattern="#,###,###,###"/>p</button>
				</div>
		        <div class="shop_text02">${sList.content }</div>
		        <div>
			        <button type="button" class="btn btn-outline-primary"
	        			style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
	 					구매하기
					</button>
		        </div>
		      </div>
      </div>
    </div>
  </c:forEach>
  </div>
  
  </div>
  	

	<!-- 판매중 리스트 끝 -->	


  </div>
  
	</div>

<%@ include file="include/footer.jsp" %>
</body>
</html>