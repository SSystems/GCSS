<%@page import="com.globacomp.ssystem.c4m.web.WebUser"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



    <header class="navbar-wrapper"> 
        <nav class="navbar" data-spy="affix" data-offset-top="400"  id="nav">

            <div class="container">
                <div class="navbar-header">
                    <div class="cart hide-lg"><a href="javascript:;"><span>0</span></a>
                    </div>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">
                        <img src="<c:url value='/ui/images/logo.png'/>" alt="Chef Come Cook">
                    </a>
                </div>

                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index.html#howitworks">How it Works</a>
                        </li>
                        <li><a href="index.html#ourmenu">Our Menu</a>
                        </li>
                        <li class="cart"><a href="javascript:;"><span>0</span></a>
                        </li>
                        <li><a class="popup-modal" href="#login-popup" data-effect="mfp-zoom-in">Login</a>
                        </li>
                        <li class="spl-btn"><a href="javascript:;">Become a Chef</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <!-- /.navbar-wrapper -->  

    <!-- LOGIN POPUP -->
    <div id="login-popup" class="popup-box form-popup mfp-with-anim mfp-hide">
        <div class="text-center">
            <img src="<c:url value='/ui/images/logo.png'/>" alt="">
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
            <button type="button" class="btn facebook-btn"><img src="<c:url value='/ui/images/fb.png'/>" alt="FaceBook">Log in with Facebook</button>
            <p>New to Chef Come Cook? <a class="popup-modal decoration-line" href="#signup-popup" data-effect="mfp-zoom-in"> Sign up!</a>
        </div>
    </div>
    <!-- /.popup-box -->

    <!-- SIGNUP POPUP -->
    <div id="signup-popup" class="popup-box form-popup mfp-with-anim mfp-hide">
        <div class="text-center">
            <img src="<c:url value='/ui/images/logo.png'/>" alt="">
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
            <button type="button" class="btn facebook-btn"><img src="<c:url value='/ui/images/fb.png'/>" alt="FaceBook">Sign Up with Facebook</button>
            <p>Already have an account? <a class="popup-modal decoration-line" href="#login-popup" data-effect="mfp-zoom-in"> Sign in</a>
            </p>
        </div>
    </div>
    <!-- /.popup-box -->

    <!-- FORGOT PASSWORD POPUP -->
    <div id="forgot-popup" class="popup-box form-ophwepup mfp-with-anim mfp-hide forgot-pw-popup">
        <div class="text-center">
            <img src="<c:url value='/ui/images/logo.png'/>" alt="">
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
