<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="./css/main.css">
<title>速8宾馆</title>
</head>
<body>
	<img id="bg_img" src="./images/bg_img2.jpg" alt="background-img"
		class="position-fixed">
    <!-- Background Image -->
    <!-- Which can adapt to the browser size -->
	<div class="d-flex justify-content-center h-100">
		<div class="card text-white my-auto col-sm col-md-10 col-lg-8 p-0"
			id="focus">
			<div class="card-header" id="focus">宾馆管理系统</div>
			<div class="row no-gutters justify-content-center" id="focus_body">
				<div class="col-12 col-sm p-md-1 py-lg-3 px-lg-5">
					<!-- responsive layout -->
					<div class="card-body focus_div">
						<h2 class="card-title">服务员登录</h2>
						<form class="needs-validation" action="login" method="post">
							<div class="form-group">
								<label for="userName">用户名</label> <input type="text"
									value="${userName }" class="form-control" name="userName"
									id="userName" placeholder="请正确输入您的姓名" data-toggle="tooltip"
									data-placement="right" />
							</div>
							<div class="form-group">
								<label for="password">密码</label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text" id="peek"
											onmouseover="showpassword()" onmouseout="hidepassword()">*</span>
									</div>
									<input type="password" value="${password }"
										class="form-control" name="password" id="password"
										placeholder="请输入您的密码" aria-describedby="peek"
										data-toggle="tooltip" data-placement="right" />
								</div>
							</div>
							<button type="submit" class="btn btn-primary">登录</button>
							<button type="reset" class="btn btn-primary"
								onchage="reset_Value()">重置</button>
							 <div>
								<h8 class="card-title">跳转至管理员登录<a href="logon.jsp">管理员登录</a>
								</h2>
							</div> 
							<table width="100" height="10">
								<td colspan="3"><font color="red">${error }</font></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- </div> -->
	<script type="text/javascript">       
            var resizeTimer = null;
            // Set a timer for risizing the window
            function adjust_bg() {
                // adjust backgroud image responsively
                bg_img = document.getElementById("bg_img");
                if (window.innerWidth/window.innerHeight > 16/9) {
                    // the original background image is 1920*1080
                    bg_img.style="width: 100%;";
                    // width first
                } else {
                    bg_img.style="width: auto; height: 100%;";
                    bg_img.style.marginLeft = -(window.innerHeight*16/9-window.innerWidth)/2+'px';
                    // zoom in the image from the middle
                }
            }
            function reset_Value(){
        		document.getElementById("username").value="";
        		document.getElementById("password").value="";
        	}
            function showpassword() {
                document.getElementById("password").type="text";
                document.getElementById("peek").innerHTML="明";
            }
            function hidepassword() {
                document.getElementById("password").type="password";
                document.getElementById("peek").innerHTML="密";
            }

            window.onloadend=adjust_bg();
            window.onresize=function() {
                if (resizeTimer) clearTimeout(resizeTimer);
                resizeTimer = setTimeout(adjust_bg() , 100);
            };
        </script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>