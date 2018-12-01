<div class="col-lg-4">
    <div class="right-sidebar-1">
        {{-- <div class="widgets widgets-item">
            <h3 class="widget-title">
                <span>On social</span>
            </h3>
            <ul class="ts-block-social-list">
                <li class="ts-facebook">
                    <a href="#">
                    <i class="fa fa-facebook"></i>
                    <b>facebook </b>
                    <span>1.5 k</span>
                    </a>
                </li>
                <li class="ts-google-plus">
                    <a href="#">
                    <i class="fa fa-google-plus"></i>
                    <b>Google Plus </b>
                    <span>1.5 k</span>
                    </a>
                </li>
                <li class="ts-twitter">
                    <a href="#">
                    <i class="fa fa-twitter"></i>
                    <b>Twitter </b>
                    <span>1.5 k</span>
                    </a>
                </li>
                <li class="ts-pinterest">
                    <a href="#">
                    <i class="fa fa-pinterest-p"></i>
                    <b>facebook </b>
                    <span>1.5 k</span>
                    </a>
                </li>
                <!-- <li class="ts-linkedin">
                    <a href="#">
                    	<i class="fa fa-linkedin"></i>
                    	<b>12.5 k </b>
                    	<span>Follwers</span>
                    </a>
                    
                    </li>
                    <li class="ts-youtube">
                    <a href="#">
                    	<i class="fa fa-youtube"></i>
                    	<b>12.5 k </b>
                    	<span>Follwers</span>
                    </a>
                    
                    </li> -->
            </ul>
        </div> --}}
        <!-- widgets end-->
        <!-- widgets end-->
        <div class="post-list-item widgets">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation">
                    <a class="active" href="#home" aria-controls="home" role="tab" data-toggle="tab" style="font-family: Arial;font-weight: bold;font-size: 15px;">
                    <i class="fa fa-clock-o"></i>
                    Tin Tức Mới Nhất
                    </a>
                </li>
                <li role="presentation" style="display: none;">
                    <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">
                    <i class="fa fa-heart"></i>
                    Favorites
                    </a>
                </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active ts-grid-box post-tab-list" id="home">
                    @foreach($tinmoinhat as $item)
                    <div class="post-content media">
                        <img class="d-flex sidebar-img" src="{{ $item->image }}" alt="">
                        <div class="media-body">
                            <span class="post-tag">
                            <a href="{{ route('theloai',['slug' => $item->cslug]) }}" class="green-color"> {!! $item->name !!}</a>
                            </span>
                            <h4 class="post-title">
                                <a href="{{ route('chitiet',['slug' => $item->pslug]) }}">{!! $item->title !!} </a>
                            </h4>
                        </div>
                    </div>
                    @endforeach
                    
                </div>
                <!--ts-grid-box end -->
                <div role="tabpanel" class="tab-pane ts-grid-box post-tab-list" id="profile">
                    <div class="post-content media">
                        <img class="d-flex sidebar-img" src="{{ asset('public/frontend/images/news/sports/sports2.jpg')}}" alt="">
                        <div class="media-body">
                            <span class="post-tag">
                            <a href="#" class="green-color"> sports</a>
                            </span>
                            <h4 class="post-title">
                                <a href="#">Beats did announce something today</a>
                            </h4>
                        </div>
                    </div>
                    <!--post-content end-->
                    <div class="post-content media ">
                        <img class="d-flex sidebar-img" src="{{ asset('public/frontend/images/news/tech/tech4.jpg')}}" alt="">
                        <div class="media-body">
                            <span class="post-tag">
                            <a href="#" class="yellow-color"> Technology</a>
                            </span>
                            <h4 class="post-title">
                                <a href="#">18 month old shoots himself by gun </a>
                            </h4>
                        </div>
                    </div>
                    <!--post-content end-->
                    <div class="post-content media">
                        <img class="d-flex sidebar-img" src="{{ asset('public/frontend/images/news/sports/sports2.jpg')}}" alt="">
                        <div class="media-body">
                            <span class="post-tag">
                            <a href="#" class="blue-color"> Lifestyle</a>
                            </span>
                            <h4 class="post-title">
                                <a href="#">Beats did announce something today</a>
                            </h4>
                        </div>
                    </div>
                    <!--post-content end-->
                    <div class="post-content media">
                        <img class="d-flex sidebar-img" src="{{ asset('public/frontend/images/news/fashion/fashion4.jpg')}}" alt="">
                        <div class="media-body">
                            <span class="post-tag">
                            <a href="#" class="pink-color"> Fashion</a>
                            </span>
                            <h4 class="post-title">
                                <a href="#">18 month old shoots himself by gun </a>
                            </h4>
                        </div>
                    </div>
                    <!--post-content end-->
                </div>
                <!--ts-grid-box end -->
            </div>
            <!-- tab content end-->
        </div>
        <!-- widgets end-->

        <div class="widgets widgets-item">
           <iframe width="100%" height="200" src="https://www.youtube.com/embed/wh2svGAdy3c" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 
        </div>
        

        <div class="widgets widget-banner">
            <a href="#">
            <img class="img-fluid" src="{{ asset('public/frontend/images/banner/sidebar-banner4.jpg')}}" alt="" style="width: 100%;">
            </a>
        </div>
        
        {{-- <div class="widgets category-widget widgets-item">
            <h3 class="widget-title">
                <span>On social</span>
            </h3>
            <ul class="category-list">
                <li>
                    <a href="#">Travel
                    <span class="ts-orange-bg">10</span>
                    </a>
                </li>
                <li>
                    <a href="#">Sports
                    <span class="ts-green-bg">25</span>
                    </a>
                </li>
                <li>
                    <a href="#">Travel
                    <span class="ts-orange-bg">10</span>
                    </a>
                </li>
                <li>
                    <a href="#">Fashion
                    <span class="ts-pink-bg">10</span>
                    </a>
                </li>
                <li>
                    <a href="#">Technology
                    <span class="ts-blue-bg">10</span>
                    </a>
                </li>
            </ul>
        </div> --}}

        {{-- <div class="widgets ts-grid-box post-tab-list ts-col-box">
            <h3 class="widget-title">Populer Post</h3>
            <div class="ts-overlay-style">
                <div class="item">
                    <div class="ts-post-thumb">
                        <a href="#">
                        <img class="img-fluid" src="{{ asset('public/frontend/images/news/tech/tech3.jpg')}}" alt="">
                        </a>
                    </div>
                    <div class="overlay-post-content">
                        <div class="post-content">
                            <h3 class="post-title">
                                <a href="#">Tourism in Dubai is boom international tourist</a>
                            </h3>
                            <ul class="post-meta-info">
                                <li>
                                    <i class="fa fa-clock-o"></i>
                                    March 21, 2019
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ts-overlay-style  end-->
            <div class="post-content media">
                <img class="d-flex sidebar-img" src="{{ asset('public/frontend/images/news/sports/sports2.jpg')}}" alt="">
                <div class="media-body align-self-center">
                    <h4 class="post-title">
                        <a href="#">Hands on with the Apple Watch Series 4 </a>
                    </h4>
                </div>
            </div>
            <!-- post content end-->
            <div class="post-content media">
                <img class="d-flex sidebar-img" src="{{ asset('public/frontend/images/news/tech/tech2.jpg')}}" alt="">
                <div class="media-body align-self-center">
                    <h4 class="post-title">
                        <a href="#">18 month shoots himself by gun </a>
                    </h4>
                </div>
            </div>
            <!-- post content end-->
        </div> --}}
                    
        {{-- <div class="widgets widgets-item">
            <div class="ts-widget-newsletter">
                <div class="newsletter-introtext">
                    <h4>Newsletter</h4>
                    <p>Subscribe to get the best stories into your inbox!</p>
                </div>
                <div class="newsletter-form">
                    <form action="#" method="post">
                        <div class="form-group">
                            <input type="email" name="email" id="newsletter-form-email" class="form-control form-control-lg" placeholder="E-mail" autocomplete="off">
                            <button class="btn btn-primary">Subscribe</button>
                        </div>
                    </form>
                </div>
            </div>
        </div> --}}
    </div>
</div>