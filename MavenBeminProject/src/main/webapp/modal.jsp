<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Modal</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link rel="stylesheet" href="assets/css/modal.css">


</head>
<body>
	<button id="show">멤버보기</button>
	<button id="show">멤버보기</button>
	<button id="show">멤버보기</button>
	<button id="show">멤버보기</button>
	<button id="show">멤버보기</button>
	
	<div class="background">
		<div class="window">
			<div class="popup">
				<button id="close">
					<a href="#" class="close-x">X</a>
				</button>
				<table>
					<!-- 반복 될 구간 -->
					<tr class="tier-table">
						<th>ID</th>
						<th>이름</th>
						<th>티어</th>
						<th><select>
								<option>평가</option>
								<option>루키</option>
								<option>비기너</option>
								<option>주니어</option>
								<option>시니어</option>
								<option>프로</option>
								<option>플라이트</option>
						</select></th>
					</tr>
				</table>

				<div class="move-tire">
					<a href="./티어매너안내.jsp" class="tier-ckeck">📢티어정보 확인하기</a>
				</div>

				<div style="margin: 10px 5px 10px 10px;">
					<input id="sub_bt" type="submit" value="적용">
				</div>
			</div>
		</div>
	</div>

	<script>
		function show() {
			document.querySelector(".background").className = "background show";
		}

		function close() {
			document.querySelector(".background").className = "background";
		}

		document.querySelector("#show").addEventListener("click", show);
		document.querySelector("#close").addEventListener("click", close);
		document.querySelector("#sub_bt").addEventListener("click", close);
	</script>
</body>
</html>