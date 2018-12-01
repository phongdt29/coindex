<header class="header-box bg-blue">
    <div class="container">
        <div class="row">
            <!-- logo end-->
            <div class="col-lg-12">
                <nav class="navigation ts-main-menu navigation-landscape">
                    <div class="nav-header">
                        <!-- <a class="nav-brand mobile-logo visible-xs" href="index.html">
                            <img src="images/footer_logo.png" alt="">
                            </a> -->
                        <div class="nav-toggle"></div>
                    </div>
                    <!--nav brand end-->
                    <div class="nav-menus-wrapper clearfix">
                        <!--nav right menu start-->
                        <ul class="right-menu align-to-right">
                            <li class="header-search ">
                                <div class="nav-search boop">
                                    <div class="nav-search-button">
                                        <i class="icon icon-search"></i>
                                    </div>
                                    <form action="{{ route('Frontend.Timkiem') }}" method="post" accept-charset="utf-8" class="timkiemm" style="display: none;">
                                        {{ csrf_field()}}
                                        <input id="search" type="text" name="search" value="">
                                        <button type="submit" class="btn btn-primary" style="padding:7px 22px;background: #ffc200;">Search</button>
                                    </form>
                                    {{-- <form >
                                        <span class="nav-search-close-button" tabindex="0">✕</span>
                                        <div class="nav-search-inner">
                                            <input type="search" name="search" placeholder="Type and hit ENTER" >
                                        </div>
                                    </form> --}}
                                    
                                </div>

                            </li>
                        </ul>
                        <!--nav right menu end-->
                        <!-- nav menu start-->
                        @php
                            $data = DB::table('category')->select('id','name','slug','status','parent_id','slug')->where('parent_id',0)->where('status','on')->get();
                        @endphp
                        <ul class="nav-menu">
                            @foreach($data as $item)
                            @php
                                $data1 = DB::table('category')->select('id','name','slug','parent_id','status')->where('status','on')->where('parent_id',$item->id)->get();
                            @endphp
                            <li class="active">
                                <a href="{{ route('theloai',['slug' => $item->slug]) }}">{!! $item->name !!}</a>
                                <div class="megamenu-panel ts-mega-menu">
                                    <div class="megamenu-lists">
                                        @foreach($data1 as $item1)
                                        <ul class="megamenu-list list-col-2">
                                            <li>
                                                <a href="{{ route('theloai',['slug' => $item1->slug]) }}">{!! $item1->name !!}</a>
                                            </li>
                                        </ul>
                                         @endforeach
                                        {{-- <ul class="megamenu-list list-col-2">
                                            <li class="active">
                                                <a href="business.html">Home Business</a>
                                            </li>
                                            <li>
                                                <a href="technology.html">Home Technology</a>
                                            </li>
                                            <li>
                                                <a href="food.html">Home Food</a>
                                            </li>
                                            <li>
                                                <a href="crypto.html">Home Crypto</a>
                                            </li>
                                            <li>
                                                <a href="health.html">Home Health</a>
                                            </li>
                                            <li>
                                                <a href="travel.html">Home Travel</a>
                                            </li>
                                            <li>
                                                <a href="sports.html">Home Sports</a>
                                            </li>
                                            <li>
                                                <a href="personal-blog.html">Personal Blog</a>
                                            </li>
                                        </ul> --}}
                                    </div>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                        <!--nav menu end-->
                    </div>
                </nav>
                <!-- nav end-->
            </div>
        </div>
        
    </div>
</header>