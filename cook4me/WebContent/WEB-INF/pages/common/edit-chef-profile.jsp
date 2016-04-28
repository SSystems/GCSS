  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
 <body class="has-fixedheader">
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
               <img class="camera-icon" src="img/camera.svg" alt="camera">  Update Cover Photo<input type="file" multiple>
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
                                <i class="icon"><img src="img/camera.svg" alt=""></i>
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
                <li><img src="img/location.svg" alt="location"><span>New York, NY</span>
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
                     <span class="plus"><img src="img/edit.svg" alt="tick">Edit</span>
                    <span class="tick"><img src="img/tick.svg" alt="tick">Update</span></a>

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

                            <img src="img/review.png" alt="review">
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
                                <li><img src="img/tickgreen.svg" alt="Green-tick">Punctuality </li>
                                <li><img src="img/tickgreen.svg" alt="Green-tick">Dependability </li>
                                <li><img src="img/tickgreen.svg" alt="Green-tick">Reliable Transportation </li>
                                <li><img src="img/tickgreen.svg" alt="Green-tick">Hire Again </li>

                            </ul>
                        </div>

                        <div class="review-status">
                            <a class="approve-icon" href=""><img src="img/tick.svg" alt="tick">Approve</a>
                            <a class="hide-btn" href=""><img src="img/hide.svg" alt="tick">Hide</a>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-5">
                        <h2 class="profile-sub-title">Specialty</h2>
                        <div class="links">
                            <input type="text" value="Fusion cuisine,Haute cuisine,Note by Note cuisine,Nouvelle cuisine,chinese cuisine,cuisine,arabian cuisine," data-role="tagsinput">

                            <hr>
                        </div>
                        <div class="require-cook">
                            <h2 class="profile-sub-title">Requirements to Cook 

                    <a class="update-icon" href="javascript:;" id="update-cook">
                    <span class="plus"><img src="img/plussmall.svg" alt="tick">Add your requirements</span>
                    <span class="tick"><img src="img/tick.svg" alt="tick">Update</a>


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
                                <img src="img/dish-bg.jpg" alt="Dishes">
                                <div class="file-upload">
                                <span class="file-input btn btn-primary btn-file"><img class="camera-icon" src="img/add.svg" alt="add">  <p>Add Your Dishes</p><input type="file" multiple></span></div>
                            </li>
                            <li><img src="img/dish-2.jpg" alt="Dishes">
                            </li>
                            <li><img src="img/dish-3.jpg" alt="Dishes">
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- /.main-content -->

    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 footerLogo">
                    <img src="img/footer-logo.png" alt="">
                </div>
                <div class="col-lg-8 footerMenu">
                    <ul>
                        <li><a href="javascript:;">Info for Chef</a>
                        </li>
                        <li><a href="javascript:;">Privacy Policy</a>
                        </li>
                        <li><a href="javascript:;">Terms of Use</a>
                        </li>
                        <li><a href="javascript:;">Sitemap</a>
                        </li>
                        <li><a href="contact-us.html">Contact</a>
                        </li>
                    </ul>

                    <ul class="payment-gateway">
                        <li><img src="img/icon-lock.png" alt="">Secure payment</li>
                        <li><img src="img/icon-visa.png" alt="">
                        </li>
                        <li><img src="img/icon-mastercard.png" alt="">
                        </li>
                        <li><img src="img/icon-paypal.png" alt="">
                        </li>
                        <li><img src="img/icon-americanExpress.png" alt="">
                        </li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="social-icons">
                        <li>
                            <a href="javascript:;">
                                <img src="img/icon-googleplus.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="img/icon-twitter.png" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="img/icon-facebook.png" alt="">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <p class="text-center">2016 &copy; Chefcomecook, Inc.</p>
        </div>
    </footer>
    <!-- /.footer-section -->

    <a id='backTop'>Back To Top</a>

    <!-- LOGIN POPUP -->
    <div id="login-popup" class="popup-box form-popup mfp-with-anim mfp-hide">
        <div class="text-center">
            <img src="img/logo.png" alt="">
        </div>
        <h2>Login</h2>
        <div class="row formFiledsBlock">
            <div class="form-group label-floating">
                <label class="control-label" for="focusedInput1">E-Mail</label>
                <input class="form-control" id="focusedInput1" type="text">
            </div>
            <div class="form-group label-floating">
                <label class="control-label" for="focusedInput1">Password</label>
                <input class="form-control" id="password" type="password">
            </div>
            <a class="popup-modal link decoration-line" href="#forgot-popup" data-effect="mfp-zoom-in">Forgot Password?</a>
            <button type="button" class="btn">Log In</button>
            <div class="divider">Or</div>
            <button type="button" class="btn facebook-btn"><img src="img/fb.png" alt="FaceBook">Log in with Facebook</button>
            <p>New to Chef Come Cook? <a class="popup-modal decoration-line" href="#signup-popup" data-effect="mfp-zoom-in"> Sign up!</a>
        </div>
    </div>
    <!-- /.popup-box -->

    <!-- SIGNUP POPUP -->
    <div id="signup-popup" class="popup-box form-popup mfp-with-anim mfp-hide">
        <div class="text-center">
            <img src="img/logo.png" alt="">
        </div>
        <h2>Sign Up</h2>

        <div class="row formFiledsBlock">
            <div class="form-group label-floating select-control">
                <select id="select" class="form-control">
                    <option value="" disabled selected>Individual</option>
                    <option>Individual 1</option>
                    <option>Individual 2</option>
                    <option>Individual 3</option>
                    <option>Individual 4</option>
                    <option>Individual 5</option>
                </select>
            </div>
            <div class="form-group label-floating">
                <label class="control-label" for="Name">Name</label>
                <input class="form-control" id="name" type="text">
            </div>
            <div class="form-group label-floating">
                <label class="control-label" for="email">E-Mail</label>
                <input class="form-control" id="email" type="text">
            </div>
            <div class="form-group label-floating">
                <label class="control-label" for="password">Password</label>
                <input class="form-control" id="password" type="password">
            </div>
            <div class="form-group label-floating">
                <label class="control-label" for="re-password">Re-Enter Password</label>
                <input class="form-control" id="re-password" type="password">
            </div>
            <div class="form-group label-floating m-b0">
                <label class="control-label" for="phoneNumber">Phone Number</label>
                <input class="form-control" id="phoneNumber" type="number">
            </div>
            <button type="button" class="btn m-b10">SIGN UP</button>
            <small>By signing up, you agree to our <a href="javascript:;">terms of use</a>, <a href="javascript:;">privacy policy</a>, and <a href="javascript:;">cookie policy</a>. </small>
            <div class="divider">Or</div>
            <button type="button" class="btn facebook-btn"><img src="img/fb.png" alt="FaceBook">Sign Up with Facebook</button>
            <p>Already have an account? <a class="popup-modal decoration-line" href="#login-popup" data-effect="mfp-zoom-in"> Sign in</a>
            </p>
        </div>
    </div>
    <!-- /.popup-box -->

    <!-- FORGOT PASSWORD POPUP -->
    <div id="forgot-popup" class="popup-box form-ophwepup mfp-with-anim mfp-hide forgot-pw-popup">
        <div class="text-center">
            <img src="img/logo.png" alt="">
        </div>
        <h2>Password Reset</h2>

        <div class="row formFiledsBlock">
            <p>Enter the email address you used to sign up and we'll send you a link to reset your password.</p>
            <div class="form-group label-floating m-b0">
                <label class="control-label" for="email">E-Mail</label>
                <input class="form-control" id="email" type="text">
            </div>
            <button type="button" class="btn" id="btn-forgot-pw">Continue</button>
            <div class="text-left"><a class="back-nav popup-modal decoration-line" href="#login-popup">Back to Log in</a>
            </div>
        </div>
        <!-- /.formFiledsBlock -->

        <div class="alert-check-mail hide">
            <div class="alert-content">
                <h2>Check your email</h2>
                <p>You will receive a email from us with Instructions for resetting your password.</p>
                <hr>
                <p>You’re redirecting to login page in
                    <br><span>7</span> Seconds</p>
            </div>
        </div>
        <!-- /.alert-check-mail -->
    </div>
    
    </body>
    </html>