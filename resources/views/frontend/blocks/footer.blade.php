<footer class="ts-footer ts-footer-4">
    <div class="container">
        <div class="row footer-top">
            <div class="col-md-4">
                <div class="footer-logo">
                    <a href="#">
                    <img src="{{ asset('public/frontend/images/logo/business_logo.png')}}" alt="">
                    </a>
                </div>
            </div>
                
                <div class="col-md-4" >
                    {{-- <form action="#" method="post" accept-charset="utf-8">
                    {{ csrf_field()}}
                    @include('frontend.blocks.message') --}}
                        <div id="bbc"></div>
                        <div class="footer-logo" style="display: none;">
                           {{-- <input type="text" name="txtEmail" value="{{ old('txtEmail') }}" placeholder="Email"> --}}
                           {{-- <input name="emailgtv" type="text" class="txt-contact notNull"  id="email" placeholder=" Email*" value="{{ old('txtEmail') }}" style="height: 37px;
    margin-top: 0px;"/> --}}
                            <input type="text" name="emailgtv" id="feedback-email" placeholder="Email*" value="{{ old('emailgtv') }}" style="height: 37px;
                            margin-top: 0px;">
                           <button type="submit" class="btn btn-primary" id="buttonRegister" style="padding:7px 22px;background: #337ab7" >Gửi</button>
                        </div>
                    {{-- </form> --}}
                </div>
            
            <!-- col end-->
            <div class="col-md-4 align-self-center">
                <ul class="footer-social-list text-right">
                    <li class="ts-facebook">
                        <a href="#">
                        <i class="fa fa-facebook"></i>
                        </a>
                    </li>
                    <li class="ts-google-plus">
                        <a href="#">
                        <i class="fa fa-google-plus"></i>
                        </a>
                    </li>
                    <li class="ts-twitter">
                        <a href="#">
                        <i class="fa fa-twitter"></i>
                        </a>
                    </li>
                    <li class="ts-youtube">
                        <a href="#">
                        <i class="fa fa-youtube-play"></i>
                        </a>
                    </li>
                    <li class="ts-linkedin">
                        <a href="#">
                        <i class="fa fa-linkedin"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- col end-->
        </div>
        <!-- row end-->
        <div class="border-top mb-60"></div>
        @php
            $data = DB::table('category')->select('id','name','slug','status','parent_id','slug')->where('parent_id',0)->where('status','on')->get();
        @endphp
        <div class="row">
            @foreach($data as $item)
            @php
                $data1 = DB::table('category')->select('id','name','slug','parent_id','status')->where('status','on')->where('parent_id',$item->id)->get();
            @endphp
            
            <div class="col-lg-2 col-md-6" style="margin-bottom: 20px;margin-right: 35px;">
                
                <div class="footer-widget">
                    <h4 class="widget-title">{!! $item->name !!}</h4>
                    <ul>
                        @foreach($data1 as $item1)
                        <li>
                            <a href="{{ route('theloai',['slug' => $item1->slug]) }}">{!! $item1->name !!}</a>
                        </li>
                        @endforeach
                    </ul>
                </div>
                
                <!-- footer widget end-->
            </div>

            @endforeach

        </div>

    </div>
    <!-- container end-->
</footer>

<section class="copyright-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="copyright-text">
                    <p>© 2018,
                        <a href="#">VINBUSINESS</a>. All rights reserved</p>
                </div>
            </div>
            {{-- <div class="col-md-6">
                <div class="footer-menu text-right">
                    <ul>
                        <li>
                            <a href="#">Blog</a>
                        </li>
                        <li>
                            <a href="#">Forums</a>
                        </li>
                        <li>
                            <a href="#">Contact</a>
                        </li>
                        <li>
                            <a href="#">Advertisement</a>
                        </li>
                    </ul>
                </div>
            </div> --}}
        </div>
    </div>
</section>