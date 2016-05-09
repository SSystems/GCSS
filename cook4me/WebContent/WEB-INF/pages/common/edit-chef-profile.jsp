<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
    <meta name="description" content="">
    <meta name="author" content="">
    <link id="favicon" rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
    <title>Chef Come Cook</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

    <!-- input edit -->
    <link href="css/owl.carousel.min.css" rel="stylesheet">
    <link href="css/owl.theme.default.min.css" rel="stylesheet">
    <link href="css/magnific-popup.min.css" rel="stylesheet">
    <link href="css/bootstrap-material-design.min.css" rel="stylesheet">
    <link href="css/bootstrap-tagsinput.css" rel="stylesheet">
    <link href="css/ripples.min.css" rel="stylesheet">
    <link href="css/style.min.css" rel="stylesheet">
</head>
<body class="inner-page edit-chef ">
    <header class="navbar-wrapper">
       
            <div class="container">
                <div class="navbar-header">
                    <div class="cart hide-lg"><a href="javascript:;"><span>0</span></a>
                    </div>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   
                </div>

                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                      
                    </ul>
                </div>
            </div>
      
    </header>
    <!-- /.navbar-wrapper -->


    <section class="banner-section static-banner profile-banner">
        <figure>
            <div class="container">

                <!--    <div class="custom-file-upload">
            <img class="camera-icon" src="img/camera.svg" alt="camera"> 
            <input type="file" id="file" name="myfiles[]" multiple />
        </div> -->
                <div class="file-upload">
                    <span class="file-input btn btn-primary btn-file">
               <img class="camera-icon" src="<c:url value='/ui/images/camera.svg'/>" alt="camera">  Update Cover Photo<input type="file" multiple>
            </span>
                </div>
            </div>
            <div class="profile-info-header">
                <div class="container">
                    <div class="col-lg-5 col-md-5 col-xs-5 nopadding">

                        <div class="edit-profile-name">
                            <h1 class="profile-title">Jeniffer Orange</h1>
                            <input class="form-control" value="Jeniffer Orange" type="text">
                            <a class="edit-icon" href="javascript:;" id="update-profile-name">
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-2 col-md-2 col-xs-2 nopadding text-left">
                        <div class="profile-photo">
                            <span class="profile-avatar"></span>
                            <div class="fileUpload btn btn-primary">
                                <i class="icon"><img src="<c:url value='/ui/images/camera.svg'/>" alt=""></i>
                                <input type="file" class="upload" />
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-5 col-md-5 col-xs-5 nopadding text-left">
                        <span class="rating-detail">
                            <div class="rating-star">
                                <form>
                                    <input id="input-21e" value="4.4" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs">
                                </form>
                            </div>
                        </span>
                    </div>
                </div>
            </div>
        </figure>
    </section>
    <div class="chef-details">
        <div class="container">
            <ul>
                <li><img src="<c:url value='/ui/images/location.svg'/>" alt="location"><span>New York, NY</span>
                    <input value="New York, NY" type="text">
                </li>
                <li class="experience"><span>10</span>
                    <input value="10" type="text">
                    <label>+ years experience</label>
                </li>
                <li class="hour"><span>$35 - 45 </span>
                    <input value="$35 - 45" type="text">
                    <label>/ hour</label>
                </li>
                <li class="time"><span>Full Time</span>
                    <input value="Full Time" type="text">
                </li>
                <li>
                    <a class="edit-icon" href="javascript:;" id="update-profile-details"></a>
                </li>
            </ul>
        </div>
    </div>
    <!-- /.banner-section -->
    <section class="main-content chef-profile">
        <!-- ./mobile-title -->
        <div class="container bottom-spacing">
            <div class="row ">
                <div class="col-lg-12 col-md-12 nopadding">
                    <div class="col-lg-7 col-md-7">
                        <div class="about-edit">
                            <h2 class="profile-sub-title">About Me 

                    <a class="update-icon" href="javascript:;" id="about-update">
                     <span class="plus"><img src="<c:url value='/ui/images/edit.svg'/>" alt="tick">Edit</span>
                    <span class="tick"><img src="<c:url value='/ui/images/tick.svg'/>" alt="tick">Update</span></a>

                    </h2>
                            <div class="form-group label-floating">
                                <label class="control-label" for="Name">Write few lines about yourself..</label>
                                <textarea class="form-control" rows="4" cols="50"></textarea>
                            </div>

                            <p>Morbi lacinia justo sit amet blandit facilisis. Pellentesque sodales nisl risus, vitae blandit nunc commodo quis. Cras imperdiet viverra gravida. Pellentesque ultricies hendrerit ligula a tempus. Sed tetur tempor id tellus quis. In id venenatis neque.</p>
                            <p>Cras imperdiet viverra gravida. Pellentesque ultricies hendrerit ligula a justo tempus. Cras imperdiet viverra gravida pellentesque ultricies hendrerit</p>

                        </div>
                        <hr>
                        <h2 class="profile-sub-title">Most Recent Review</h2>
                        <div class="review-list">

                             <img src="<c:url value='/ui/images/review.png'/>" alt="review">
                            <div class="col-lg-10 col-md-10 col-xs-10 nopadding review-author">
                                <span>Angie Errigo </span>
                                <span class="rating-star">
                                <form>
                                    <input id="input-21e" value="4.4" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs">
                                </form>
                            </span>
                                <label>Eat well beforehand or you’ll be in tummy-rumbling, tongue-hanging-out agony as the merry band cook their way across America. Good fun and happy. Eat well beforehand or you’ll be in tummy-rumbling, he merry band cook their way across America agony cook their way across America. Good fun and happy.
                                </label>
                            </div>

                            <ul class=review-option>
                                <li><img src="<c:url value='/ui/images/tickgreen.svg'/>" alt="Green-tick">Punctuality </li>
                                <li><img src="<c:url value='/ui/images/tickgreen.svg'/>" alt="Green-tick">Dependability </li>
                                <li><img src="<c:url value='/ui/images/tickgreen.svg'/>" alt="Green-tick">Reliable Transportation </li>
                                <li><img src="<c:url value='/ui/images/tickgreen.svg'/>" alt="Green-tick">Hire Again </li>

                            </ul>
                        </div>

                        <div class="review-status">
                            <a class="approve-icon" href=""><img src="<c:url value='/ui/images/tick.svg'/>" alt="tick">Approve</a>
                            <a class="hide-btn" href=""><img src="<c:url value='/ui/images/hide.svg'/>" alt="tick">Hide</a>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-5">
                        <h2 class="profile-sub-title">Specialty</h2>
                        <div class="links">
                            <input type="text" value="Fusion cuisine,Haute cuisine,Note by Note cuisine,Nouvelle cuisine,chinese cuisine,cuisine,arabian cuisine" data-role="tagsinput">

                            <hr>
                        </div>
                        <div class="require-cook">
                            <h2 class="profile-sub-title">Requirements to Cook 

                    <a class="update-icon" href="javascript:;" id="update-cook">
                    <span class="plus"><img src="<c:url value='/ui/images/plussmall.svg'/>" alt="tick">Add your requirements</span>
                    <span class="tick"><img src="<c:url value='/ui/images/tick.svg'/>" alt="tick">Update</a>


                    </h2>
                            <ul>
                                <li>No special Kitchen Requirements. I only need a stove and a sink</li>
                            </ul>
                            <div class="cook-edit">
                                <input value="No special Kitchen Requirements. I only need a stove and a sink" type="text">
                            </div>
                        </div>
                        <hr>
                        <div class="delivery-option">
                            <h2 class="profile-sub-title">Delivery Options 
                            <ul>
                                <li class="chef-cook available"></li>
                                <li class="delivery-food"></li>
                                <li class="delivery-man available"></li>
                            </ul>
                            <hr>
                        </div>
                    </div>

                    <div class="col-lg-12 col-md-12 my-dish">
                        <h2 class="profile-sub-title">My Dishes</h2>
                        <ul>
                            <li>
                                <img src="<c:url value='/ui/images/dish-bg.jpg'/>" alt="Dishes">
                                <div class="file-upload">
                                <span class="file-input btn btn-primary btn-file"><img class="camera-icon" src="<c:url value='/ui/images/add.svg'/>" alt="add">  <p>Add Your Dishes</p><input type="file" multiple></span></div>
                            </li>
                            <li><img src="<c:url value='/ui/images/dish-21.jpg'/>" alt="Dishes">
                            </li>
                            <li><img src="<c:url value='/ui/images/dish-31.jpg'/>" alt="Dishes">
                            </li>
                             
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- /.main-content -->

</body>
</html>