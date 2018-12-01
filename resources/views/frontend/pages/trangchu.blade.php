@extends('frontend.master')
@section('title','Trang Chủ')
@section('content')
<!-- blog post wrapper start -->
<section class="block-wrapper mt-15">
    <div class="container">
        @include('frontend.blocks.quangcao')
        <div class="row">
            <div class="col-lg-7">
                <div id="featured-slider" class="owl-carousel ts-overlay-style ts-featured">
                    @foreach($randdombanner as $item)
                    <div class="item" style="background-image:url('{!! $item->image !!}')">
                        <a class="post-cat ts-orange-bg" href="{{ route('theloai',['slug' => $item->cslug]) }}" style="margin-left: 0px;">{!! $item->name !!}</a>
                        <div class="overlay-post-content">
                            <div class="post-content">
                                <h2 class="post-title lg">
                                    <a href="{{ route('chitiet',['slug' => $item->pslug]) }}">{!! $item->title !!}</a>
                                </h2>
                                <ul class="post-meta-info">                            
                                    <li class="author">
                                        <i class="fa fa-user"></i>
                                         {!! $item->author !!} &nbsp;
                                    </li>
                                    <li>
                                        <i class="fa fa-clock-o"></i>
                                        {{ date('d/m/Y',strtotime($item->created_at)) }}
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        <!--/ Featured post end -->
                    </div>
                    @endforeach
                </div>
            </div>
            
            <!-- col end-->
            <div class="col-lg-5">
                <div class="post-list-item blue-dark">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation">
                            <a class="active" href="#home" aria-controls="home" role="tab" data-toggle="tab" style="font-family: Arial;font-weight: bold;font-size: 15px;">
                            <i class="fa fa-clock-o"></i>
                            Tin Tức Mới Nhất
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab" style="font-family: Arial;font-weight: bold;font-size: 15px;">
                            <i class="fa fa-heart"></i>
                            Tin Tức Nổi Bật
                            </a>
                        </li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active ts-grid-box post-tab-list" id="home">
                            @php
                                unset($tinmoinhat[0]);
                            @endphp
                            @foreach($tinmoinhat as $item)
                            <div class="post-content media">
                                <img class="d-flex sidebar-img" src="{{ $item->image }}" alt="">
                                <div class="media-body">
                                    <span class="post-tag">
                                    <a href="{{ route('theloai',['slug' => $item->cslug]) }}" class="blue-dark-color"> {!! $item->name !!}</a>
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
                            @foreach($tinnoibatbanner as $item)
                            <div class="post-content media">
                                <img class="d-flex sidebar-img" src="{{ $item->image }}" alt="">
                                <div class="media-body">
                                    <span class="post-tag">
                                    <a href="{{ route('theloai',['slug' => $item->cslug]) }}" class="blue-dark-color"> {!! $item->name !!}</a>
                                    </span>
                                    <h4 class="post-title">
                                        <a href="{{ route('chitiet',['slug' => $item->pslug]) }}">{!! $item->title !!} </a>
                                    </h4>
                                </div>
                            </div>
                            @endforeach
                        </div>
                        <!--ts-grid-box end -->
                    </div>
                    <!-- tab content end-->
                </div>
            </div>
            <!--col end-->
        </div>
    </div>
</section>

<!-- block wrapper end -->
<!-- block wrapper start -->
<section class="block-wrapper mb-20">
    <div class="container">
        <div class="ts-grid-box mb-30">
                    <h2 class="ts-title" style="font-weight: bold;font-size:20px;">Tin Tức Nổi Bật</h2>
                    <div class="most-populers owl-carousel">
                        @foreach($tinnoibat as $item)
                        <div class="item">
                            <a class="post-cat ts-yellow-bg" href="{{ route('theloai',['slug' => $item->cslug]) }}">{!! $item->name !!}</a>
                            <div class="ts-post-thumb">
                                <a href="{{ route('chitiet',['slug' => $item->pslug]) }}">
                                <img class="img-fluid" src="{{ $item->image}}" alt="">
                                </a>
                            </div>
                            <div class="post-content">
                                <h3 class="post-title">
                                    <a href="{{ route('chitiet',['slug' => $item->pslug]) }}">{!! $item->title !!}</a>
                                </h3>
                                <span class="post-date-info">
                                <i class="fa fa-user"></i>
                                {!! $item->author !!} &nbsp;
                                <i class="fa fa-clock-o"></i>
                                {{ date('d/m/Y',strtotime($item->created_at)) }}
                                </span>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <!-- most-populers end-->
                </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="ts-grid-style-2">
                   {{--  <div class="ts-grid-box clearfix ts-category-title">
                        <h2 class="ts-title float-left">Corporate</h2>
                        <a href="#" class="view-all-link float-right">View All</a>
                    </div> --}}
                    
                    <!-- row end-->
                    <div class="row" id="trangchu">
                 
                        @foreach($trangchu as $item)
                        <div class="col-lg-4" style="padding-bottom: 25px;">
                            <div class="ts-grid-box ts-grid-content ts-grid-content-1">
                                <div class="item">
                                    <div class="ts-post-thumb">
                                        <a href="{{ route('chitiet',['slug' => $item->pslug]) }}">
                                        <img class="img-fluid" src="{{ $item->image}}" alt="">
                                        </a>
                                    </div>
                                    <div class="post-content">
                                        <a class="post-cat" href="{{ route('theloai',['slug' => $item->cslug]) }}">{!! $item->name !!}</a>
                                        <h3 class="post-title" style="height: 56px;">
                                            <a href="{{ route('chitiet',['slug' => $item->pslug]) }}">{!! $item->title !!}
                                            </a>
                                        </h3>
                                        <span class="post-date-info">
                                        <i class="fa fa-user"></i>
                                        {!! $item->author !!} &nbsp;
                                        <i class="fa fa-clock-o"></i>
                                        {{ date('d/m/Y',strtotime($item->created_at)) }}
                                        </span>
                                    </div>
                                </div>
                                <!-- item end-->
                            </div>                  
                        </div>
                        @endforeach

                    </div>
                    <br>
                    <div style="text-align: center;">
                        
                    </div>
                    <nav style="text-align: center;">
                        <div class="row paging nav">
                            <div class="to-top"><a href="#" rel="noopener" class="top"><span class="fa fa-long-arrow-up"></span> Back to top </a></div>
                            <div class="col-xs-12 load"><a href="javascript:void(0)" onclick="loadMoreData()" data-page="2" rel="noopener" data-text="Load more articles" data-load="Loading" class="load load-more-link"><i class="fa fa-repeat"></i> Load more articles </a></div>
                        </div>
                    </nav>
                </div>
            </div>
           
        </div>
        <!-- row end-->
    </div>
    <!-- container end-->
</section>

{{-- <section class="block-wrapper p-30 ts-white-bg">
    <div class="container">
        <div class="ts-title-item title-item-1">
            <h2 class="ts-title">
                Watch Now
            </h2>
        </div>
        <!-- title item end-->
        <div class="row ts-overlay-item ts-grid-style-2">
            <div class="col-lg-4">
                <div class="ts-overlay-style">
                    <div class="item">
                        <div class="ts-post-thumb">
                            <a href="#">
                            <img class="img-fluid" src="{{ asset('public/frontend/images/news/business/business_3.jpg')}}" alt="">
                            </a>
                            <a href="https://www.youtube.com/watch?v=uZmz6fGRVW4" class="ts-video-icon">
                            <i class="fa fa-play-circle-o "></i>
                            </a>
                        </div>
                        <div class="overlay-post-content">
                            <div class="post-content">
                                <a class="post-cat" href="#">Money</a>
                                <h3 class="post-title">
                                    <a href="#">How to get the most when selling your old  most when selling your iPhone</a>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <!-- end item-->
                </div>
                <!-- ts overlay style end-->
            </div>
            <!-- col end-->
            <div class="col-lg-4">
                <div class="ts-overlay-style">
                    <div class="item">
                        <div class="ts-post-thumb">
                            <a href="#">
                            <img class="img-fluid" src="{{ asset('public/frontend/images/news/business/business_4.jpg')}}" alt="">
                            </a>
                            <a href="https://www.youtube.com/watch?v=uZmz6fGRVW4" class="ts-video-icon">
                            <i class="fa fa-play-circle-o "></i>
                            </a>
                        </div>
                        <div class="overlay-post-content">
                            <div class="post-content">
                                <a class="post-cat" href="#">Gold</a>
                                <h3 class="post-title">
                                    <a href="#">Tourism in Dubai is booming international tourist most visited place</a>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <!-- end item-->
                </div>
                <!-- ts overlay style end-->
            </div>
            <!-- col end-->
            <div class="col-lg-4">
                <div class="ts-overlay-style">
                    <div class="item">
                        <div class="ts-post-thumb">
                            <a href="#">
                            <img class="img-fluid" src="{{ asset('public/frontend/images/news/business/business_2.jpg')}}" alt="">
                            </a>
                            <a href="https://www.youtube.com/watch?v=uZmz6fGRVW4" class="ts-video-icon">
                            <i class="fa fa-play-circle-o "></i>
                            </a>
                        </div>
                        <div class="overlay-post-content">
                            <div class="post-content">
                                <a class="post-cat" href="#">Market</a>
                                <h3 class="post-title">
                                    <a href="#">How to get the most when selling your old most when selling your iPhone</a>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <!-- end item-->
                </div>
                <!-- ts overlay style end-->
            </div>
            <!-- col end-->
        </div>
        <!-- row end-->
    </div>
    <!-- container end-->
</section>

<section class="block-wrapper p-30">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="banner-img text-center mb-30">
                    <a href="index.html">
                    <img src="{{ asset('public/frontend/images/banner/banner4.png')}}" alt="">
                    </a>
                </div>
            </div>
        </div>
        <!-- row end-->
        <div class="row">
            <div class="col-lg-3">
                <div class="ts-grid-box ts-grid-content ts-list-post-box ts-grid-content-1">
                    <div class="item">
                        <div class="ts-post-thumb">
                            <a href="#">
                            <img class="img-fluid" src="{{ asset('public/frontend/images/news/business/business_2.jpg')}}" alt="">
                            </a>
                        </div>
                        <div class="post-content">
                            <a class="post-cat" href="#">Market</a>
                            <h3 class="post-title">
                                <a href="#">How to get the most when selling your old iPhone</a>
                            </h3>
                            <span class="post-date-info">
                            <i class="fa fa-clock-o"></i>
                            March 21, 2019
                            </span>
                        </div>
                    </div>
                    <!-- end item-->
                    <div class="item">
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
                    <!-- end item-->
                    <div class="item">
                        <div class="post-content">
                            <h3 class="post-title">
                                <a href="#">Google vote-shifting threatens both right & left</a>
                            </h3>
                            <span class="post-date-info">
                            <i class="fa fa-clock-o"></i>
                            March 21, 2019
                            </span>
                        </div>
                    </div>
                    <!-- end item-->
                </div>
            </div>
            <div class="col-lg-3">
                <div class="ts-grid-box ts-grid-content ts-list-post-box ts-grid-content-1">
                    <div class="item">
                        <div class="ts-post-thumb">
                            <a href="#">
                            <img class="img-fluid" src="{{ asset('public/frontend/images/news/business/business_3.jpg')}}" alt="">
                            </a>
                        </div>
                        <div class="post-content">
                            <a class="post-cat" href="#">Money</a>
                            <h3 class="post-title">
                                <a href="#">Google vote-shifting threatens both right & left</a>
                            </h3>
                            <span class="post-date-info">
                            <i class="fa fa-clock-o"></i>
                            March 21, 2019
                            </span>
                        </div>
                    </div>
                    <!-- end item-->
                    <div class="item">
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
                    <!-- end item-->
                    <div class="item">
                        <div class="post-content">
                            <h3 class="post-title">
                                <a href="#">Apple introduces larger Apple Watch</a>
                            </h3>
                            <span class="post-date-info">
                            <i class="fa fa-clock-o"></i>
                            March 21, 2019
                            </span>
                        </div>
                    </div>
                    <!-- end item-->
                </div>
            </div>
            <div class="col-lg-3">
                <div class="ts-grid-box ts-grid-content ts-list-post-box ts-grid-content-1">
                    <div class="item">
                        <div class="ts-post-thumb">
                            <a href="#">
                            <img class="img-fluid" src="{{ asset('public/frontend/images/news/business/business_1.jpg')}}" alt="">
                            </a>
                        </div>
                        <div class="post-content">
                            <a class="post-cat" href="#">Market</a>
                            <h3 class="post-title">
                                <a href="#">Tourism in Dubai is booming by international tourist</a>
                            </h3>
                            <span class="post-date-info">
                            <i class="fa fa-clock-o"></i>
                            March 21, 2019
                            </span>
                        </div>
                    </div>
                    <!-- end item-->
                    <div class="item">
                        <div class="post-content">
                            <h3 class="post-title">
                                <a href="#">Apple introduces larger Apple Watch</a>
                            </h3>
                            <span class="post-date-info">
                            <i class="fa fa-clock-o"></i>
                            March 21, 2019
                            </span>
                        </div>
                    </div>
                    <!-- end item-->
                    <div class="item">
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
                    <!-- end item-->
                </div>
            </div>
            <div class="col-lg-3">
                <div class="ts-grid-box ts-grid-content ts-list-post-box ts-grid-content-1">
                    <div class="item">
                        <div class="ts-post-thumb">
                            <a href="#">
                            <img class="img-fluid" src="{{ asset('public/frontend/images/news/business/business_5.jpg')}}" alt="">
                            </a>
                        </div>
                        <div class="post-content">
                            <a class="post-cat" href="#">Business</a>
                            <h3 class="post-title">
                                <a href="#">Apple introduces larger Apple Watch</a>
                            </h3>
                            <span class="post-date-info">
                            <i class="fa fa-clock-o"></i>
                            March 21, 2019
                            </span>
                        </div>
                    </div>
                    <!-- end item-->
                    <div class="item">
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
                    <!-- end item-->
                    <div class="item">
                        <div class="post-content">
                            <h3 class="post-title">
                                <a href="#">Apple introduces larger Apple Watch</a>
                            </h3>
                            <span class="post-date-info">
                            <i class="fa fa-clock-o"></i>
                            March 21, 2019
                            </span>
                        </div>
                    </div>
                    <!-- end item-->
                </div>
            </div>
        </div>
    </div>
</section> --}}

<script type="text/javascript">

function loadMoreData(){
    var pageNumber = $('.load-more-link').attr('data-page');
    $.ajax({
        type : 'GET',
        url: "/ajax?page=" + pageNumber,
        success : function(data){
            
            if(data.length == 0){

            }else{
                $('.load-more-link').attr('data-page', parseInt(pageNumber) + 1);
                $('#trangchu').append(data);

            }
        },error: function(data){

        },
    })  
}
    
</script>

@endsection
