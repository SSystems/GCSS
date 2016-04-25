<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <section class="banner-section static-banner contactus-banner">
        <figure>
            <!-- <img src="img/contactBg.jpg" alt=""> -->
        </figure>
    </section>
    <!-- /.banner-section -->

    <section class="contactus-section">
        <div class="container">
            <div class="row contactus-header">
                <div class="col-lg-12 col-md-12">
                    <!-- <h2>Contact us</h2> -->
                    <h2 class="section-title text-center">Contact us</h2>
                    <p>Lorem ipsum dolor sit amet, adipiscing elit. Cras a varius magna venenatis faucibus</p>
                </div>
            </div>
            <!-- .Contact Us Form*/-->
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 col-sm-offset-0">
                    <div class="row">
                        <form class="form-material">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="Name">Name *</label>
                                    <input class="form-control" id="name" type="text">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="email">E-Mail *</label>
                                    <input class="form-control" id="email" type="text">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group label-floating m-b0">
                                    <label class="control-label" for="phoneNumber">Phone Number *</label>
                                    <input class="form-control" id="phoneNumber" type="number">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
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
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="form-group label-floating m-b0">
                                    <label class="control-label" for="subject">Subject *</label>
                                    <input class="form-control" id="subject" type="text">
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group label-floating m-b0 form-group-textarea">
                                    <label for="textArea" class=" control-label">Type your message here...</label>
                                    <textarea class="form-control" rows="2" id="textArea"></textarea>
                                </div>
                            </div>
                            <div class="text-center">
                                <button type="button" class="btn">Send Message</button>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- .Contact Us Form*/-->
            </div>
        </div>
    </section>
    <!-- /.contactFormSection -->

    <section class="needHelpSection">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 help">
                    <p>Still have a question? Our experience consultants are ready to help. </p>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 helpBlock">
                                <div class="helpQuestion">
                                    <h1>Need Help!</h1>
                                    <p>Call our reprentative at</p>
                                    <h2>1-800-210-4520</h2>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 helpBlock">
                                <div class="helpQuestion mail">
                                    <h5>Send  a mail to</h5>
                                    <p><a href="javascript;"> help@chefcomecook.com</a>
                                    </p>
                                    <p><a href="javascript;">contact@chefcomecook.com</a>
                                    </p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 helpBlock">
                                <div class="helpQuestion corporate">
                                    <h4>Corporate Office</h4>
                                    <h3>Chef Come Cook</h3>
                                    <address>
                                        L 5789, Frosdam Business Centre, Suite 105,
                                        <br/> Orlando, fl 10101
                                    </address>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

        </body>

</html>