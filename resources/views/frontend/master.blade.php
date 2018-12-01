<!doctype html>
<html lang="en">
    <head>
        <!-- Basic Page Needs =====================================-->
        <meta charset="utf-8">
        <!-- Mobile Specific Metas ================================-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Site Title- -->
        <title>Coindex</title>
        <!-- CSS
            ==================================================== -->
        <!-- Bootstrap -->
        <link rel="stylesheet" href="{{ asset('public/frontend/css/bootstrap.min.css')}}">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="{{ asset('public/frontend/css/font-awesome.min.css')}}">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="{{ asset('public/frontend/css/animate.css')}}">
        <!-- IcoFonts -->
        <link rel="stylesheet" href="{{ asset('public/frontend/css/icofonts.css')}}">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="{{ asset('public/frontend/css/owlcarousel.min.css')}}">
        <!-- slick -->
        <link rel="stylesheet" href="{{ asset('public/frontend/css/slick.css')}}">
        <!-- navigation -->
        <link rel="stylesheet" href="{{ asset('public/frontend/css/navigation.css')}}">
        <!-- magnific popup -->
        <link rel="stylesheet" href="{{ asset('public/frontend/css/magnific-popup.css')}}">
        <!-- Style -->
        <link rel="stylesheet" href="{{ asset('public/frontend/css/style.css')}}">
        <link rel="stylesheet" href="{{ asset('public/frontend/css/colors/color-8.css')}}">
        <!-- Responsive -->
        <link rel="stylesheet" href="{{ asset('public/frontend/css/responsive.css')}}">
        <!-- HTML5 shim and Respond.js')}} IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js')}} doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js')}}"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js')}}"></script>
        <![endif]-->

        <!-- initialize jQuery Library -->
        <script src="{{ asset('public/frontend/js/jquery.min.js')}}"></script>
    </head>
    <body class="body-color">
        {{-- <section class="top-bar bg-blue-dark">
            <div class="container">
                <div class="row">
                    <div class="col-md-6  align-self-center">
                        <div class="ts-date xs-center">
                            <i class="fa fa-clock-o"></i>
                            Sunday, August 24
                        </div>
                    </div>
                    <!-- end col-->
                    <div class="col-md-6 text-right align-self-center">
                        <ul class="ts-top-nav">
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
                    <!--end col -->
                </div>
                <!-- end row -->
            </div>
        </section> --}}
        <!-- ad banner start -->
        @include('frontend.blocks.banner')
        <!-- ad banner end -->
        <!-- header nav start-->
        @include('frontend.blocks.header')
        <!-- header nav end-->
        @yield('content')
        <!-- footer start -->
        @include('frontend.blocks.footer')
        <!-- footer end -->
        
        <!-- javaScript Files
            =============================================================================-->
        
        <!-- navigation JS -->
        <script src="{{ asset('public/frontend/js/navigation.js')}}"></script>
        <!-- Popper JS -->
        <script src="{{ asset('public/frontend/js/popper.min.js')}}"></script>
        <!-- magnific popup JS -->
        <script src="{{ asset('public/frontend/js/jquery.magnific-popup.min.js')}}"></script>
        <!-- Bootstrap jQuery -->
        <script src="{{ asset('public/frontend/js/bootstrap.min.js')}}"></script>
        <!-- slick -->
        <script src="{{ asset('public/frontend/js/slick.min.js')}}"></script>
        <!-- Owl Carousel -->
        <script src="{{ asset('public/frontend/js/owl-carousel.2.3.0.min.js')}}"></script>
        <!-- smooth scroling -->
        <script src="{{ asset('public/frontend/js/smoothscroll.js')}}"></script>
        <script src="{{ asset('public/frontend/js/main.js')}}"></script>
        <script type="text/javascript">

   function isEmail(email) {
       var isValid = false;
       var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
       if(regex.test(email)) {
           isValid = true;
       }
       return isValid;
   }
</script>



{{-- <script type="text/javascript">

$(document).ready(function() {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
     $('#buttonRegister').click(function(){

     var email1 = $('input[name="emailgtv"]').val();

     $.ajax({
           type: "POST",
           url: 'http://coindex.vn',
           headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
           data: {emailgtv: email1},
           success: function( success ) {
             
             var msg = jQuery.parseJSON(JSON.stringify(success));
             $('#bbc').show();
             $('#bbc').html(msg.success);
             if(msg.check) {
               setTimeout(function(){
                    window.location.reload(1);                 
                 }, 2000);
             }
             
         },error: function(emailgtv) {             
            if(email1.length === 0) {
               var msg = emailgtv.responseJSON.emailgtv[0];
             }
             else if(!isEmail(email1)) {
               var msg = emailgtv.responseJSON.emailgtv[0]; 
             }

             $('#bbc').show();
             $('#bbc').html(msg);
         }       
       });
    });
});
</script> --}}

    </body>
</html>