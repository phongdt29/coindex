@extends('frontend.master')
@section('title','Thể Loại')
@section('content')
<!-- block post area start-->
<section class="block-wrapper mt-15">
    <div class="container">
        @include('frontend.blocks.quangcao')
        <div class="row mb-30">
            <div class="col-lg-12">
                <div class="">
                    <ol class="ts-breadcrumb">
                        <li>
                            <a href="{{ route('trangchu') }}">
                            <i class="fa fa-home"></i>
                            Trang Chủ
                            </a>
                        </li>

                        {{-- <li>
                            {{ $data->name }}
                        </li> --}}
                    </ol>
                    {{-- <div class="ts-grid-box clearfix ts-category-title">
                        <h2 class="ts-title float-left">Corporate</h2>
                        <a href="#" class="view-all-link float-right">View All</a>
                    </div> --}}
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-9">
                <div>
                  <h2>Tìm Thấy <strong style="color: red;font-weight: bold;font-size: 35px;">{{ $tagsss->total()}}</strong> kết quả</h2>
                </div>
                <br>
                
                <div class="post-list">
                    <!-- ts title end-->
                    @foreach($tagsss as $item)
                    <div class="row mb-10">
                        <div class="col-md-4">
                            <div class="ts-post-thumb">
                                <a href="#" class="post-cat ts-purple-bg">{{ $item->name }}</a>
                                <a href="{{ route('chitiet',['slug' => $item->pslug]) }}">
                                <img class="img-fluid" src="{{ $item->image}}" alt="">
                                </a>
                            </div>
                        </div>
                        <!-- col lg end-->
                        <div class="col-md-8">
                            <div class="post-content">
                                <h3 class="post-title md">
                                    <a href="{{ route('chitiet',['slug' => $item->pslug]) }}">{!! $item->title !!}</a>
                                </h3>
                                <ul class="post-meta-info">
                                    <li>
                                        <i class="fa fa-user"></i>
                                         <a href="#"> {!! $item->author !!}</a>
                                    </li>
                                    <li>
                                        <i class="fa fa-clock-o"></i>
                                        {{ date('d/m/Y',strtotime($item->created_at)) }}
                                    </li>
                                </ul>
                                <p>
                                    {!! strip_tags($item->intro) !!}
                                </p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    <!-- row end-->

                    <div >
                        {{ $tagsss->links() }}
                    </div>
                    
                    {{-- <div class="ts-pagination text-center mt-15 md-mb-30">
                        <ul class="pagination">
                            <li>
                                <a href="#">
                                <i class="fa fa-angle-double-left"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                <i class="fa fa-angle-left"></i>
                                </a>
                            </li>
                            <li class="active">
                                <a href="#">1</a>
                            </li>
                            <li>
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">
                                <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                <i class="fa fa-angle-double-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div> --}}
                </div>
            </div>
            @include('frontend.blocks.right-news')
        </div>
        <!-- row end-->
    </div>
    <!-- container end-->
</section>
<br>
<!-- block area end-->
<!-- newslater start -->
{{-- <section class="ts-newslatter">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="ts-newslatter-content">
                    <h2>
                        Sign up for the Newsletter
                    </h2>
                    <p>
                        Join our newsletter and get updates in your inbox. We won’t spam you and we respect your privacy.
                    </p>
                </div>
            </div>
            <!-- col end-->
            <div class="col-lg-6 align-self-center">
                <div class="newsletter-form">
                    <form action="#" method="post" class="media align-items-end">
                        <div class="email-form-group media-body">
                            <i class="fa fa-paper-plane" aria-hidden="true"></i>
                            <input type="email" name="email" id="newsletter-form-email" class="form-control" placeholder="Enter Your Email" autocomplete="off"
                                required>
                        </div>
                        <div class="d-flex ts-submit-btn">
                            <button class="btn btn-primary">Subscribe</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section> --}}
<!-- newslater end -->
@endsection