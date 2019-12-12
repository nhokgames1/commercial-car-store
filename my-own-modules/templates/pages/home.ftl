<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark navbar-expand-sm bg-dark">
 <a class="navbar-brand" href="#">
    <img src="https://honda4banh.vn/wp-content/uploads/2019/08/logo-2.png" alt="Logo" style="width:40px;">
  </a>
      <div class="container">
        <a class="navbar-brand" href="#">Container</a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarsExample07" style="">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Trang Chủ <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Dịch Vụ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="#">Dòng Xe</a>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="#">Bảng Giá</a>
            </li>
             <li class="nav-item">
              <a class="nav-link disabled" href="#">Tin Tức</a>
            </li>
          </ul>
          <form class="form-inline my-2 my-md-0">
            <input class="form-control" type="text" placeholder="Search" aria-label="Search">
          </form>
        </div>
      </div>
    </nav>
    <main>
	<div class="container">
		<div class="carousel slide" id="main-carousel" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#main-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#main-carousel" data-slide-to="1"></li>
				<li data-target="#main-carousel" data-slide-to="2"></li>
				<li data-target="#main-carousel" data-slide-to="3"></li>
			</ol><!-- /.carousel-indicators -->
			
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block img-fluid" src="https://honda4banh.vn/wp-content/uploads/2019/08/header-model-img-1920x890-cr-v.jpg" alt="">
					<div class="carousel-caption d-none d-md-block">
						<h1>Mountain</h1>
					</div>
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="https://honda4banh.vn/wp-content/uploads/2019/08/header-model-img-1920x890-cr-v.jpg" alt="">
					<div class="carousel-caption d-none d-md-block">
						<h3>CRV </h3>
						<p>Mô tả xe</p>
					</div>
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="https://honda4banh.vn/wp-content/uploads/2019/08/header-model-img-1920x890-cr-v.jpg" alt="">
					<div class="carousel-caption d-none d-md-block">
						<h3>HONDA HR-V 2019</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci esse vitae exercitationem fugit, numquam minus!</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="https://honda4banh.vn/wp-content/uploads/2019/08/header-model-img-1920x890-cr-v.jpg" alt="" class="d-block img-fluid">
					<div class="carousel-caption d-none d-md-block">
						<h3>Mountain</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci esse vitae exercitationem fugit, numquam minus!</p>
					</div>
				</div>
			</div><!-- /.carousel-inner -->
			
			<a href="#main-carousel" class="carousel-control-prev" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
				<span class="sr-only" aria-hidden="true">Prev</span>
			</a>
			<a href="#main-carousel" class="carousel-control-next" data-slide="next">
				<span class="carousel-control-next-icon"></span>
				<span class="sr-only" aria-hidden="true">Next</span>
			</a>
		</div><!-- /.carousel -->
	</div><!-- /.container -->

    <!--List container 
         <div class="container">
          <div class="row row-cols-4">
            <div class="col card card-body">
                <div class="col medium-4 small-6 large-3" id="d_x">
                <a href="/dong-xe"><div class="col-inner">
                  <p class="d_x">ALL</p>
				    <h2>Xem tất cả</h2>
				</div></a></div>          
                  </div>
            <div class="col card card-body">
            <div class="col medium-4 small-6 large-3" id="d_x">
            <a href="/dong-xe"><div class="col-inner">
                  <p class="d_x">ALL</p>
				    <h2>Xem tất cả</h2>
				</div></a></div>          
            </div>
            <div class="col card card-body">
            .col
            </div>
            <div class="col card card-body">
            .col
            </div>
          
          </div>
        </div>-->
        <br>
                 <div class="container">

        <div class="row">
  <div class="col-sm-6 col-lg-3">
       <div class="col medium-4 small-6 large-3" id="d_x">
                <a href="/dong-xe"><div class="col-inner">
                  <p class="d_x">ALL</p>
				    <h2>Xem tất cả</h2>
				</div></a></div>  
  </div>
  <div class="col-sm-6 col-lg-3">
     <div class="col medium-4 small-6 large-3" id="d_x">
                <a href="/dong-xe"><div class="col-inner">
                  <p class="d_x">HONDA</p>
				    <h2>Hãng HONDA</h2>
				</div></a></div>  
  </div>
  <div class="col-sm-6 col-lg-3">
       <div class="col medium-4 small-6 large-3" id="d_x">
                <a href="/dong-xe"><div class="col-inner">
                  <p class="d_x">ALL</p>
				    <h2>Xem tất cả</h2>
				</div></a></div>     
  </div>
  <div class="col-sm-6 col-lg-3">
        <div class="col medium-4 small-6 large-3" id="d_x">
                <a href="/dong-xe"><div class="col-inner">
                  <p class="d_x">ALL</p>
				    <h2>Xem tất cả</h2>
				</div></a></div>     
  </div>
  </div>
<!--carousel version 2 -->
  
<div class="container">
  
  <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators mb-0 pb-0">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>

  <!-- The slideshow -->
  <div class="carousel-inner no-padding my-5">
    <div class="carousel-item active">
      <div class="col-xs-4 col-sm-4 col-md-4">
        <a href="#" onclick=abc(this) class="slider_info">
          <img class="img-fluid card-img-top" src="https://honda4banh.vn/wp-content/uploads/2019/09/Webp.net-resizeimage-1-600x325.png">
          <div class="card-img-overlay t_img">
            <span class="float-left text-uppercase">article</span>
            <span class="float-right text-uppercase">2345 views</span>
          </div>
        </a>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi nesciunt quam obcaecati maiores atque labore fugiat tenetur tempore veritatis temporibus!</p>

      </div>
      <div class="col-xs-4 col-sm-4 col-md-4">
        <a href="#" onclick=abc(this) class="slider_info">
          <img class="img-fluid card-img-top rounded-bottom" src="https://honda4banh.vn/wp-content/uploads/2019/09/Webp.net-resizeimage-1-600x325.png">
          <div class="card-img-overlay t_img">
            <span class="float-left text-uppercase">article</span>
            <span class="float-right text-uppercase">2345 views</span>
          </div>
        </a>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi nesciunt quam obcaecati maiores atque labore fugiat tenetur tempore veritatis temporibus!</p>

      </div>
      <div class="col-xs-4 col-sm-4 col-md-4">
        <a href="#" onclick=abc(this) class="slider_info">
          <img class="img-fluid card-img-top rounded-bottom" src="https://honda4banh.vn/wp-content/uploads/2019/09/Webp.net-resizeimage-1-600x325.png">
          <div class="card-img-overlay t_img">
            <span class="float-left text-uppercase">article</span>
            <span class="float-right text-uppercase">2345 views</span>
          </div>
        </a>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi nesciunt quam obcaecati maiores atque labore fugiat tenetur tempore veritatis temporibus!
        </p>
      </div>
    </div>
    <div class="carousel-item">
      <div class="col-xs-4 col-sm-4 col-md-4">
        <a href="#" onclick=abc(this) class="slider_info">
          <img class="img-fluid card-img-top" src="http://via.placeholder.com/300x300">
          <div class="card-img-overlay t_img">
            <span class="float-left text-uppercase">article</span>
            <span class="float-right text-uppercase">2345 views</span>
          </div>
        </a>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi nesciunt quam obcaecati maiores atque labore fugiat tenetur tempore veritatis temporibus!</p>

      </div>
      <div class="col-xs-4 col-sm-4 col-md-4">
        <a href="#" onclick=abc(this) class="slider_info">
          <img class="img-fluid card-img-top" src="http://via.placeholder.com/300x300">
          <div class="card-img-overlay t_img">
            <span class="float-left text-uppercase">article</span>
            <span class="float-right text-uppercase">2345 views</span>
          </div>
        </a>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi nesciunt quam obcaecati maiores atque labore fugiat tenetur tempore veritatis temporibus!
        </p>

      </div>
      <div class="col-xs-4 col-sm-4 col-md-4">
        <a href="#" onclick=abc(this) class="slider_info">
          <img class="img-fluid card-img-top" src="http://via.placeholder.com/300x300">
          <div class="card-img-overlay t_img">
            <span class="float-left text-uppercase">article</span>
            <span class="float-right text-uppercase">2345 views</span>
          </div>
        </a>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi nesciunt quam obcaecati maiores atque labore fugiat tenetur tempore veritatis temporibus!</p>

      </div>
    </div>
    <div class="carousel-item">
      <div class="col-xs-4 col-sm-4 col-md-4">
        <a href="#" onclick=abc(this) class="slider_info">
          <img class="img-fluid card-img-top" src="http://via.placeholder.com/300x300">
          <div class="card-img-overlay t_img">
            <span class="float-left text-uppercase">article</span>
            <span class="float-right text-uppercase">2345 views</span>
          </div>
        </a>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi nesciunt quam obcaecati maiores atque labore fugiat tenetur tempore veritatis temporibus!</p>

      </div>
      <div class="col-xs-4 col-sm-4 col-md-4">
        <a href="#" onclick=abc(this) class="slider_info">
          <img class="img-fluid card-img-top" src="http://via.placeholder.com/300x300">
          <div class="card-img-overlay t_img">
            <span class="float-left text-uppercase">article</span>
            <span class="float-right text-uppercase">2345 views</span>
          </div>
        </a>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi nesciunt quam obcaecati maiores atque labore fugiat tenetur tempore veritatis temporibus!</p>

      </div>
      <div class="col-xs-4 col-sm-4 col-md-4">
        <a href="#" onclick=abc(this) class="slider_info">
          <img class="img-fluid card-img-top" src="http://via.placeholder.com/300x300">
          <div class="card-img-overlay t_img">
            <span class="float-left text-uppercase">article</span>
            <span class="float-right text-uppercase">2345 views</span>
          </div>
        </a>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi nesciunt quam obcaecati maiores atque labore fugiat tenetur tempore veritatis temporibus!
        </p>

      </div>
    </div>
  </div>
<style>
.col-md-4{
  display: inline-block;
  margin-left:-10px;
}
.col-md-4 img{
  width:100%;
  height:auto;
}
  
body .carousel-control-prev-icon,
body .carousel-indicators li,
body .carousel-control-next-icon{
  background-color:#000;
}

span.carousel-control-prev-icon {
 position: relative;
 bottom: 40px;
 right: 40px;
}

span.carousel-control-next-icon {
 position: relative;
 bottom: 40px;
}
</style>
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
     <span class="carousel-control-prev-icon sp"></span>
                </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon sp"></span>
                </a>
</div>
</div>




</div>
</body>
<footer>

<section class="cid-qv5AKsQ6xL" id="footer2-3g" data-rv-view="4075">

    

    

    <div class="container">
        <div class="media-container-row content mbr-white">
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <p class="mbr-text">
                    <strong>Address</strong>
                    <br>
                    <br>1234 Street Name
                    <br>City, AA 99999
                    <br>
                    <br>
                    <br><strong>Contacts</strong>
                    <br>
                    <br>Email: support@mobirise.com
                    <br>Phone: +1 (0) 000 0000 001
                    <br>Fax: +1 (0) 000 0000 002
                </p>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <p class="mbr-text">
                    <strong>Links</strong>
                    <br>
                    <br><a class="text-white" href="https://mobirise.com/">Website builder</a>
                    <br><a class="text-white" href="https://mobirise.com/mobirise-free-win.zip">Download for Windows</a>
                    <br><a class="text-white" href="https://mobirise.com/mobirise-free-mac.zip">Download for Mac</a>
                    <br>
                    <br><strong>Feedback</strong>
                    <br>
                    <br>Please send us your ideas, bug reports, suggestions! Any feedback would be appreciated.
                </p>
            </div>
            <div class="col-12 col-md-6">
                <div class="google-map"><iframe frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0Dx_boXQiwvdz8sJHoYeZNVTdoWONYkU&amp;q=place_id:ChIJuf9TI58vdTERe86UdaSdtGo" allowfullscreen=""></iframe></div>
            </div>
        </div>
        <div class="footer-lower">
            <div class="media-container-row">
                <div class="col-sm-12">
                    <hr>
                </div>
            </div>
            <div class="media-container-row mbr-white">
                <div class="col-sm-6 copyright">
                    <p class="mbr-text mbr-fonts-style display-7">
                        © Copyright 2019 Footer Template- All Rights Reserved
                    </p>
                </div>
                <div class="col-md-6">
                    <div class="social-list align-right">
                        <div class="soc-item">
                            <a href="https://twitter.com/mobirise" target="_blank">
                                <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.facebook.com/pages/Mobirise/1616226671953247" target="_blank">
                                <span class="socicon-facebook socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.youtube.com/c/mobirise" target="_blank">
                                <span class="socicon-youtube socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://instagram.com/mobirise" target="_blank">
                                <span class="socicon-instagram socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://plus.google.com/u/0/+Mobirise" target="_blank">
                                <span class="socicon-googleplus socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.behance.net/Mobirise" target="_blank">
                                <span class="socicon-behance socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</footer>
</html>

  ${resfn.css("/my-own-modules.*css")}