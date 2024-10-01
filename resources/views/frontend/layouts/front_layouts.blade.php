<!DOCTYPE html>
<html class="no-js" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8" />
    <title>Nest - Multipurpose eCommerce HTML Template</title>
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
    <!-- Modal -->
    <div class="modal fade custom-modal" id="onloadModal" tabindex="-1" aria-labelledby="onloadModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <div class="deal" style="background-image: url({{ asset('public/assets/imgs/banner/popup-1.png') }})">
                        <div class="deal-top">
                            <h6 class="mb-10 text-brand-2">Deal of the Day</h6>
                        </div>
                        <div class="deal-content detail-info">
                            <h4 class="product-title"><a href="shop-product-right.html" class="text-heading">Organic
                                    fruit for your family's health</a></h4>
                            <div class="clearfix product-price-cover">
                                <div class="product-price primary-color float-left">
                                    <span class="current-price text-brand">$38</span>
                                    <span>
                                        <span class="save-price font-md color3 ml-15">26% Off</span>
                                        <span class="old-price font-md ml-15">$52</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="deal-bottom">
                            <p class="mb-20">Hurry Up! Offer End In:</p>
                            <div class="deals-countdown pl-5" data-countdown="2025/03/25 00:00:00">
                                <span class="countdown-section"><span class="countdown-amount hover-up">03</span><span
                                        class="countdown-period"> days </span></span><span
                                    class="countdown-section"><span class="countdown-amount hover-up">02</span><span
                                        class="countdown-period"> hours </span></span><span
                                    class="countdown-section"><span class="countdown-amount hover-up">43</span><span
                                        class="countdown-period"> mins </span></span><span
                                    class="countdown-section"><span class="countdown-amount hover-up">29</span><span
                                        class="countdown-period"> sec </span></span>
                            </div>
                            <div class="product-detail-rating">
                                <div class="product-rate-cover text-end">
                                    <div class="product-rate d-inline-block">
                                        <div class="product-rating" style="width: 90%"></div>
                                    </div>
                                    <span class="font-small ml-5 text-muted"> (32 rates)</span>
                                </div>
                            </div>
                            <a href="shop-grid-right.html" class="btn hover-up">Shop Now <i
                                    class="fi-rs-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quick view -->
    <div class="modal fade custom-modal" id="quickViewModal" tabindex="-1" aria-labelledby="quickViewModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6 col-sm-12 col-xs-12 mb-md-0 mb-sm-5">
                            <div class="detail-gallery">
                                <span class="zoom-icon"><i class="fi-rs-search"></i></span>
                                <!-- MAIN SLIDES -->
                                <div class="product-image-slider">
                                    <figure class="border-radius-10">
                                        <img src="assets/imgs/shop/product-16-2.jpg" alt="product image" />
                                    </figure>
                                    <figure class="border-radius-10">
                                        <img src="assets/imgs/shop/product-16-1.jpg" alt="product image" />
                                    </figure>
                                    <figure class="border-radius-10">
                                        <img src="assets/imgs/shop/product-16-3.jpg" alt="product image" />
                                    </figure>
                                    <figure class="border-radius-10">
                                        <img src="assets/imgs/shop/product-16-4.jpg" alt="product image" />
                                    </figure>
                                    <figure class="border-radius-10">
                                        <img src="assets/imgs/shop/product-16-5.jpg" alt="product image" />
                                    </figure>
                                    <figure class="border-radius-10">
                                        <img src="assets/imgs/shop/product-16-6.jpg" alt="product image" />
                                    </figure>
                                    <figure class="border-radius-10">
                                        <img src="assets/imgs/shop/product-16-7.jpg" alt="product image" />
                                    </figure>
                                </div>
                                <!-- THUMBNAILS -->
                                <div class="slider-nav-thumbnails">
                                    <div><img src="assets/imgs/shop/thumbnail-3.jpg" alt="product image" /></div>
                                    <div><img src="assets/imgs/shop/thumbnail-4.jpg" alt="product image" /></div>
                                    <div><img src="assets/imgs/shop/thumbnail-5.jpg" alt="product image" /></div>
                                    <div><img src="assets/imgs/shop/thumbnail-6.jpg" alt="product image" /></div>
                                    <div><img src="assets/imgs/shop/thumbnail-7.jpg" alt="product image" /></div>
                                    <div><img src="assets/imgs/shop/thumbnail-8.jpg" alt="product image" /></div>
                                    <div><img src="assets/imgs/shop/thumbnail-9.jpg" alt="product image" /></div>
                                </div>
                            </div>
                            <!-- End Gallery -->
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="detail-info pr-30 pl-30">
                                <span class="stock-status out-stock"> Sale Off </span>
                                <h3 class="title-detail"><a href="shop-product-right.html" class="text-heading">Seeds
                                        of Change Organic Quinoa, Brown</a></h3>
                                <div class="product-detail-rating">
                                    <div class="product-rate-cover text-end">
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 90%"></div>
                                        </div>
                                        <span class="font-small ml-5 text-muted"> (32 reviews)</span>
                                    </div>
                                </div>
                                <div class="clearfix product-price-cover">
                                    <div class="product-price primary-color float-left">
                                        <span class="current-price text-brand">$38</span>
                                        <span>
                                            <span class="save-price font-md color3 ml-15">26% Off</span>
                                            <span class="old-price font-md ml-15">$52</span>
                                        </span>
                                    </div>
                                </div>
                                <div class="detail-extralink mb-30">
                                    <div class="detail-qty border radius">
                                        <a href="#" class="qty-down"><i class="fi-rs-angle-small-down"></i></a>
                                        <span class="qty-val">1</span>
                                        <a href="#" class="qty-up"><i class="fi-rs-angle-small-up"></i></a>
                                    </div>
                                    <div class="product-extra-link2">
                                        <button type="submit" class="button button-add-to-cart"><i
                                                class="fi-rs-shopping-cart"></i>Add to cart</button>
                                    </div>
                                </div>
                                <div class="font-xs">
                                    <ul>
                                        <li class="mb-5">Vendor: <span class="text-brand">Nest</span></li>
                                        <li class="mb-5">MFG:<span class="text-brand"> Jun 4.2022</span></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Detail Info -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <header class="header-area header-style-1 header-style-5 header-height-2">
        
        <div class="header-middle header-middle-ptb-1 d-none d-lg-block">
            <div class="container">
                <div class="header-wrap">
                    <div class="logo logo-width-1">
                        <a href="index.html"><img src="{{ asset('public/assets/imgs/theme/logo.svg') }}" alt="logo" /></a>
                    </div>
                    <div class="header-right">
                        <div class="search-style-2">
                            <form action="#">
                                <select class="select-active">
                                    @foreach ($parent_categories as $parent_category)
                                        <option value="{{ $parent_category->id }}">{{ $parent_category->parent_category_name }}</option>
                                    @endforeach
                                </select>
                                <input type="text" placeholder="Search for items..." />
                            </form>
                        </div>
                        <div class="header-action-right">
                            <div class="header-action-2">
                                <div class="search-location">
                                    <form action="#">
                                        <select class="select-active">
                                            <option>Your Location</option>
                                            <option>Alabama</option>
                                            <option>Alaska</option>
                                            <option>Arizona</option>
                                            <option>Delaware</option>
                                            <option>Florida</option>
                                            <option>Georgia</option>
                                            <option>Hawaii</option>
                                            <option>Indiana</option>
                                            <option>Maryland</option>
                                            <option>Nevada</option>
                                            <option>New Jersey</option>
                                            <option>New Mexico</option>
                                            <option>New York</option>
                                        </select>
                                    </form>
                                </div>
                                {{-- <div class="header-action-icon-2">
                                    <a href="shop-compare.html">
                                        <img class="svgInject" alt="Nest"
                                            src="{{ asset('public/assets/imgs/theme/icons/icon-compare.svg') }}" />
                                        <span class="pro-count blue">3</span>
                                    </a>
                                    <a href="shop-compare.html"><span class="lable ml-0">Compare</span></a>
                                </div>
                                <div class="header-action-icon-2">
                                    <a href="shop-wishlist.html">
                                        <img class="svgInject" alt="Nest"
                                            src="{{ asset('public/assets/imgs/theme/icons/icon-heart.svg')}}" />
                                        <span class="pro-count blue">6</span>
                                    </a>
                                    <a href="shop-wishlist.html"><span class="lable">Wishlist</span></a>
                                </div>
                                <div class="header-action-icon-2">
                                    <a class="mini-cart-icon" href="shop-cart.html">
                                        <img alt="Nest" src="{{ asset('public/assets/imgs/theme/icons/icon-cart.svg')}}" />
                                        <span class="pro-count blue">2</span>
                                    </a>
                                    <a href="shop-cart.html"><span class="lable">Cart</span></a>
                                    <div class="cart-dropdown-wrap cart-dropdown-hm2">
                                        <ul>
                                            <li>
                                                <div class="shopping-cart-img">
                                                    <a href="shop-product-right.html"><img alt="Nest"
                                                            src="{{ asset('public/assets/imgs/shop/thumbnail-3.jpg')}}" /></a>
                                                </div>
                                                <div class="shopping-cart-title">
                                                    <h4><a href="shop-product-right.html">Daisy Casual Bag</a></h4>
                                                    <h4><span>1 × </span>$800.00</h4>
                                                </div>
                                                <div class="shopping-cart-delete">
                                                    <a href="#"><i class="fi-rs-cross-small"></i></a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="shopping-cart-img">
                                                    <a href="shop-product-right.html"><img alt="Nest"
                                                            src="{{ asset('public/assets/imgs/shop/thumbnail-2.jpg')}}" /></a>
                                                </div>
                                                <div class="shopping-cart-title">
                                                    <h4><a href="shop-product-right.html">Corduroy Shirts</a></h4>
                                                    <h4><span>1 × </span>$3200.00</h4>
                                                </div>
                                                <div class="shopping-cart-delete">
                                                    <a href="#"><i class="fi-rs-cross-small"></i></a>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="shopping-cart-footer">
                                            <div class="shopping-cart-total">
                                                <h4>Total <span>$4000.00</span></h4>
                                            </div>
                                            <div class="shopping-cart-button">
                                                <a href="shop-cart.html" class="outline">View cart</a>
                                                <a href="shop-checkout.html">Checkout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div> --}}
                                <div class="header-action-icon-2">
                                    <a href="page-account.html">
                                        <img class="svgInject" alt="Nest"
                                            src="{{ asset('public/assets/imgs/theme/icons/icon-user.svg')}}" />
                                    </a>
                                    <a href="page-account.html"><span class="lable ml-0">Account</span></a>
                                    <div class="cart-dropdown-wrap cart-dropdown-hm2 account-dropdown">
                                        <ul>
                                            <li>
                                                <a href="page-account.html"><i class="fi fi-rs-user mr-10"></i>My
                                                    Account</a>
                                            </li>
                                            <li>
                                                <a href="page-account.html"><i
                                                        class="fi fi-rs-location-alt mr-10"></i>Order Tracking</a>
                                            </li>
                                            <li>
                                                <a href="page-account.html"><i class="fi fi-rs-label mr-10"></i>My
                                                    Voucher</a>
                                            </li>
                                            <li>
                                                <a href="shop-wishlist.html"><i class="fi fi-rs-heart mr-10"></i>My
                                                    Wishlist</a>
                                            </li>
                                            <li>
                                                <a href="page-account.html"><i
                                                        class="fi fi-rs-settings-sliders mr-10"></i>Setting</a>
                                            </li>
                                            <li>
                                                <a href="page-login.html"><i class="fi fi-rs-sign-out mr-10"></i>Sign
                                                    out</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
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
                        <a href="index.html"><img src="{{ asset('public/assets/imgs/theme/logo.svg')}}" alt="logo" /></a>
                    </div>
                    <div class="header-nav d-none d-lg-flex">
                        <div class="main-categori-wrap d-none d-lg-block">
                            <a class="categories-button-active" href="#">
                                <span class="fi-rs-apps"></span> <span class="et">Browse</span> All Categories
                                <i class="fi-rs-angle-down"></i>
                            </a>
                            <div class="categories-dropdown-wrap categories-dropdown-active-large font-heading">
                                <div class="d-flex categori-dropdown-inner p-0">
                                    
                                        @foreach ($parent_categories as $parent_category)
                                            <div class="col-5 col-sm-5 col-lg-5 py-2 mx-1 rounded text-center" style="box-shadow: 0px 0px 5px;">
                                                <a href="shop-grid-right.html">{{ $parent_category->parent_category_name }}</a>
                                            </div>
                                        @endforeach
                                    
                                </div>
                            </div>
                        </div>
                        <div class="main-menu main-menu-padding-1 main-menu-lh-2 d-none d-lg-block font-heading">
                            @include('frontend.layouts.nav.menu_desktop')
                        </div>
                    </div>
                    <div class="hotline d-none d-lg-flex">
                        <img src="assets/imgs/theme/icons/icon-headphone.svg" alt="hotline" />
                        <p>1900 - 888<span>24/7 Support Center</span></p>
                    </div>
                    <div class="header-action-icon-2 d-block d-lg-none">
                        <div class="burger-icon burger-icon-white">
                            <span class="burger-icon-top"></span>
                            <span class="burger-icon-mid"></span>
                            <span class="burger-icon-bottom"></span>
                        </div>
                    </div>
                    <div class="header-action-right d-block d-lg-none">
                        <div class="header-action-2">
                            <div class="header-action-icon-2">
                                <a href="shop-wishlist.html">
                                    <img alt="Nest" src="assets/imgs/theme/icons/icon-heart.svg" />
                                    <span class="pro-count white">4</span>
                                </a>
                            </div>
                            <div class="header-action-icon-2">
                                <a class="mini-cart-icon" href="#">
                                    <img alt="Nest" src="assets/imgs/theme/icons/icon-cart.svg" />
                                    <span class="pro-count white">2</span>
                                </a>
                                <div class="cart-dropdown-wrap cart-dropdown-hm2">
                                    <ul>
                                        <li>
                                            <div class="shopping-cart-img">
                                                <a href="shop-product-right.html"><img alt="Nest"
                                                        src="assets/imgs/shop/thumbnail-3.jpg" /></a>
                                            </div>
                                            <div class="shopping-cart-title">
                                                <h4><a href="shop-product-right.html">Plain Striola Shirts</a></h4>
                                                <h3><span>1 × </span>$800.00</h3>
                                            </div>
                                            <div class="shopping-cart-delete">
                                                <a href="#"><i class="fi-rs-cross-small"></i></a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="shopping-cart-img">
                                                <a href="shop-product-right.html"><img alt="Nest"
                                                        src="assets/imgs/shop/thumbnail-4.jpg" /></a>
                                            </div>
                                            <div class="shopping-cart-title">
                                                <h4><a href="shop-product-right.html">Macbook Pro 2022</a></h4>
                                                <h3><span>1 × </span>$3500.00</h3>
                                            </div>
                                            <div class="shopping-cart-delete">
                                                <a href="#"><i class="fi-rs-cross-small"></i></a>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="shopping-cart-footer">
                                        <div class="shopping-cart-total">
                                            <h4>Total <span>$383.00</span></h4>
                                        </div>
                                        <div class="shopping-cart-button">
                                            <a href="shop-cart.html">View cart</a>
                                            <a href="shop-checkout.html">Checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                    <a href="index.html"><img src="assets/imgs/theme/logo.svg" alt="logo" /></a>
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
                    <a href="#"><img src="assets/imgs/theme/icons/icon-facebook-white.svg"
                            alt="" /></a>
                    <a href="#"><img src="assets/imgs/theme/icons/icon-twitter-white.svg" alt="" /></a>
                    <a href="#"><img src="assets/imgs/theme/icons/icon-instagram-white.svg"
                            alt="" /></a>
                    <a href="#"><img src="assets/imgs/theme/icons/icon-pinterest-white.svg"
                            alt="" /></a>
                    <a href="#"><img src="assets/imgs/theme/icons/icon-youtube-white.svg" alt="" /></a>
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
                                <li><img src="assets/imgs/theme/icons/icon-location.svg"
                                        alt="" /><strong>Address: </strong> <span>5171 W Campbell Ave
                                        undefined Kent, Utah 53127 United States</span></li>
                                <li><img src="assets/imgs/theme/icons/icon-contact.svg"
                                        alt="" /><strong>Call Us:</strong><span>(+91) - 540-025-124553</span>
                                </li>
                                <li><img src="assets/imgs/theme/icons/icon-email-2.svg"
                                        alt="" /><strong>Email:</strong><span>sale@Nest.com</span></li>
                                <li><img src="assets/imgs/theme/icons/icon-clock.svg"
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
                    {{-- <div class="footer-link-widget widget-install-app col wow animate__animated animate__fadeInUp"
                        data-wow-delay=".5s">
                        <h4 class="widget-title">Install App</h4>
                        <p class="">From App Store or Google Play</p>
                        <div class="download-app">
                            <a href="#" class="hover-up mb-sm-2 mb-lg-0"><img class="active"
                                    src="assets/imgs/theme/app-store.jpg" alt="" /></a>
                            <a href="#" class="hover-up mb-sm-2"><img
                                    src="assets/imgs/theme/google-play.jpg" alt="" /></a>
                        </div>
                        <p class="mb-20">Secured Payment Gateways</p>
                        <img class="" src="assets/imgs/theme/payment-method.png" alt="" />
                    </div> --}}
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
                        <img src="assets/imgs/theme/icons/phone-call.svg" alt="hotline" />
                        <p>1900 - 6666<span>Working 8:00 - 22:00</span></p>
                    </div>
                    <div class="hotline d-lg-inline-flex">
                        <img src="assets/imgs/theme/icons/phone-call.svg" alt="hotline" />
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
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="text-center">
                    <img src="assets/imgs/theme/loading.gif" alt="" />
                </div>
            </div>
        </div>
    </div>
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
                        scat = scat+`<li class="sub-mega-menu col-4 mb-4"><a class="menu-title" href="#"><u>${cat_val.name}</u></a><ul>`;
                        $.each(cat_val.sub_category,function(scat_key,scat_val){
                            scat = scat+'<li><a href="#">'+scat_val.name+'</a></li>'
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
                        scat = scat+`<li class="sub-mega-menu col-4 mb-4"><a class="menu-title" href="#"><u>${cat_val.name}</u></a><ul>`;
                        $.each(cat_val.sub_category,function(scat_key,scat_val){
                            scat = scat+'<li><a href="#">'+scat_val.name+'</a></li>'
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
                            scat = scat+'<li><a href="#">'+scat_val.name+'</a></li>'
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
                            scat = scat+'<li><a href="#">'+scat_val.name+'</a></li>'
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
</body>

</html>
