<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
</head>
<script src="jquery-3.5.1.min.js"></script>
<script src="jquery-1.12.1-ui.js"></script>
<script type="text/javascript">
	$(function(){
	    $("#image1").draggable();
	    $("#image2").draggable();
	 })
	//업핸드로 자동생성
   function draw() {
      var img1 = new Image();
      var img2 = new Image();
      
      
      img1.addEventListener('load',function(){
         var ctx = document.getElementById('myCanvas').getContext("2d");
         var ctx2 = document.getElementById('myCanvas2').getContext("2d");

         ctx.drawImage(img1,0,0,50,50);
         ctx2.drawImage(img2,0,0,50,50);
        
      },false);
      
      img1.src="img/right.png";
      img2.src="img/aaa.png";
   }
</script>
<body onload="draw()">
	<script type="text/javascript">
	var count=0
	$(function () {
		$('#btn-upload').click(function (e) {
			e.preventDefault();
			$('#file').click();
			});
		});
		function changeValue(obj){
			alert(obj.value);
			fname.submit();
			$('#in').append("<div id='image3'  style='width: 50px; height: 50px;'><canvas id='myCanvas3' ></canvas></div>")
					$("#image3").draggable();
			      var img3 = new Image();
			      img3.addEventListener('load',function(){
			         var ctx3 = document.getElementById('myCanvas3').getContext("2d");
			         ctx3.drawImage(img3,0,0,50,50);
			      },false);
			      img3.src="img/down.png";
		}
		
	</script>
	
	<div style="width: 900px; margin: 0 auto">
		<div style="display: flex; flex-flow:low; width: 700px; margin: 0 auto;">
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/reset.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px; text-align: center">처음으로</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/previous.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">취소</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/next.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">다시실행</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/garbage.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">삭제</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/forward.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">앞으로</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/front.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">뒤로</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/left_right.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">좌우반전</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/up_down.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">상하반전</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/left.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">왼쪽</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/left_right_center.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">가운데</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/right.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">오른쪽</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/up.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">위</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/up_down_center.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">가운데</font>
			</div>
			<div onmouseover="style='cursor:pointer;text-align: center;'" style="text-align: center">
				<img src="img/down.png" style="width: 50px;height: 50px;" onclick=""><br><font style="font-size: 10px;">아래</font>
			</div>
		</div>
		<div style="display: flex; flex-flow:low; background-color: #f8f9fa;">
			<div style="width: 250px; margin-top: 50px;" align="left">
				<div style="width: 200px; height:70px; background-color: #ffffff; display: flex; flex-flow:low; border: 1px solid #eaedf0;" align="left" onclick="location.href='tip.jsp'" onmouseover="style='cursor:pointer;width: 200px; height:70px; background-color: #ffffff; display: flex; flex-flow:low; border: 1px solid #eaedf0;'">
					<div style="margin-top: 10px;"> <img src="img/tip.png" style="width: 50px; height: 50px;"> </div>
					<div style="text-align: center; margin-top: 10px;"> <p>디자인하는 방법</p> </div>
				</div>
			</div>
			<div style="width: 500px; height: 500px; border: 1px solid #eaedf0; background-image: url('img/aaa.png');">
				<div style="width:174px; height:261px; border: 2px solid black; margin-left: 160px; margin-top: 132px;" id="in">
					<div id="image1" style="width: 50px; height: 50px;">
						<canvas id="myCanvas" ></canvas>
					</div>
					<div id="image2" style="width: 50px; height: 50px;">
						<canvas id="myCanvas2" ></canvas>
					</div>
				</div>
			</div>
			<div style="display: flex; flex-flow:column;" align="center">
				<img src="img/change.png" style="width: 100px;height: 100px;" onclick="" onmouseover="style='cursor:pointer;width: 100px;height: 100px;'">
				<img src="img/upload.png" style="width: 100px;height: 100px;" id="btn-upload" onmouseover="style='cursor:pointer;width: 100px;height: 100px;'">
				<img src="img/myimg.png" style="width: 100px;height: 100px;" onclick="" onmouseover="style='cursor:pointer;width: 100px;height: 100px;'">
				<img src="img/text.png" style="width: 100px;height: 100px;" onclick="" onmouseover="style='cursor:pointer;width: 100px;height: 100px;'">
				<img src="img/design.png" style="width: 100px;height: 100px;" onclick="" onmouseover="style='cursor:pointer;width: 100px;height: 100px;'">
			</div>
		</div>
	</div>
	<form action="fileUpload.jsp?id=${param.id}" method="post" enctype="multipart/form-data" name="fname" target="param">
		<input type="file" id="file" name="file" onchange="changeValue(this)" style="display:none; "/>
	</form>
	<iframe id="if" name="param" style="display:none;"></iframe>
</body>
</html>