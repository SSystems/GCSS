 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <!-- /.innerpage-banner -->

  <body class="chef-account">

    <header class="navbar-wrapper">
        >
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

    <!-- /.innerpage-banner -->

    <section class="banner-section static-banner policy-banner">
        <figure>
            <!-- <img src="img/contactBg.jpg" alt=""> -->
        </figure>
    </section>
    <!-- /.banner-section -->

    <section class="my-account-section">
        <div class="container">
            <h2 class="section-title">My Account</h2>
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 chef-profile-details">
                    <div class="chef-user-profile text-center">
                        <figure>
                            <img src="<c:url value='/ui/images/profile-dp.jpg'/>" alt="Profile">
                        </figure>
                        <figcaption>
                            <h4 class="head-title">Jeniffer Orange</h4>
                            <h5 class="section-sub-title">jenifferorange@gmail.com</h5>
                        </figcaption>
                    </div>
                    <ul class="tabs-left">
                        <li class="active"><a class="section-sub-title active" href="#Tab-1" data-toggle="tab">Account Settings</a>
                        </li>
                        <li><a class="section-sub-title" href="#Tab-2" data-toggle="tab">Orders</a>
                        </li>
                        <li><a class="section-sub-title" href="#Tab-3" data-toggle="tab">Users Permissions</a>
                        </li>
                        <li><a class="section-sub-title" href="#Tab-4" data-toggle="tab">My Earnings</a>
                        </li>
                        <li><a class="section-sub-title" href="#Tab-5" data-toggle="tab">Reviews</a>
                        </li>
                        <li><a class="section-sub-title" href="#Tab-6" data-toggle="tab">Log Out</a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 order-details">
                    <div class="tab-content">
                        <!-- Tab 1 -->
                        <div class="tab-pane active" id="Tab-1">
                            <div class="tab-section">
                                <h5 class="section-sub-title">
                                    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla non risus non lectus vehicula tincidunt. Suspendisse euismod mattis neque, ac pharetra est ultricies eget. Ut mollis fringilla neque, sit amet pellentesque dui. Quisque aliquam sed magna at vulputate.
                                </h5>
                                <h4 class="head-title">Personal information <a class="pull-right" href="javascript:;"><img src="<c:url value='/ui/images/icon_edit.svg'/>"</a></h4>
                                <div class="col-lg-12 personal-form">
                                    <div class="form-material">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 chef-inputs">
                                            <div class="form-group label-floating">
                                                <label class="control-label" for="focusedInput1">Name</label>
                                                <input class="form-control" id="focusedInput1" type="text">
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 chef-inputs">
                                            <div class="form-group label-floating">
                                                <label class="control-label" for="focusedInput1">Password</label>
                                                <input class="form-control" id="focusedInput1" type="password">
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 chef-inputs">
                                            <div class="form-group label-floating">
                                                <label class="control-label" for="focusedInput1">Mobile No</label>
                                                <input class="form-control" id="focusedInput1" type="number">
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 chef-inputs">
                                            <div class="form-group label-floating">
                                                <label class="control-label" for="focusedInput1">E-Mail</label>
                                                <input class="form-control" id="focusedInput1" type="text">
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 chef-inputs">
                                            <div class="form-group label-floating">
                                                <textarea class="form-control" id="textArea"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 chef-inputs">
                                            <div class="row">
                                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                                    <div class="form-group label-floating select-control genter">
                                                        <select id="select" class="form-control">
                                                            <option value="" disabled="" selected="">Select</option>
                                                            <option>Male</option>
                                                            <option>Female</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Tab 1 -->
                        <div class="tab-pane" id="Tab-2">
                            <div class="tab-section">
                                <h5 class="section-sub-title">
                                    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla non risus non lectus vehicula tincidunt. Suspendisse euismod mattis neque, ac pharetra est ultricies eget. Ut mollis fringilla neque, sit amet pellentesque dui. Quisque aliquam sed magna at vulputate.
                                </h5>
                                </div>
                                </div>
                                    </section>



</body>
</html>