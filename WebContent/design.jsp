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
<script src="html2canvas.js"></script>
<script type="text/javascript">
	function partShot() { //특정부분 스크린샷 
		html2canvas(document.getElementById("zz")) //id container 부분만 스크린샷 
		.then(function (canvas) { //jpg 결과값
			drawImg(canvas.toDataURL('image/jpeg')); //이미지 저장
			saveAs(canvas.toDataURL(), 'file-name.jpg'); 
		}).catch(function (err) { 
			console.log(err); 
		}); 
	} 
	function drawImg(imgData) { 
		console.log(imgData); //imgData의 결과값을 console 로그롤 보실 수 있습니다. 
		return new Promise(function reslove() { //내가 결과 값을 그릴 canvas 부분 설정 
			var canvas = document.getElementById('canvas'); 
			var ctx = canvas.getContext('2d'); //canvas의 뿌려진 부분 초기화 
			ctx.clearRect(0, 0, canvas.width, canvas.height); 
			var imageObj = new Image(); 
			imageObj.onload = function () { 
				ctx.drawImage(imageObj, 10, 10); //canvas img를 그리겠다. 
			}; imageObj.src = imgData; //그릴 image데이터를 넣어준다. 
		}, function reject() { });
	}
	function saveAs(uri, filename) { 
		
		var form = document.createElement('form');

		form.setAttribute('method', 'post');
		form.setAttribute('target','param')
		form.setAttribute('action', 'canvasupload.jsp');
		document.charset = "utf-8";
		
		var hiddenField = document.createElement('input');

		hiddenField.setAttribute('type', 'hidden');

		hiddenField.setAttribute('name', 'cc');

		hiddenField.setAttribute('value', uri);

		form.appendChild(hiddenField);
		
		document.body.appendChild(form);
		form.submit();
		
// 		var link = document.createElement('a'); 
// 		if (typeof link.download === 'string') { 
// 			link.href = uri; 
// 			link.download = filename;
// 			document.body.appendChild(link); 
// 			link.click(); 
// 			document.body.removeChild(link); 
// 		} else { 
// 			window.open(uri); 
// 		} 
	}

	</script>
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

         ctx.drawImage(img1,0,0,300,150);
         ctx2.drawImage(img2,0,0,300,150);
        
      },false);
      
      img1.src="img/right.png";
      img2.src="img/abc.jpg";
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
			$('#in').append("<div id='image3' style='width: 50px; height: 50px;'><canvas id='myCanvas3'style='width: 50px; height: 50px;'></canvas></div>")
					$("#image3").draggable();
			      var img3 = new Image();
			      img3.addEventListener('load',function(){
			         var ctx3 = document.getElementById('myCanvas3').getContext("2d");
			         ctx3.drawImage(img3,0,0,300,150);
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
			<div style="width: 500px; height: 500px; border: 1px solid #eaedf0; background-image: url('img/aaa.png');" id="zz">
				<div style="width:174px; height:261px; border: 2px solid black; margin-left: 160px; margin-top: 132px;" id="in">
					<div id="image1" style="width: 50px; height: 50px;">
						<canvas id="myCanvas" style='width: 50px; height: 50px;'></canvas>
					</div>
					<div id="image2" style="width: 50px; height: 50px;">
						<canvas id="myCanvas2" style='width: 50px; height: 50px;'></canvas>
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
	<!-- 일부분 부분-->
	<button onclick="partShot()">이미지 저장</button>
	<!-- 결과화면을 그려줄 canvas -->
	<canvas id="canvas" width="900" height="600"
		style="border: 1px solid #d3d3d3; display:none;">
	</canvas>
<%-- 	<form action="canvasupload.jsp?id=${param.id}" method="post" name="cname" id="cl"> --%>
<!-- 	</form> -->
</body>
</html>