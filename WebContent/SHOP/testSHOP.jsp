<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery-3.2.1.min.js"></script>
<script type="text/javascript">
  
// 상단 선택버튼 클릭시 체크된 Row의 값을 가져온다.
	$(document).ready(function() {
	
	$("#selectBtn").click(function(){ 
		
		var rowData = new Array();
		var tdArr = new Array();
		var checkbox = $("input[name=user_CheckBox]:checked");
		
		
		// 체크된 체크박스 값을 가져온다
		checkbox.each(function(i) {

			// checkbox.parent() : checkbox의 부모는 <td>이다.
			// checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
			var tr = checkbox.parent().parent().eq(i);
			var td = tr.children();
			
			// 체크된 row의 모든 값을 배열에 담는다.
			rowData.push(tr.text());
			
			// td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
			var product = td.eq(1).text()+", "
			var price = td.eq(2).text()+", ";
			var count = td.eq(3).text()+", ";
			
			// 가져온 값을 배열에 담는다.
			tdArr.push(product);
			tdArr.push(price);
			tdArr.push(count);
			
			console.log("no : " + product);
			console.log("userid : " + price);
			console.log("name : " + count);
			//console.log("email : " + email);
		});
		
		$("#ex3_Result1").html(" * 체크된 Row의 모든 데이터 = "+rowData);	
		$("#ex3_Result2").html(tdArr);	
	});
	});

</script>

</head>
<body>
<div align="center">
	<table border="1" style="width:600px;height:400px;" id="example-table-3">
		<thead>
		<tr>	
			<td></td><td>상품명</td><td>가격</td><td>수량</td>
		</tr>
		</thead>
		<tbody>	
		<tr>
			<td><input type="checkbox" name="user_CheckBox"></td>
			<td><a href="#">흰 티셔츠</a></td><td>3000</td>
			<td><form>
				<input type=text name=amount value=1 style="width:20px;">
				<input type=button value="+" onClick="javascript:this.form.amount.value++;">
				<input type=button value="-" onClick="javascript:this.form.amount.value--;">
				</form>
			</td>
		</tr>
		
		<tr>
			<td><input type="checkbox" name="user_CheckBox"></td>
			<td>검은 티셔츠</td><td>3000</td>
			<td>
			<form>
				<input type=text name=amount value=1 style="width:20px;">
				<input type=button value="+" onClick="javascript:this.form.amount.value++;">
				<input type=button value="-" onClick="javascript:this.form.amount.value--;">
			</form></td>
		</tr>
	</tbody>
	</table>
	<input type="button" value="구매하기">&nbsp;&nbsp;&nbsp;<input type="button" id="selectBtn" value="장바구니">
	</div>
	<div class="col-lg-12" id="ex3_Result1" ></div> 
	<div class="col-lg-12" id="ex3_Result2" ></div> 
</body>
</html>