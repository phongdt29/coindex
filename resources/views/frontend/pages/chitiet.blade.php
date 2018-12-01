@extends('frontend.master')
@section('title','Chi Tiết')
@section('content')
<!-- single post start -->
<section class="single-post-wrapper post-layout-1">
    <div class="container">
    	@include('frontend.blocks.quangcao')
        <div class="row">
            <div class="col-lg-8">
                <div class="ts-grid-box content-wrapper single-post">

                    <div class="entry-header">
                        {{-- <div class="category-name-list">
                            <span>
                            <a href="#" class="post-cat ts-green-bg">Sports</a>
                            <a href="#" class="post-cat ts-yellow-bg">Travel</a>
                            </span>
                        </div> --}}
                        <h2 class="post-title lg">{!! $chitiettin->title !!}</h2>
                        <ul class="post-meta-info">
                            {{-- <li class="author">
                                <a href="#">
                                <img src="{{ asset('public/frontend/images/avater/author.png')}}" alt=""> Donald Ramos
                                </a>
                            </li> --}}
                            <li>
                                
                                <i class="fa fa-clock-o"></i>
                                <a href="#">March 21, 2019</a>
                                
                            </li>
                            <li>
                                
                                 <i class="fa fa-user"></i>
                                 <a href="#"> {!! $chitiettin->author !!}</a>
                                
                            </li>
                            
                            
                        </ul>
                    </div>
                    <!-- single post header end-->
                    <div class="post-content-area">
                        <div class="entry-content">
                            <p>
                                {!! $chitiettin->content !!}
                            </p>
                        </div>               
                    </div>

                    <div class="ts-grid-box widgets tag-list">
					    <h3 class="widget-title">Tags</h3>
                        @php
                            $tags = explode(",",$chitiettin->meta_keywords_tag); 
                        @endphp
					    <ul>
                            @if(count($tags) >= 1)
                                @foreach($tags as $item)
						        <li>
						            <a href="abc/Tags/{{ str_slug(($item),'-') . '.html' }}">{!! $item !!}</a>
						        </li>
						        @endforeach
                            @endif
					    </ul>
					</div>

                    <div style="width: 100%">
                        <div id="fb-root"></div>
                        <script>(function(d, s, id) {
                          var js, fjs = d.getElementsByTagName(s)[0];
                          if (d.getElementById(id)) return;
                          js = d.createElement(s); js.id = id;
                          js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.1';
                          fjs.parentNode.insertBefore(js, fjs);
                        }(document, 'script', 'facebook-jssdk'));
                        </script>
                        <div class="fb-comments" id="pill" data-href="{{ url()->current() }}" data-numposts="5" ></div>   
                    </div>


                </div>
                <!--single post end -->
                {{-- <div class="comments-form ts-grid-box">
                    <h3 class="comment-reply-title">Add Comment</h3>
                    <form role="form" class="ts-form">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control" name="name" id="name" placeholder="Your Name" type="text" required="">
                                </div>
                                <!-- form group end-->
                                <div class="form-group">
                                    <input class="form-control" name="email" id="email" placeholder="Your Email" type="email" required="">
                                </div>
                                <!-- form group end-->
                                <div class="form-group">
                                    <input class="form-control" placeholder="Your Website" type="text" required="">
                                </div>
                                <!-- form group end-->
                            </div>
                            <!-- Col end -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control msg-box" id="message" placeholder="Your Comment" rows="10" required=""></textarea>
                                </div>
                            </div>
                            <!-- Col end -->
                            <div class="col-md-12">
                                <p class="comment-form-cookies-consent">
                                    <input id="wp-comment-cookies-consent" name="wp-comment-cookies-consent" type="checkbox" value="yes">
                                    <label for="wp-comment-cookies-consent">Save my name, email, and website in this browser for the next time I comment.</label>
                                </p>
                            </div>
                        </div>
                        <!-- Form row end -->
                        <div class="clearfix">
                            <button class="comments-btn btn btn-primary" type="submit">Post Comment</button>
                        </div>
                    </form>
                    <!-- Form end -->
                </div> --}}
                <!-- comment form end-->
                {{-- <div class="ts-grid-box mb-30">
                    <h2 class="ts-title">Most Popular</h2>
                    <div class="most-populers owl-carousel">
                        <div class="item">
                            <a class="post-cat ts-yellow-bg" href="#">Travel</a>
                            <div class="ts-post-thumb">
                                <a href="#">
                                <img class="img-fluid" src="{{ asset('public/frontend/images/news/travel/travel2.jpg')}}" alt="">
                                </a>
                            </div>
                            <div class="post-content">
                                <h3 class="post-title">
                                    <a href="#">Tourism in Dubai is booming by international tourist</a>
                                </h3>
                                <span class="post-date-info">
                                <i class="fa fa-clock-o"></i>
                                March 21, 2019
                                </span>
                            </div>
                        </div>
                        <!-- ts-grid-box end-->
                        <div class="item">
                            <a class="post-cat ts-blue-light-bg" href="#">Technology</a>
                            <div class="ts-post-thumb">
                                <a href="#">
                                <img class="img-fluid" src="{{ asset('public/frontend/images/news/tech/tech1.jpg')}}" alt="">
                                </a>
                            </div>
                            <div class="post-content">
                                <h3 class="post-title">
                                    <a href="#">Want to be more productive? Try skipping the schedule</a>
                                </h3>
                                <span class="post-date-info">
                                <i class="fa fa-clock-o"></i>
                                March 21, 2019
                                </span>
                            </div>
                        </div>
                        <!-- ts-grid-box end-->
                        <div class="item">
                            <a class="post-cat ts-pink-bg" href="#">Fashion</a>
                            <div class="ts-post-thumb">
                                <a href="#">
                                <img class="img-fluid" src="{{ asset('public/frontend/images/news/fashion/fashion1.jpg')}}" alt="">
                                </a>
                            </div>
                            <div class="post-content">
                                <h3 class="post-title">
                                    <a href="#">Tourism in Dubai is booming by international tourist</a>
                                </h3>
                                <span class="post-date-info">
                                <i class="fa fa-clock-o"></i>
                                March 21, 2019
                                </span>
                            </div>
                        </div>
                        <!-- ts-grid-box end-->
                        <div class="item">
                            <a class="post-cat ts-pink-bg" href="#">Music</a>
                            <div class="ts-post-thumb">
                                <a href="#">
                                <img class="img-fluid" src="{{ asset('public/frontend/images/news/music/music2.jpg')}}" alt="">
                                </a>
                            </div>
                            <div class="post-content">
                                <h3 class="post-title">
                                    <a href="#">Want to be more productive? Try skipping the schedule</a>
                                </h3>
                                <span class="post-date-info">
                                <i class="fa fa-clock-o"></i>
                                March 21, 2019
                                </span>
                            </div>
                        </div>
                        <!-- ts-grid-box end-->
                        <div class="item">
                            <a class="post-cat ts-pink-bg" href="#">Fashion</a>
                            <div class="ts-post-thumb">
                                <a href="#">
                                <img class="img-fluid" src="{{ asset('public/frontend/images/news/fashion/fashion2.jpg')}}" alt="">
                                </a>
                            </div>
                            <div class="post-content">
                                <h3 class="post-title">
                                    <a href="#">Tourism in Dubai is booming by international tourist</a>
                                </h3>
                                <span class="post-date-info">
                                <i class="fa fa-clock-o"></i>
                                March 21, 2019
                                </span>
                            </div>
                        </div>
                        <!-- ts-grid-box end-->
                    </div>
                    <!-- most-populers end-->
                </div> --}}
            </div>
            <!-- col end -->
            @include('frontend.blocks.right-news')
            <!-- right sidebar end-->
            <!-- col end-->
        </div>
        <!-- row end-->
    </div>
    <!-- container-->
</section>
<!-- single post end-->
@endsection