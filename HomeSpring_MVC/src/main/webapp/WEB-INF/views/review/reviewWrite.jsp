<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<!-- jQuery/ BootStrap-->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- CDN 파일 summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<!-- CDN 한글화 -->
<script
	src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reviewWrite.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/frame.css">


</head>

<body>

	<header><jsp:include page="../frame/header.jsp"></jsp:include></header>

	<div id="frameContent">
		<div id="frameNav"><jsp:include page="../frame/nav.jsp"></jsp:include></div>
		<div id="content">

			<!-- 글쓰기 시작 -->
			<div id="reviewWrite">
					<div id="reviewWriteMain">
						<form action="#" id=reviewWriteForm>
							<table>
								<tr>
									<td style="text-align: center;"><img
										src="../icon/camera4.jpg" width="100px" height="100px"></td>
								</tr>
								<tr>
									<td id="writeInput" style="text-align: center;"><input
										type="text" name="title" id="title" placeholder="제목을 입력하세요" /></td>
								</tr>
								<tr>
									<td><textarea id="summernote" name="editordata"></textarea>
									</td>
								</tr>
								<tr>
									<td><input type="button" value="글쓰기" id="reviewWriteBtn"></td>
								</tr>
							</table>
						</form>
					</div>
			</div>
			<!-- 글쓰기 end -->



		</div>
	</div>
	<div id="upDownBtn">
		<a href="#"><button id="upBtn">위로</button></a> <a href="#bottom"><button
				id="downBtn">아래</button></a>
	</div>
	<footer><jsp:include page="../frame/footer.jsp"></jsp:include></footer>
	<div id="bottom"></div>






	<script src="${pageContext.request.contextPath}/resources/js/review.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/frame.js"></script>
	


</body>

</html>