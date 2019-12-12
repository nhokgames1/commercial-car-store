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


  
</div>
</body>
</html>

  ${resfn.css("/my-own-modules.*css")}