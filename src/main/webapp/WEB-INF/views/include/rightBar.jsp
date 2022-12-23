<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/rightBar/rightBar.css">

<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>


<%
	String ssid = (String)session.getAttribute("sessionId");
	String snick = (String)session.getAttribute("nick");
%>


<div class="recommend">
<div class="card" style="width: 300px; height:820px; border:1px solid #dddddd; border-radius:5px;">

<!-- 본인 닉네임 -->
<div class="card-body"> 
   	<img src="${pageContext.request.contextPath }/resources/img/person.png"  width="30" height="30" alt="..." ${minfo.nick}>
   		<span style="font-size:16px; font-weight:bold;"><%=snick %></span>
		<hr>
<!-- 본인 닉네임끝 -->		
		
<!--  구매관련 정보조회 시작 -->
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1" style="font-size: 15px; height: 20px;">지역</span>
		  <input type="text" class="form-control" placeholder="ex)구월동" aria-label="Username" aria-describedby="basic-addon1" style="height: 20px; font-size: 15px;">
		</div>
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1" style="font-size: 15px; height: 20px;">제품</span>
		  <input type="text" class="form-control" placeholder="ex)구월동" aria-label="Username" aria-describedby="basic-addon1" style="height: 20px; font-size: 15px;">
		</div>
		
		<div><button type="button" class="btn btn-outline-primary"
        style="--bs-btn-padding-y: .10rem; --bs-btn-padding-x: .55rem; --bs-btn-font-size: .75rem; width: 100%; font-size: 15px; height: 25px;">입력</button></div>
<!--  구매관련 정보조회 끝 -->
	
		
		
<!--  찜한목록 시작 -->
<hr>
<!--  찜한 목록 아이콘 태크 시작 -->
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-right-heart" viewBox="0 0 16 16">
  		<path d="M2 1a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h9.586a2 2 0 0 1 1.414.586l2 2V2a1 1 0 0 0-1-1H2Zm12-1a2 2 0 0 1 2 2v12.793a.5.5 0 0 1-.854.353l-2.853-2.853a1 1 0 0 0-.707-.293H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12Z"/>
  		<path d="M8 3.993c1.664-1.711 5.825 1.283 0 5.132-5.825-3.85-1.664-6.843 0-5.132Z"/>
	</svg>


<!-- 찜한 목록 아이콘 태그 끝 -->

	<span class="list_index02"><i class="bi bi-chat-right-heart"></i>찜한목록</span>
	<hr class="garo"> 
		<div class="card" style="width: 100%; height:15%; overflow: auto;">
		    
				<div class="list_index01">
				  <div class="list_index">
				  
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div>
			      <div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div><div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div><div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div><div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div>
			  	</div>
		    	</div>
<!--  내가찜한목록 끝 -->
<br>

<!-- 구매 목록 아이콘 태그 시작 -->
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
  		<path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
	</svg>
<!-- 구매 목록 아이콘 태그 끝 -->

<!--  구매목록 시작 -->
	<span class="list_index02"><i class="bi bi-bag"></i>구매목록</span>
	<hr class="garo"> 
		<div class="card" style="width: 100%; height:15%; overflow: auto;">
		    
				<div class="list_index01">
				  <div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div>
			      <div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div><div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div><div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div><div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div>
			  	</div>
		    	</div>
<!--  구매목록 끝 -->		
<br>

<!--  판매 목록 아이콘 태그 시작 -->
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-check" viewBox="0 0 16 16">
  		<path d="M11.354 6.354a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
  		<path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
	</svg>
<!--  판매 목록 아이콘 태그 끝 -->

<!--  판매목록 시작 -->
	<span class="list_index02"><i class="bi bi-cart-check"></i>판매목록</span>
	<hr class="garo"> 
		<div class="card" style="width: 100%; height:15%; overflow: auto;">
		    
				<div class="list_index01">
				  <div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div>
			      <div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div><div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div><div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div><div class="list_index">
			   	  <a href="#" style="text-decoration: none;">티비팝니다</a>
			      </div>
			  	</div>
		    	</div>
<!--  판매목록 끝 -->				
		
		</div>





<!-- 회원리스트시작 -->	
	<!--
	<hr><span style="font-size:16px; font-weight:bold; text-align: center;">회원님을 위한 추천</span><br><br>
		
  	<c:forEach items="${memberList}" var="mList">
  		<img src="${pageContext.request.contextPath }/resources/img/${mList.profile }" width="30" height="30" alt="...">
   		<span style="font-size:16px; font-weight:bold;">${mList.nick}</span>
   		<a class="follow" href="follow?followeeid=${mList.id}&followerid=<%=ssid %>">팔로우 </a>
   		<br>
   		

   	</c:forEach>
-->
  	<br>
  
  
  	

</div>
</div>
</body>
<
</html>