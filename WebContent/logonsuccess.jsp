<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Meta tags required by Bootstrap -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<link rel="stylesheet" href="./css/main.css">
<title>速8酒店</title>
</head>
<body>
<img id="bg_img" src="./images/bg_img.jpg" alt="background-img" class="position-fixed">
<div class="d-flex justify-content-center h-100">
    <div class="card text-white my-auto col-sm col-md-10 col-lg-8 p-0" id="focus">
        <div class="row no-gutters justify-content-center" id="focus_body">
             <div class="col-12 col-sm p-md-1 py-lg-3 px-lg-5">
                 <div>
                      <h2 class="card-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注册成功</h2>
                      <p class="card-text"><a href="register.jsp">返回注册界面</a></p>
                 </div>
             </div>
        </div>
     </div>
</div>
<script type="text/javascript">       
var resizeTimer = null;
// Set a timer for risizing the window
function adjust_bg() 
{
   // adjust backgroud image responsively
   bg_img = document.getElementById("bg_img");
   if (window.innerWidth/window.innerHeight > 16/9) 
   {
      // the original background image is 1920*1080
      bg_img.style="width: 100%;";
      // width first
   } 
   else 
   {
      bg_img.style="width: auto; height: 100%;";
      bg_img.style.marginLeft = -(window.innerHeight*16/9-window.innerWidth)/2+'px';
      // zoom in the image from the middle
   }
}
window.onloadend=adjust_bg();
window.onresize=function() 
{
   if (resizeTimer) clearTimeout(resizeTimer);
   resizeTimer = setTimeout(adjust_bg() , 100);
};
</script>
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
