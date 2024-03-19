<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="http://code.jQuery.com/jquery-3.7.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="../../resources/css/frame.css">
<link rel="stylesheet" type="text/css" href="../css/mypage3.css">
    
</head>
<body>
 <header><jsp:include page="header.jsp"></jsp:include></header>

    <div id="frameContent">
        <div id="frameNav"><jsp:include page="nav.jsp"></jsp:include></div>
        <div id="content">
            
        </div>
    </div>
    <div id="upDownBtn">
        <a href="#"><button id="upBtn">위로</button></a>
        <a href="#bottom"><button id="downBtn">아래</button></a>
    </div>
    <footer><jsp:include page="footer.jsp"></jsp:include></footer>
<div id="bottom"></div>
</body>

<script src="../../resources/js/frame.js"></script>
<script src="../js/header.js"></script>
<script src="../js/footer.js"></script>
<script src="../../resources/js/mypage.js"></script>
</html>