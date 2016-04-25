<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<body class="customer-information has-fixedheader">

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
     <section class="breadcrumb-nav">
       
        <div class="container">
            <div class="row">
                <ol class="col-lg-12 breadcrumb">
                    <li><a href="javascript:;">Cart</a>
                    </li>
                    <li class="active">Customer Information
                    </li>
                    <li class="disabled">Delivery &amp; Payment Method</li>
                </ol>
                <!-- /.breadcrumb -->
            </div>
        </div>
          
    </section>
  
    <!-- /.breadcrumb-nav -->

    <section class="main-content">
        <div class="mobile-title">
            <h3>Customer Information</h3>
        </div>
        <!-- ./mobile-title -->
        <div class="container bottom-spacing">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-md-push-8">
                    <h4>Your Cart</h4>
                    <div class="cart-list">
                        <div class="cl-col">
                            <figure class="product-img">
                                <img src="<c:url value='/ui/images/cart-img-1.png '/>" alt="">
                                <span class="badge">2</span>
                            </figure>
                        </div>
                        <div class="cl-col">
                            <p>Italian Chicken Wings Fry</p>
                        </div>
                        <div class="cl-col">
                            <div class="price">$ 58</div>
                        </div>
                    </div>
                    <!-- /.cart-list -->
                    <div class="cart-list">
                        <div class="cl-col">
                            <figure class="product-img">
                                 <img src="<c:url value='/ui/images/cart-img-2.png '/>" alt="">
                                <span class="badge">1</span>
                            </figure>
                        </div>
                        <div class="cl-col">
                            <p>Italian Chicken Wings Fry</p>
                        </div>
                        <div class="cl-col">
                            <div class="price">$ 89</div>
                        </div>
                    </div>
                    <!-- /.cart-list -->
                    <div class="total-cart-list">
                        <h6>Total</h6>
                        <span>
                            USD<strong>$147</strong>
                        </span>
                    </div>
                    <!-- /.total-cart-list -->
                </div>
                <div class="col-lg-8 col-md-8 col-md-pull-4">
                    <h4>Customer Information</h4>
                    <p>Already have an account with us? <a class="popup-modal" href="#login-popup" data-effect="mfp-zoom-in">Log in</a>
                    </p>
                    <div class="row m-b30">
                        <form class="form-material">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="Name">First Name</label>
                                    <input class="form-control" id="name" type="text">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="Name">Last Name</label>
                                    <input class="form-control" id="name" type="text">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="email">Email</label>
                                    <input class="form-control" id="email" type="text">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group label-floating m-b0">
                                    <label class="control-label" for="phoneNumber">Phone Number</label>
                                    <input class="form-control" id="phoneNumber" type="number">
                                </div>
                            </div>
                        </form>
                    </div>
                    <h5 class="m-b0">Delivery Method</h5>
                    <div class="row">
                        <form class="form-material">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="form-group label-floating m-b0">
                                    <label class="control-label" for="address1">Address 1</label>
                                    <input class="form-control" id="address1" type="text">
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="form-group label-floating m-b0">
                                    <label class="control-label" for="address1">Address 2</label>
                                    <input class="form-control" id="address1" type="text">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group label-floating select-control">
                                    <select id="select" class="form-control">
                                        <option value="" disabled selected>Country</option>
                                        <option>Individual 1</option>
                                        <option>Individual 2</option>
                                        <option>Individual 3</option>
                                        <option>Individual 4</option>
                                        <option>Individual 5</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group label-floating select-control">
                                    <select id="select" class="form-control">
                                        <option value="" disabled selected>State</option>
                                        <option>Individual 1</option>
                                        <option>Individual 2</option>
                                        <option>Individual 3</option>
                                        <option>Individual 4</option>
                                        <option>Individual 5</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group label-floating select-control">
                                    <select id="select" class="form-control">
                                        <option value="" disabled selected>City</option>
                                        <option>Individual 1</option>
                                        <option>Individual 2</option>
                                        <option>Individual 3</option>
                                        <option>Individual 4</option>
                                        <option>Individual 5</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="zipcode">Zip code</label>
                                    <input class="form-control" id="zipcode" type="number">
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox"> Save this for next time
                                    </label>
                                </div>
                            </div>
                            <div class="foot-btn">
                                <button type="button" class="btn">Confirm your Order & Pay</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
    <!-- /.popup-box -->
    
    <!-- /.main-content -->


    </div>
            </body>

</html>