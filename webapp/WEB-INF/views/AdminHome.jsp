 <!DOCTYPE html>
<html lang="en">
<head>
<title>Admin HomePage</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/w3css/3/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
.header{
margin-top:-15px;
background-color:white;
padding:8px;
font-size:31px;
align:center;
}

.navbar {
margin-bottom: 0;
border-radius: 0;
}

.social:hover {
   
  -webkit-transform: scale(1.1);
   
  -moz-transform: scale(1.1);
    
 -o-transform: scale(1.1);
 }

 .social {
  
   -webkit-transform: scale(0.8);

     /* Browser Variations: */
    
 
     -moz-transform: scale(0.8);
    
 -o-transform: scale(0.8);
   
  -webkit-transition-duration: 0.5s;
  
   -moz-transition-duration: 0.5s;
  
   -o-transition-duration: 0.5s;
 }


/*
    Multicoloured Hover Variations
*/
 

 #social-fb:hover 
{
     color: #3B5998;
 }

 #social-tw:hover
 {
     color: #4099FF;
 }

 #social-gp:hover 
{
     color: #d34836;
 }
 
#social-em:hover 
{
     color: #f39c12;
 }

</style>
</head>
<body>
<br>
<center>
<h1>LUXURY WATCHES</h1></center>
<br>

<nav class="navbar navbar-inverse">
  <div class="container-fluid"></div>
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="homepage">Home</a></li>
        <li class="dropdown">
          <a  href="product">Product</a>
         </li>


<li class="dropdown">
          <a  href="category">Category </a>
          
</li>

<li class="dropdown">
          <a  href="supplier">Supplier </a>
          
</li>

</ul>

<ul class="nav navbar-nav navbar-right">
      <li><a href="UserPage"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
      <li><a href="contactus">ContactUs</a></li>
      </ul>
 </div>
</nav>
<h3>WELCOME ADMIN!!!</h3>
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="https://cdn.allwallpaper.in/wallpapers/1920x1080/12153/team-williams-oris-watch-1920x1080-wallpaper.jpg" alt="Titan">
    </div>

    <div class="item">
      <img src="https://wallpaperscraft.com/image/wrist_watch_dial_strap_114984_1920x1080.jpg" alt="sonata">
    </div>

    <div class="item">
      <img src="https://s-media-cache-ak0.pinimg.com/originals/54/ae/4c/54ae4cbfec90c3211eb96473e9eece93.jpg" alt="Fasttrack">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  </div>
    <div class="navbar-header">
      
    </div>
    <ul class="nav navbar-nav"></ul>
     
  
</nav>
<%@ include file="footer.jsp" %>
</body>
</head>
</html>

