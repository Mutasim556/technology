<!DOCTYPE html>
<html class="no-js" lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    @php
    use App\Http\Resources\Frontend\ParentCategoryresource;
    use App\Models\Admin\Partner\PartnerParentCategory;
    use App\Models\Admin\Product\ParentCategory;
    use App\Models\Admin\Solution\SolutionParentCategory;
    use App\Models\Admin\Support\SupportParentCategory;
    use App\Models\Admin\Settings\Logo;

    $parent_categories = ParentCategory::with('category')->where([['parent_category_status',1],['parent_category_delete',0]])->get();
    $solution_parent_categories = SolutionParentCategory::with('category')->where([['parent_category_status',1],['parent_category_delete',0]])->get();
    $support_parent_categories = SupportParentCategory::with('category')->where([['parent_category_status',1],['parent_category_delete',0]])->get();
    $partner_parent_categories = PartnerParentCategory::with('category')->where([['parent_category_status',1],['parent_category_delete',0]])->get();
    $logo_main = Logo::where([['status',1],['delete',0],['logo_type','front_main_logo']])->orderBy('id','DESC')->first();
    $logo_bottom = Logo::where([['status',1],['delete',0],['logo_type','front_bottom_logo']])->orderBy('id','DESC')->first();
    $icon = Logo::where([['status',1],['delete',0],['logo_type','front_logo_icon']])->orderBy('id','DESC')->first();
@endphp
<head>
    <meta charset="utf-8" />
    <title>Nexyos - @yield('title')</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta property="og:title" content="" />
    <meta property="og:type" content="" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('public/assets/imgs/theme/favicon.svg')}}" />
    <!-- Template CSS -->
    <link rel="stylesheet" href="{{ asset('public/assets/css/plugins/animate.min.css')}}" />
    <link rel="stylesheet" href="{{ asset('public/assets/css/main.css')}}" />
</head>

<body>
    <header class="header-area header-style-1 header-style-5 header-height-2 py-0">
        <div class="header-middle header-middle-ptb-1 d-none d-lg-block py-0">
            <div class="container px-4 py-0">
                <div class="row px-4" >
                    <div class="col-md-12 mx-auto">
                        <div class="row">
                            <div class="col-md-8 px-0" style="background:  #3BB77E;">
                                <div class="row px-0">
                                    <div class="col-md-3 text-center py-1 " style="color:black">
                                        <strong>Contact Details</strong>
                                    </div>
                                    <div class="col-md-9 py-1" style="background: #3BB77E;color:black">
                                        Email : nexyos@gmail.com ,
                                        Mobile : +8899001122334 , +8899001122335
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4" style="background: #f74b81;color:rgb(255, 253, 253)">
                                <marquee class="" behavior="" direction="up" height="24px;" scrollamount="1">Hikvision is committed to serving various industries through its cutting-edge technologies of machine perception, artificial intelligence, and big data, leading the future of AIoT: through comprehensive machine perception technologies, we aim to help people better connect with the world around them; with a wealth of intelligent products, we strive to identify and satisfy diverse demands by delivering intelligence at your fingertips; through innovative AIoT applications, we are dedicated to empowering every individual to enjoy a better future by building an intelligent world that is more convenient, efficient and secure.</marquee>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="header-bottom header-bottom-bg-color sticky-bar">
            <div class="container">
                <div class="header-wrap header-space-between position-relative">
                    <div class="logo logo-width-1 d-block d-lg-none">
                        <a href="{{ url('/') }}"><img src="{{ asset($logo_main?env('ASSET_DIRECTORY').'/'.$logo_main->logo:'') }}" alt="{{ $logo_main?$logo_main->logo_alt_text:'Nexyos' }}" /></a>
                    </div>
                    <div class="header-nav d-none d-lg-flex">
                        <div class="main-categori-wrap d-none d-lg-block">
                            <img height="55px" src="{{ asset($logo_main?env('ASSET_DIRECTORY').'/'.$logo_main->logo:'') }}" alt="{{ $logo_main?$logo_main->logo_alt_text:'Nexyos' }}" />
                        </div>
                        <div class="main-menu main-menu-padding-1 main-menu-lh-2 d-none d-lg-block font-heading">
                            @include('frontend.layouts.nav.menu_desktop')
                        </div>
                    </div>
                    <div class="hotline d-none d-lg-flex search-style-3 pt-2 " style="margin-left:20px;">
                        <form action="#">
                            <input type="text" placeholder="Search for items…" style="border:1px solid black"/>
                            <button type="submit"><i class="fi-rs-search"></i></button>
                        </form>
                    </div>
                    <div class="header-action-icon-2 d-block d-lg-none">
                        <div class="burger-icon burger-icon-white">
                            <span class="burger-icon-top"></span>
                            <span class="burger-icon-mid"></span>
                            <span class="burger-icon-bottom"></span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </header>
    <div class="mobile-header-active mobile-header-wrapper-style">
        <div class="mobile-header-wrapper-inner">
            <div class="mobile-header-top">

                <div class="mobile-header-logo">
                    <a href="index.html"><img src="{{ asset($logo_main?env('ASSET_DIRECTORY').'/'.$logo_main->logo:'') }}" alt="{{ $logo_main?$logo_main->logo_alt_text:'Nexyos' }}" /></a>
                </div>
                <div class="mobile-menu-close close-style-wrap close-style-position-inherit">
                    <button class="close-style search-close">
                        <i class="icon-top"></i>
                        <i class="icon-bottom"></i>
                    </button>
                </div>
            </div>
            <div class="mobile-header-content-area">
                <div class="mobile-search search-style-3 mobile-header-border">
                    <form action="#">
                        <input type="text" placeholder="Search for items…" />
                        <button type="submit"><i class="fi-rs-search"></i></button>
                    </form>
                </div>
                <div class="mobile-menu-wrap mobile-header-border">
                    <!-- mobile menu start -->
                    @include('frontend.layouts.nav.menu_mobile')
                    <!-- mobile menu end -->
                </div>
                <div class="mobile-header-info-wrap">
                    <div class="single-mobile-header-info">
                        <a href="page-contact.html"><i class="fi-rs-marker"></i> Our location </a>
                    </div>
                    <div class="single-mobile-header-info">
                        <a href="page-login.html"><i class="fi-rs-user"></i>Log In / Sign Up </a>
                    </div>
                    <div class="single-mobile-header-info">
                        <a href="#"><i class="fi-rs-headphones"></i>(+01) - 2345 - 6789 </a>
                    </div>
                </div>
                <div class="mobile-social-icon mb-50">
                    <h6 class="mb-15">Follow Us</h6>
                    <a href="#"><img src="{{ asset('public/assets/imgs/theme/icons/icon-facebook-white.svg') }}"
                            alt="" /></a>
                    <a href="#"><img src="{{ asset('public/assets/imgs/theme/icons/icon-twitter-white.svg') }}" alt="" /></a>
                    <a href="#"><img src="{{ asset('public/assets/imgs/theme/icons/icon-instagram-white.svg') }}"
                            alt="" /></a>
                    <a href="#"><img src="{{ asset('public/assets/imgs/theme/icons/icon-pinterest-white.svg') }}"
                            alt="" /></a>
                    <a href="#"><img src="{{ asset('public/assets/imgs/theme/icons/icon-youtube-white.svg') }}" alt="" /></a>
                </div>
                <div class="site-copyright">Copyright 2022 © Nest. All rights reserved. Powered by AliThemes.</div>
            </div>
        </div>
    </div>
    <!--End header-->
    @yield('body')
    <footer class="main">


        <section class="section-padding footer-mid">
            <div class="container pt-15 pb-20">
                <div class="row" style="border-top:1px solid #198754">
                    <div class="col">
                        <div class="widget-about font-md mb-md-3 mb-lg-3 mb-xl-0 wow animate__animated animate__fadeInUp"
                            data-wow-delay="0">
                            <div class="logo mb-30">
                                <a href="index.html" class="mb-15"><img src="{{ asset('public/assets/imgs/theme/logo.svg') }}"
                                        alt="logo" /></a>
                                <p class="font-lg text-heading">Awesome grocery store website template</p>
                            </div>
                            <ul class="contact-infor">
                                <li><img src="{{ asset('public/assets/imgs/theme/icons/icon-location.svg') }}"
                                        alt="" /><strong>Address: </strong> <span>5171 W Campbell Ave
                                        undefined Kent, Utah 53127 United States</span></li>
                                <li><img src="{{ asset('public/assets/imgs/theme/icons/icon-contact.svg') }}"
                                        alt="" /><strong>Call Us:</strong><span>(+91) - 540-025-124553</span>
                                </li>
                                <li><img src="{{ asset('public/assets/imgs/theme/icons/icon-email-2.svg') }}"
                                        alt="" /><strong>Email:</strong><span>sale@Nest.com</span></li>
                                <li><img src="{{ asset('public/assets/imgs/theme/icons/icon-clock.svg') }}"
                                        alt="" /><strong>Hours:</strong><span>10:00 - 18:00, Mon - Sat</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="footer-link-widget col wow animate__animated animate__fadeInUp"
                        data-wow-delay=".1s">
                        <h4 class=" widget-title">Company</h4>
                        <ul class="footer-list mb-sm-5 mb-md-0">
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Company Profile</a></li>
                            <li><a href="#">Investor Relations</a></li>
                            <li><a href="#">Cybersecurity</a></li>
                            <li><a href="#">Compliance</a></li>
                            <li><a href="#">Sustainability</a></li>
                            <li><a href="#">Focused on Quality</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="footer-link-widget col wow animate__animated animate__fadeInUp"
                        data-wow-delay=".2s">
                        <h4 class="widget-title">Newsroom</h4>
                        <ul class="footer-list mb-sm-5 mb-md-0">
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Latest News</a></li>
                            <li><a href="#">Success Stories</a></li>
                            <li><a href="#">Video Library</a></li>
                        </ul>
                    </div>
                    <div class="footer-link-widget col wow animate__animated animate__fadeInUp"
                        data-wow-delay=".3s">
                        <h4 class="widget-title">Events</h4>
                        <ul class="footer-list mb-sm-5 mb-md-0">
                            <li><a href="#">Event List</a></li>
                            <li><a href="#">Hikvision Live</a></li>
                        </ul>
                    </div>
                    <div class="footer-link-widget col wow animate__animated animate__fadeInUp"
                        data-wow-delay=".4s">
                        <h4 class="widget-title">Quick Links</h4>
                        <ul class="footer-list mb-sm-5 mb-md-0">
                            <li><a href="#">Hikvision eLearning</a></li>
                            <li><a href="#">Where to Buy</a></li>
                            <li><a href="#">Discontinued Products</a></li>
                            <li><a href="#">Core Technologies</a></li>
                            <li><a href="#">Sitemap</a></li>
                        </ul>
                    </div>
                </div>
        </section>
        <div class="container pb-30 wow animate__animated animate__fadeInUp" data-wow-delay="0">
            <div class="row align-items-center">
                <div class="col-12 mb-30">
                    <div class="footer-bottom"></div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                    <p class="font-sm mb-0">&copy; {{ date('Y') }}, <strong class="text-brand">{{ env('COMPANY_NAME') }}</strong> <br />All rights reserved</p>
                </div>
                <div class="col-xl-4 col-lg-6 text-center d-none d-xl-block">
                    <div class="hotline d-lg-inline-flex mr-30">
                        <img src="{{ asset('public/assets/imgs/theme/icons/phone-call.svg')}}" alt="hotline" />
                        <p>1900 - 6666<span>Working 8:00 - 22:00</span></p>
                    </div>
                    <div class="hotline d-lg-inline-flex">
                        <img src="{{ asset('public/assets/imgs/theme/icons/phone-call.svg')}}" alt="hotline" />
                        <p>1900 - 8888<span>24/7 Support Center</span></p>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 text-end d-none d-md-block">
                    <div class="mobile-social-icon">
                        <h6>Follow Us</h6>
                        <a href="#"><img src="{{ asset('public/assets/imgs/theme/icons/icon-facebook-white.svg') }}"
                                alt="" /></a>
                        <a href="#"><img src="{{ asset('public/assets/imgs/theme/icons/icon-twitter-white.svg') }}"
                                alt="" /></a>
                        <a href="#"><img src="{{ asset('public/assets/imgs/theme/icons/icon-instagram-white.svg') }}"
                                alt="" /></a>
                        <a href="#"><img src="{{ asset('public/assets/imgs/theme/icons/icon-pinterest-white.svg') }}"
                                alt="" /></a>
                        <a href="#"><img src="{{ asset('public/assets/imgs/theme/icons/icon-youtube-white.svg') }}"
                                alt="" /></a>
                    </div>
                    <p class="font-sm">Up to 15% discount on your first subscribe</p>
                </div>
            </div>
        </div>
    </footer>
    <!-- Vendor JS-->
    <script src="{{ asset('public/assets/js/vendor/modernizr-3.6.0.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/vendor/jquery-3.6.0.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/vendor/jquery-migrate-3.3.0.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/vendor/bootstrap.bundle.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/slick.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/jquery.syotimer.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/waypoints.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/wow.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/perfect-scrollbar.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/magnific-popup.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/select2.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/counterup.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/jquery.countdown.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/images-loaded.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/isotope.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/scrollup.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/jquery.vticker-min.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/jquery.theia.sticky.js')}}"></script>
    <script src="{{ asset('public/assets/js/plugins/jquery.elevatezoom.js')}}"></script>
    <!-- Template  JS -->
    <script src="{{ asset('public/assets/js/main.js')}}"></script>
    <script src="{{ asset('public/assets/js/shop.js')}}"></script>

    <script>
        $(document).ready(function(){
            localStorage.clear();
            visible({{ str_replace(' ', '_',strtolower($parent_categories[0]->id)) }})
            visible_solution({{ str_replace(' ', '_',strtolower($solution_parent_categories[0]->id)) }})
            visible_support({{ str_replace(' ', '_',strtolower($support_parent_categories[0]->id)) }})
            visible_partner({{ str_replace(' ', '_',strtolower($partner_parent_categories[0]->id)) }})
        })
        function visible(x){
            if(localStorage.getItem('product_item_'+x)){
                    var scat='';
                    $.each(JSON.parse(localStorage.getItem('product_item_'+x)),function(cat_key,cat_val){
                        scat = scat+`<li class="sub-mega-menu col-4 mb-4"><a class="menu-title" href="{{ URL::to('/') }}/products?category=${cat_val.name}&id=${cat_val.id}"><u>${cat_val.name}</u></a><ul>`;
                        $.each(cat_val.sub_category,function(scat_key,scat_val){
                            scat = scat+'<li><a href="{{ URL::to('/') }}/products?subcategory='+scat_val.name+'&id='+scat_val.id+'">'+scat_val.name+'</a></li>'
                        })

                        scat = scat + '</ul></li>';
                    });

                    $('#products_visibility').empty().append(scat);
            }else{


                $.ajax({
                type: "get",
                url: "{{ route('frontend.getCategoryDetails') }}?id="+x,
                success: function (data) {
                    localStorage.setItem('product_item_'+x,JSON.stringify(data.categories))
                    var scat = '';
                    $.each(data.categories,function(cat_key,cat_val){
                        scat = scat+`<li class="sub-mega-menu col-4 mb-4"><a class="menu-title" href="{{ URL::to('/') }}/products?category=${cat_val.name}&id=${cat_val.id}"><u>${cat_val.name}</u></a><ul>`;
                        $.each(cat_val.sub_category,function(scat_key,scat_val){
                            scat = scat+'<li><a href="{{ URL::to('/') }}/products?subcategory='+scat_val.name+'&id='+scat_val.id+'">'+scat_val.name+'</a></li>'
                        })

                        scat = scat + '</ul></li>';
                    });

                    $('#products_visibility').empty().append(scat);
                },
                error: function (err) {
                    var err_message = err.responseJSON.message.split("(");
                    swal({
                        icon: "warning",
                        title: "Warning !",
                        text: err_message[0],
                        confirmButtonText: "Ok",
                    });
                }
            });
            }


        }


        function visible_solution(x){
            if(localStorage.getItem('solution_item_'+x)){
                    var scat='';
                    $.each(JSON.parse(localStorage.getItem('solution_item_'+x)),function(cat_key,cat_val){
                        scat = scat+`<li class="sub-mega-menu col-4 mb-4"><a class="menu-title" href="#"><u>${cat_val.name}</u></a><ul>`;
                        $.each(cat_val.sub_category,function(scat_key,scat_val){
                            scat = scat+'<li><a href="{{ URL::to('/') }}/solutions?solution_name='+scat_val.name+'&solution_id='+scat_val.id+'">'+scat_val.name+'</a></li>'
                        })

                        scat = scat + '</ul></li>';
                    });

                    $('#solution_visibility').empty().append(scat);
            }else{


                $.ajax({
                type: "get",
                url: "{{ route('frontend.getSolutionCategoryDetails') }}?id="+x,
                success: function (data) {
                    localStorage.setItem('solution_item_'+x,JSON.stringify(data.categories))
                    var scat = '';
                    $.each(data.categories,function(cat_key,cat_val){
                        scat = scat+`<li class="sub-mega-menu col-4 mb-4"><a class="menu-title" href="#"><u>${cat_val.name}</u></a><ul>`;
                        $.each(cat_val.sub_category,function(scat_key,scat_val){
                            scat = scat+'<li><a href="{{ URL::to('/') }}/solutions?solution_name='+scat_val.name+'&solution_id='+scat_val.id+'">'+scat_val.name+'</a></li>'
                        })

                        scat = scat + '</ul></li>';
                    });

                    $('#solution_visibility').empty().append(scat);
                },
                error: function (err) {
                    var err_message = err.responseJSON.message.split("(");
                    swal({
                        icon: "warning",
                        title: "Warning !",
                        text: err_message[0],
                        confirmButtonText: "Ok",
                    });
                }
            });
            }


        }

        function visible_support(x){
            if(localStorage.getItem('support_item_'+x)){
                    var scat=`<li class="sub-mega-menu col-4 mb-4"><a class="menu-title" href="#"></a><ul>`;
                    $.each(JSON.parse(localStorage.getItem('support_item_'+x)),function(cat_key,cat_val){
                        scat = scat+'<li><a href="#">'+cat_val.name+'</a></li>';
                    });
                    scat = scat + '</ul></li>';
                    $('#support_visibility').empty().append(scat);
            }else{
                $.ajax({
                type: "get",
                url: "{{ route('frontend.getSupportCategoryDetails') }}?id="+x,
                success: function (data) {
                    localStorage.setItem('support_item_'+x,JSON.stringify(data.categories))
                    var scat = `<li class="sub-mega-menu col-4 mb-4"><a class="menu-title" href="#"></a><ul>`;
                    $.each(data.categories,function(cat_key,cat_val){
                        scat = scat+`<li><a href="#">${cat_val.name}</a></li>`;
                    });
                    scat = scat + '</ul></li>';
                    $('#support_visibility').empty().append(scat);
                },
                error: function (err) {
                    var err_message = err.responseJSON.message.split("(");
                    swal({
                        icon: "warning",
                        title: "Warning !",
                        text: err_message[0],
                        confirmButtonText: "Ok",
                    });
                }
            });
            }


        }

        function visible_partner(x){
            if(localStorage.getItem('partner_item_'+x)){
                    var scat=`<li class="sub-mega-menu col-4 mb-4"><a class="menu-title" href="#"></a><ul>`;
                    $.each(JSON.parse(localStorage.getItem('partner_item_'+x)),function(cat_key,cat_val){
                        scat = scat+'<li><a href="#">'+cat_val.name+'</a></li>';
                    });
                    scat = scat + '</ul></li>';
                    $('#partner_visibility').empty().append(scat);
            }else{
                $.ajax({
                type: "get",
                url: "{{ route('frontend.getPartnerCategoryDetails') }}?id="+x,
                success: function (data) {
                    localStorage.setItem('partner_item_'+x,JSON.stringify(data.categories))
                    var scat = `<li class="sub-mega-menu col-4 mb-4"><a class="menu-title" href="#"></a><ul>`;
                    $.each(data.categories,function(cat_key,cat_val){
                        scat = scat+`<li><a href="#">${cat_val.name}</a></li>`;
                    });
                    scat = scat + '</ul></li>';
                    $('#partner_visibility').empty().append(scat);
                },
                error: function (err) {
                    var err_message = err.responseJSON.message.split("(");
                    swal({
                        icon: "warning",
                        title: "Warning !",
                        text: err_message[0],
                        confirmButtonText: "Ok",
                    });
                }
            });
            }


        }
    </script>
    @yield('js')
</body>

</html>
