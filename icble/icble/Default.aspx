<%@ Page Title="ICBLE- 2023" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="icble._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="simpleModal" class="modal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h5 class="modal-title">International Conference On Blended Learning Ecosystem for Higher Education in Agriculture</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <script src="https://cdn.logwork.com/widget/countdown.js"></script>
                    <a href="https://logwork.com/countdown-ysdr" class="countdown-timer" data-timezone="Asia/Kolkata" data-date="2023-03-21 12:14">Countdown Timer</a></script>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!------------------banner End---------------->

    <div class="mediaBg">

        <div class=" container">
            <div class="row">
                <div class=" col-sm-5 border-right ">
                    <div class=" img-responsive ">
                        <img src="images/ICBLP2022-Logo.png" class="mt-5" />
                    </div>
                </div>
                <div class=" col-sm-7 pt-5">
                    <%--<p class="conferenceTytle wow fadeInUp" data-wow-delay="0.6s">
                        The Conference would be held in a hybrid mode,
                        <br>
                        which will allow both onsite and online participation of the attendees.
                    </p>--%>
                    <div class="videoBg wow fadeInUp" data-wow-delay="0.6s">
                        <div class="embed-responsive video embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="Uploads\Videos\Coming soon_BLP23.mp4" allowfullscreen></iframe>
                            <%--<iframe src="https://eshiksha.krishimegh.in/Panopto/Pages/Embed.aspx?id=cd0bf882-4ba1-4616-91af-afb80057072d&autoplay=false&offerviewer=true&showtitle=true&showbrand=false&start=0&interactivity=all" 
                                width=720 height=405 style="border: 1px solid #464646;" allowfullscreen allow="autoplay"></iframe>--%>

                        </div>

                    </div>

                </div>


            </div>

        </div>


    </div>
    <div class=" w-100 bg-info">
        <div class=" container text-center comfranceBtn pt-5 pb-5">
            <div class="sideText wow fadeInUp" data-wow-delay="0.6s">

                <h2>CONFRENCE</h2>
                <p>
                    The conference has been envisaged as a multi-partner global event to facilitate
                                    knowledge sharing, collaboration, and partnerships for the development of
                                    state-of-the-art blended learning ecosystem for higher agricultural education in
                                    India.
                                    The learnings from this conference would enable ICAR to develop a strategy for
                                    accelerating the implementation and adaption of blended learning ecosystem. The
                                    conference is being hosted jointly by ICAR and the World Bank under NAHEP and is
                                    organized by ICAR - Indian Agricultural Statistics Research Institute, New Delhi
                </p>
                <a href="About.aspx" class="btn btn-default mt-3">Read More</a>
            </div>

        </div>

    </div>

    <!------------------About End---------------->
    <section id="what-we-do" class="what-we-do">
        <div class="container">
            <div class="section-title">
                <h2>WHY BLENDED LEARNING ?</h2>

            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 d-flex align-items-stretch wow fadeInUp" data-wow-delay="0.6s">
                    <div class="icon-box">
                        <div class="icon">
                            <img src="images/online-learning.png" alt="">
                        </div>

                        <p>Enabling effective self-paced learning through flipped calssroom model</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 d-flex align-items-stretch mt-4 mt-md-0 wow fadeInUp"
                    data-wow-delay="0.6s">
                    <div class="icon-box">
                        <div class="icon">
                            <img src="images/instructor.png" alt="">
                        </div>

                        <p>
                            Facilitates substainable rotation model-learners and instructor can transition smoothly
                            between self-paced learning and face-to-face classroom environment
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0 wow fadeInUp"
                    data-wow-delay="0.6s">
                    <div class="icon-box">
                        <div class="icon">
                            <img src="images/customize.png" alt="">
                        </div>

                        <p>
                            Introduce learners to the personalized learning experience with customized learning paths to
                            improve their academic outcomes
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0 wow fadeInUp"
                    data-wow-delay="0.6s">
                    <div class="icon-box">
                        <div class="icon">
                            <img src="images/increase.png" alt="">
                        </div>

                        <p>
                            Introduce learners to the personalized learning experience with customized learning paths to
                            improve their academic outcomes
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div class="guidance">
        <div class=" container">
            <div class="section-title">
                <h2>UNDER THE GUIDANCE OF</h2>

            </div>

            <div class="row">
                <div class=" col-sm-3 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="guaidImg">
                        <div class="imgBox">
                            <img src="images/narendrasinghtomar_0.jpg" alt="">
                        </div>
                        <div class="textBox">
                            <h1>Sh. Narendra Singh Tomar</h1>
                            <p>Union Minister of Agriculture & Farmers Welfare</p>
                        </div>
                    </div>
                </div>
                <div class=" col-sm-3 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="guaidImg">
                        <div class="imgBox">
                            <img src="images/kalash-Choudhary.jpg" alt="">
                        </div>
                        <div class="textBox">
                            <h1>Sh. Kailash Choudhary</h1>
                            <p>
                                Minister of State,
                                Ministry of Agriculture & Farmers Welfare
                            </p>
                        </div>
                    </div>
                </div>
                <div class=" col-sm-3 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="guaidImg">
                        <div class="imgBox">
                            <img src="images/Shobha-Karandlaje.png" alt="">
                        </div>
                        <div class="textBox">
                            <h1>Km. Shobha Karandlaje</h1>
                            <p>
                                Minister of State,
                                Ministry of Agriculture & Farmers Welfare
                            </p>
                        </div>
                    </div>
                </div>
                <div class=" col-sm-3 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="guaidImg">
                        <div class="imgBox">
                            <img src="images/Dr.-Himanshu-Pathak.jpg" alt="">
                        </div>
                        <div class="textBox">
                            <h1>Dr. Himanshu Pathak</h1>
                            <p>Secretary (DARE) & Director General (ICAR)</p>
                        </div>
                    </div>
                </div>
                <div class=" col-sm-3 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="guaidImg">
                        <div class="imgBox">
                            <img src="images/rc_aggawal.jpg" alt="">
                        </div>
                        <div class="textBox">
                            <h1>Dr. R. C. Agrawal</h1>
                            <p>DDG (Agricultural Education) & National Director (NAHEP), ICAR</p>
                        </div>
                    </div>
                </div>
                <div class=" col-sm-3 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="guaidImg">
                        <div class="imgBox">
                            <img src="images/Dr.-Anuradha-Agarwal.jpg" alt="">
                        </div>
                        <div class="textBox">
                            <h1>Dr. Anuradha Agrawal</h1>
                            <p>
                                National Coordinator
                                (CAAST & NAHEP Component 2)
                            </p>
                        </div>
                    </div>
                </div>
                <div class=" col-sm-3 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="guaidImg">
                        <div class="imgBox">
                            <img src="images/Rajender-Parsad.jpg" alt="">
                        </div>
                        <div class="textBox">
                            <h1>Dr. Rajender Parsad</h1>
                            <p>Director, ICAR-Indian Agricultural Statistics Research Institute (ICAR-IASRI)</p>
                        </div>
                    </div>
                </div>
                <div class=" col-sm-3 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="guaidImg">
                        <div class="imgBox">
                            <img src="images/sudeeppic.jpg" alt="">
                        </div>
                        <div class="textBox">
                            <h1>Dr. Sudeep</h1>
                            <p>PI, Component 2 (NAHEP) ,
                                <br />
                                (ICAR-IASRI)</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
    <!------------------banner End---------------->
    <%--<div class="keyspeakers">
        <div class="col-sm-12 text-center section-title">
            <h2 class="mt-4">SPEAKERS</h2>

        </div>
        <div class="container">
            <div class=" wow fadeInUp" data-wow-delay="0.6s">
                <div class="owl-carousel loop1 owl-theme wow fadeInUp" data-wow-delay="0.6s">
                    <div class="item">
                        <figure>

                            <div class="imgBox">
                                <img src="images/Prof-Abdur-Rab.jpg" />
                            </div>
                            <div class="textBox">
                                <h2>Prof Abdur Rab</h2>
                                <p>
                                    Vice Chancellor, International University of Business Agriculture & Technology, Dhaka, Bangladesh

                                </p>
                            </div>


                        </figure>
                    </div>
                   
                    <div class="item">
                        <figure>
                            <div class="imgBox">
                                <img src="images/Sajid-Pareeth.jpg" />
                            </div>
                            <div class="textBox">
                                <h2>Sajid Pareeth</h2>
                                <p>
                                    Senior Lecturer,
                                    <br />
                                    IHE Delft Institute for
                                    <br />
                                    Water Education, Netherlands
                                </p>
                            </div>

                        </figure>
                    </div>
                    <div class="item">
                        <figure>
                            <div class="imgBox">
                                <img src="images\GM profile photo 2017.jpeg" />
                            </div>
                            <div class="textBox">
                                <h2>Prof. Garth Maker</h2>
                                <p>
                                    Associate Professor,<br />
                                    Murdoch University
                                </p>
                            </div>

                        </figure>
                    </div>
                    <div class="item">
                        <figure>
                            <div class="imgBox">
                                <img src="images\Alex_Twino.jpg" />
                            </div>
                            <div class="textBox">
                                <h2>Dr. Alex Twinomugisha</h2>
                                <p>
                                    Senior Education Technology Specialist, The World Bank, Washington, USA
                                </p>
                            </div>

                        </figure>
                    </div>
                    <div class="item">
                        <figure>
                            <div class="imgBox">
                                <img src="images\pierre.jpg" />
                            </div>
                            <div class="textBox">
                                <h2>Mr. Pierre Dillenbourg</h2>
                                <p>
                                    Swiss Federal Institute of Technology, Lausanne, Switzerland
                                </p>
                            </div>

                        </figure>
                    </div>
                    <div class="item">
                        <figure>
                            <div class="imgBox">
                                <img src="images\Joshua Valeta.jpeg" />
                            </div>
                            <div class="textBox">
                                <h2>Professor Joshua Valeta </h2>
                                <p>
                                    Director, Open, Distance and e-Learning, Ministry of Education, Malawi Government, Malawi
                                </p>
                            </div>

                        </figure>
                    </div>


                </div>


            </div>
        </div>

    </div>--%>

    <!------------------Guidance End------    ---------->
    <div class=" faqBg">
        <div class="container">
            <div class="section-title mt-3 text-center wow zoomIn">
                <h2>FAQ's</h2>

            </div>
            <div class="row">
                <div class="col-md-12 wow zoomIn">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                                        aria-expanded="false" aria-controls="collapseOne">Why should we attend ICBLE 2023?
                                    </a>
                                </h4>
                            </div>

                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel"
                                aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <p>ICBLE 2023 for Agricultural Higher Education is the first of its kind initiative to promote blended learning initiatives in agricultural higher education.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                        href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">How do I register for ICBLE 2023?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel"
                                aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <p>All invitees and participants can register via the link <a href="https://icble2023.krishimegh.in/registration">icble2023.krishimegh.in/registration</a>. Alternatively, interested people can use the QR code. </p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                        href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Is registration free for students and researchers?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel"
                                aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <p>Registration for the conference is free for whoever is interested to learn about Indian blended learning initiatives.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingFour">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                        href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">What is the theme of the conference?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFour" class="panel-collapse collapse" role="tabpanel"
                                aria-labelledby="headingFour">
                                <div class="panel-body">
                                    <p>The theme of the conference is a knowledge-sharing conference session about blended learning initiatives by private education and public players.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingFive">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                        href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Will international attendees be attending the conference this year? 
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFive" class="panel-collapse collapse" role="tabpanel"
                                aria-labelledby="headingFive">
                                <div class="panel-body">
                                    <p>Yes, the conference will host both Indian and International attendees.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>



    <!------------------Guidance End---------------->
    <div class="newsBg">
        <div class="col-md-12">
            <div class="section-title text-center wow zoomIn">
                <h2>CONNECT WITH US</h2>

            </div>
        </div>
        <div class="container">
            <div class=" wow fadeInUp" data-wow-delay="0.6s">
                <div class="owl-carousel loop owl-theme wow fadeInUp" data-wow-delay="0.6s">
                    <div class="item">
                        <figure>
                            <a href="#">
                                <div class="social-boxes bg-info">
                                    <iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Ficaricble%2Fposts%2Fpfbid02fNb5unThRVy8eBZH5ysLWqACWfsgD3oY5k1HfDUZCiqANnCqJfYSaywBDC7SSp27l&show_text=true&width=500" width="100%" height="660" style="border: none; overflow: hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                                </div>

                            </a>
                        </figure>
                    </div>
                    <div class="item">
                        <figure>
                            <a href="#">
                                <div class="social-boxes bg-info">
                                    <blockquote class="twitter-tweet">
                                        <p lang="en" dir="ltr">A dream of Hon’ble Prime Minister of India, Shri Narendra Modi for digital learning in digital India.<br>
                                            Visit <a href="https://t.co/tLnuYLwwnI">https://t.co/tLnuYLwwnI</a> to know more about ICBLE 2023.<a href="https://twitter.com/hashtag/savethedatee?src=hash&amp;ref_src=twsrc%5Etfw">#savethedatee</a> <a href="https://twitter.com/hashtag/ICBLE?src=hash&amp;ref_src=twsrc%5Etfw">#ICBLE</a> <a href="https://twitter.com/hashtag/ICBLE2023?src=hash&amp;ref_src=twsrc%5Etfw">#ICBLE2023</a> <a href="https://twitter.com/hashtag/ICAR?src=hash&amp;ref_src=twsrc%5Etfw">#ICAR</a> <a href="https://twitter.com/hashtag/ICARNEHAP?src=hash&amp;ref_src=twsrc%5Etfw">#ICARNEHAP</a> <a href="https://twitter.com/hashtag/nahep?src=hash&amp;ref_src=twsrc%5Etfw">#nahep</a> <a href="https://twitter.com/hashtag/AzadiKaAmritMahotsav?src=hash&amp;ref_src=twsrc%5Etfw">#AzadiKaAmritMahotsav</a> <a href="https://twitter.com/hashtag/G20Summit2023?src=hash&amp;ref_src=twsrc%5Etfw">#G20Summit2023</a> <a href="https://twitter.com/hashtag/millets2023?src=hash&amp;ref_src=twsrc%5Etfw">#millets2023</a> <a href="https://t.co/VanTWqAuEV">pic.twitter.com/VanTWqAuEV</a></p>
                                        &mdash; ICBLE 2023 (@Icble2023) <a href="https://twitter.com/Icble2023/status/1628623685727944705?ref_src=twsrc%5Etfw">February 23, 2023</a></blockquote>
                                    <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                                </div>
                            </a>
                        </figure>
                    </div>
                    <div class="item">
                        <figure>
                            <a href="#">
                                <div class="social-boxes bg-info">
                                    <iframe src="https://www.linkedin.com/embed/feed/update/urn:li:share:7034389863810445312" height="100%" width="660" frameborder="0" allowfullscreen="" title="Embedded post"></iframe>
                                </div>
                            </a>
                        </figure>
                    </div>


                </div>


            </div>
        </div>
    </div>

    <script>
        (function blink() {
            $('.blink_me').fadeOut(100).fadeIn(100, blink);
        })();
    </script>
    <script type="text/javascript">
        window.onload = function () {
            OpenBootstrapPopup();
        };
        function OpenBootstrapPopup() {
            $("#simpleModal").modal('show');
        }
    </script>
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-0Y9JDY9M8S"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'G-0Y9JDY9M8S');
</script>
</asp:Content>
