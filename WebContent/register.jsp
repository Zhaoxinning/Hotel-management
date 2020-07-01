<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Meta tags required by Bootstrap -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <link rel="stylesheet" href="./css/main.css">
        <title>注册</title>
    </head>

    <body>
        <img id="bg_img" src="./images/bg_img.jpg" alt="background-img" class="position-fixed">
        <!-- Background Image -->
        <!-- Which can adapt to the browser size -->

        <div class="d-flex justify-content-center h-100">
            <div class="card text-white my-auto col-sm col-md-10 col-lg-8 p-0" id="focus">
                <div class="row no-gutters justify-content-center" id="focus_body">
                    <div class="col-12 col-sm p-md-1 py-lg-3 px-lg-5">
                    <!-- responsive layout -->
                        <div class="card-body focus_div">
                            <h2 class="card-title"> 欢迎来到速8酒店！ </h2>
                            <p class="card-text"> 请您按照要求进行注册， </p>
                            <p class="card-text"> 感谢您的配合！</p>
                        </div>
                    </div>
    
                    <div class="col-12 col-sm p-md-1 py-lg-3 px-lg-5">
                    <!-- responsive layout -->
                        <div class="card-body focus_div">
                            <h2 class="card-title"> 服务员账号注册 </h2>
                            
                            <form class="needs-validation" action="reg" method="post">
                            <!-- fatal part -->
                                <div class="form-group">
                                    <label for="userName">姓名</label>
                                    <input type="text" class="form-control" name="userName" id="userName" placeholder="请正确输入您的姓名" onchange="userName_check()"
                                        data-toggle="tooltip" data-placement="right"
                                        title="最少2个字符, 最多16个字符" required>
                                    <!-- text box for username -->
                                    <div class="invalid-feedback">
                                                                        您的姓名输入不符合规则！
                                    </div>
                                </div>                               
                                <div class="form-group">
                                    <label for="password">密码</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="peek" onmouseover="showpassword()" onmouseout="hidepassword()">*</span>
                                        </div>
                                        <input type="password" class="form-control" id="password" placeholder="请按要求输入您设定的密码" onchange="password_check()"
                                            aria-describedby="peek" data-toggle="tooltip" data-placement="right"
                                            title="9~13字符长度，只包含数字和字母"
                                            required>
                                        <div class="invalid-feedback">
                                                                        您的密码输入是否正确！
                                        </div>
                                    </div>                                                         
                                </div>
                                <div class="form-group">
                                    <label for="telephone">电话</label>
                                    <input type="telephone" class="form-control" id="telephone" placeholder="请正确输入您的电话号码"
                                        onchange="telephone_check()" aria-describedby="telephoneHelp" title="至少9个数字，最多13个数字" required>
                                    <!-- text box for email -->
                                    <div class="invalid-feedback">
                                                                     您的号码输入不符合规则！
                                    </div>
                                    <small id="telephoneHelp" class="form-text text-muted">我们不会将您的电话信息泄露</small>
                                </div>
                                <button type="submit" class="btn btn-primary" onclick="form_check()">提交</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- </div> -->

        <script>

            var resizeTimer = null;
            // Set a timer for risizing the window
            // 

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

            function userName_check() {
                var userName_text = document.getElementById("userName").value;
                // username_text : string in username text-box
                var userName_ifValid = userName_text.search(/^\S{2,16}$/g);
                // username_ifValid : valid status of string in username, -1 represents invalid
                console.log(userName_ifValid);
                if (userName_ifValid == -1)
                {
                    document.getElementById("userName").classList.remove("is-valid")
                    document.getElementById("userName").classList.add("is-invalid");
                } else  // if username_ifValid is not -1, then it will be 0
                {
                    document.getElementById("userName").classList.remove("is-invalid");
                    document.getElementById("userName").classList.add("is-valid");
                }
            }
    
            function password_check()
            {    
               var password_text = document.getElementById("password").value;
               // password_text : string in password text-box
               var password_ifValid = password_text.search(/^([a-zA-Z0-9]){9,13}$/g);
               console.log( password_ifValid);
               if (password_ifValid == -1)
               {
                   document.getElementById("password").classList.remove("is-valid")
                   document.getElementById("password").classList.add("is-invalid");
               } else  // if password_ifValid is not -1, then it will be 0
               {
                   document.getElementById("password").classList.remove("is-invalid");
                   document.getElementById("password").classList.add("is-valid");
               }
            }     
            function telephone_check() {
                var telephone_text = document.getElementById("telephone").value;
                // telephone_text : string in telephone text-box
                var telephone_ifValid = telephone_text.search(/^([0-9]){9,13}$/g);
                // telephone_ifValid : valid status of string in telephone, -1 represents invalid
                console.log(telephone_ifValid);
                if (telephone_ifValid == -1)
                {
                    document.getElementById("telephone").classList.remove("is-valid")
                    document.getElementById("telephone").classList.add("is-invalid");
                } else  // if telephone_ifValid is not -1, then it will be 0
                {
                    document.getElementById("telephone").classList.remove("is-invalid");
                    document.getElementById("telephone").classList.add("is-valid");
                }
            }


            function showpassword() {
                document.getElementById("password").type="text";
                document.getElementById("peek").innerHTML="明";
            }
            function hidepassword() {
                document.getElementById("password").type="password";
                document.getElementById("peek").innerHTML="密";
            }

            function form_check() {
                if (document.getElementsByClassName("is-invalid").length!=0)
                {
                    alert("存在错误！");
                }
            }

            window.onloadend=adjust_bg();
            window.onresize=function() {
                if (resizeTimer) clearTimeout(resizeTimer);
                resizeTimer = setTimeout(adjust_bg() , 100);
            };
        </script>

        <!-- Optional Javascript improving Bootstrap -->
        <!-- The order of the first three Javascript files matters -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    </body>
</html>