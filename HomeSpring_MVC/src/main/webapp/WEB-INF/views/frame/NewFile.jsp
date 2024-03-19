<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../resources/css/frame.css">
</head>
<body>
 <header><jsp:include page="header.jsp"></jsp:include></header>

    <div id="frameContent">
        <div id="frameNav"><jsp:include page="nav.jsp"></jsp:include></div>
        <div id="content">
            main 페이지를 적당히 훔쳤습니다.<br>
        </div>
    </div>
    <footer><jsp:include page="footer.jsp"></jsp:include></footer>
</body>

<script src="http://code.jQuery.com/jquery-3.7.1.min.js"></script>
<script src="../../resources/js/frame.js"></script>
<script src="../js/header.js"></script>
<script src="../js/footer.js"></script>

</html>