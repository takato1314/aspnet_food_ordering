<%@ Page Title="MY McDonald's®" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mcd.Client.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <header class="hero-wrap js-fullheight" data-stellar-background-ratio="0.5">
        <div class="fullscreen-video-wrap align-items-center justify-content-center mb-4 ftco-animate">
            <video src="videos/mcd1.mp4" autoplay loop muted></video>
        </div>
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                <div class="col-md-9 text text-center" data-scrollax=" properties: { translateY: '70%' }">
                    <h1 data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">It’s a good time for the great taste of McDonald’s</h1>
                    <p class="caps" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Make your stop at the nearest McDonald's and treat yourself with our delicacies to your heart's content. Share those joy moments with your friends and family.</p>
                </div>
            </div>
        </div>
    </header>

    <section class="ftco-section services-section bg-light">
        <div class="container">
            <div class="row d-flex">
                <div class="col-md-6 order-md-last heading-section pl-md-5 ftco-animate">
                    <h2 class="mb-4">Our service, your pleasure</h2>
                    <p>
                        We’re passionate about our food and take great care that what we serve every day is safe, great quality, offers choice and is produced in a responsible way. 
                        We use real, quality ingredients to elevate the taste of our food and the spirits of people who enjoy it all over the world.
                    </p>
                    <p>
                        From the taste of our food and its halal ingredients, right down to our restaurant cleanliness, dedicated crew and grassroots community programmes, 
                        we’re dedicated to bring you and your family an experience you can feel good about.
                    </p>
                    <p>
                        <a href="#" class="btn btn-primary py-3 px-4">See Full Menu</a>
                    </p>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6 d-flex align-self-stretch ftco-animate">
                            <div class="media block-6 services d-block">
                                <div class="icon">
                                    <img src="images/breakfast.jpg"/>
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3 class="heading mb-3">Breakfast</h3></a>
                                    <p>Wake up to easy mornings with the delicious taste of McDonald's Breakfast</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 d-flex align-self-stretch ftco-animate">
                            <div class="media block-6 services d-block">
                                <div class="icon">
                                    <img src="images/lunch-dinner.jpg"/>
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3 class="heading mb-3">Lunch/Dinner</h3></a>
                                    <p>Greater selection. Greater satisfaction.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 d-flex align-self-stretch ftco-animate">
                            <div class="media block-6 services d-block">
                                <div class="icon">
                                    <img src="images/McCafe.jpg"/>
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3 class="heading mb-3">Beverages</h3></a>
                                    <p>Your favourite McCafe beverages now at McDonald's</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 d-flex align-self-stretch ftco-animate">
                            <div class="media block-6 services d-block">
                                <div class="icon">
                                    <img src="images/desserts.jpg"/>
                                </div>
                                <div class="media-body">
                                    <a href="#"><h3 class="heading mb-3">Desserts</h3></a>
                                    <p>Sweeten your day with these indulgent treats.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-counter img" id="section-counter">
        <div class="container">
            <div class="row d-flex">
                <div class="col-md-6 d-flex">
                    <div class="img d-flex align-self-stretch" style="background-image: url(images/about.jpg);"></div>
                </div>
                <div class="col-md-6 pl-md-5 py-5">
                    <div class="row justify-content-start pb-3">
                        <div class="col-md-12 heading-section ftco-animate">
                            <h2 class="mb-4">More than your typical fast-food restaurants</h2>
                            <p>
                                In March of 2017, we introduced our Velocity Growth Plan, named as such because we’re moving fast – and in a clearly defined direction.
                            </p>
                            <p>
                                We know the most meaningful way to grow the business and create value for all of our stakeholders is by serving more customers more often. 
                                That’s why we’re focused on giving customers what they really want: hot, delicious food served quickly – with an overall experience and value for 
                                their money that meets their rising expectations.
                            </p>
                            <p>
                                Velocity makes the most of our competitive advantages, from our unmatched global scale to our iconic brand to our tremendous 
                                presence in local markets around the world.
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center mb-4">
                                <div class="text">
                                    <strong class="number" data-number="500">0</strong>
                                    <span>Stores Opened in Malaysia</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center mb-4">
                                <div class="text">
                                    <strong class="number" data-number="5000">0</strong>
                                    <span>Happy Employees</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center mb-4">
                                <div class="text">
                                    <strong class="number" data-number="500000">0</strong>
                                    <span>Happy Customers</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section testimony-section bg-bottom" style="background-image: url(images/bg_3.jpg);">
        <div class="container">
            <div class="row justify-content-center pb-4">
                <div class="col-md-7 text-center heading-section ftco-animate">
                    <h2 class="mb-4">Customer Feedback</h2>
                </div>
            </div>
            <div class="row ftco-animate">
                <div class="col-md-12">
                    <div class="carousel-testimony owl-carousel ftco-owl">
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="text">
                                    <p class="mb-4">
                                        毎日たくさんのご家族が世界中のマクドナルドを訪れ、
                                        親子でおいしく楽しい食事の時間を過ごしていただいています。
                                        そしてそれが、長く心に残る思い出となっていく・・・。
                                    </p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Alex Soh</p>
                                            <span class="position">Japanese Traveler</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_5.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Reynold Chong</p>
                                            <span class="position">TARUC Student</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_4.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Edison Hawk</p>
                                            <span class="position">Visitor</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_3.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Evelyn</p>
                                            <span class="position">TARC Student</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <asp:GridView ID="Gridview1" runat="server">
    </asp:GridView>

</asp:Content>