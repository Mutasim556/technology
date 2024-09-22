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
        <div class="mobile-promotion">
            <span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>
        </div>
        <div class="header-top header-top-ptb-1 d-none d-lg-block">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-3 col-lg-4">
                        <div class="header-info">
                            <ul>
                                <li><a href="page-about.htlm">About Us</a></li>
                                <li><a href="page-account.html">My Account</a></li>
                                <li><a href="shop-wishlist.html">Wishlist</a></li>
                                <li><a href="shop-order.html">Order Tracking</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-4">
                        <div class="text-center">
                            <div id="news-flash" class="d-inline-block">
                                <ul>
                                    <li>100% Secure delivery without contacting the courier</li>
                                    <li>Supper Value Deals - Save more with coupons</li>
                                    <li>Trendy 25silver jewelry, save up 35% off today</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4">
                        <div class="header-info header-info-right">
                            <ul>
                                <li>Need help? Call Us: <strong class="text-brand"> + 1800 900</strong></li>
                                <li>
                                    <a class="language-dropdown-active" href="#">English <i
                                            class="fi-rs-angle-small-down"></i></a>
                                    <ul class="language-dropdown">
                                        <li>
                                            <a href="#"><img src="assets/imgs/theme/flag-fr.png"
                                                    alt="" />Français</a>
                                        </li>
                                        <li>
                                            <a href="#"><img src="assets/imgs/theme/flag-dt.png"
                                                    alt="" />Deutsch</a>
                                        </li>
                                        <li>
                                            <a href="#"><img src="assets/imgs/theme/flag-ru.png"
                                                    alt="" />Pусский</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="language-dropdown-active" href="#">USD <i
                                            class="fi-rs-angle-small-down"></i></a>
                                    <ul class="language-dropdown">
                                        <li>
                                            <a href="#"><img src="assets/imgs/theme/flag-fr.png"
                                                    alt="" />INR</a>
                                        </li>
                                        <li>
                                            <a href="#"><img src="assets/imgs/theme/flag-dt.png"
                                                    alt="" />MBP</a>
                                        </li>
                                        <li>
                                            <a href="#"><img src="assets/imgs/theme/flag-ru.png"
                                                    alt="" />EU</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                                    <option>All Categories</option>
                                    <option>Milks and Dairies</option>
                                    <option>Wines & Alcohol</option>
                                    <option>Clothing & Beauty</option>
                                    <option>Pet Foods & Toy</option>
                                    <option>Fast food</option>
                                    <option>Baking material</option>
                                    <option>Vegetables</option>
                                    <option>Fresh Seafood</option>
                                    <option>Noodles & Rice</option>
                                    <option>Ice cream</option>
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
                                <div class="header-action-icon-2">
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
                                </div>
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
                                <div class="d-flex categori-dropdown-inner">
                                    <ul>
                                        <li>
                                            <a href="shop-grid-right.html"> <img
                                                    src="{{ asset('public/assets/imgs/theme/icons/category-1.svg')}}"
                                                    alt="" />Milks and Dairies</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-right.html"> <img
                                                    src="{{ asset('public/assets/imgs/theme/icons/category-2.svg')}}"
                                                    alt="" />Clothing & beauty</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-right.html"> <img
                                                    src="{{ asset('public/assets/imgs/theme/icons/category-3.svg')}}" alt="" />Pet
                                                Foods & Toy</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-right.html"> <img
                                                    src="{{ asset('public/assets/imgs/theme/icons/category-4.svg')}}"
                                                    alt="" />Baking material</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-right.html"> <img
                                                    src="{{ asset('public/assets/imgs/theme/icons/category-5.svg')}}"
                                                    alt="" />Fresh Fruit</a>
                                        </li>
                                    </ul>
                                    <ul class="end">
                                        <li>
                                            <a href="shop-grid-right.html"> <img
                                                    src="{{ asset('public/assets/imgs/theme/icons/category-6.svg')}}"
                                                    alt="" />Wines & Drinks</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-right.html"> <img
                                                    src="{{ asset('public/assets/imgs/theme/icons/category-7.svg')}}"
                                                    alt="" />Fresh Seafood</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-right.html"> <img
                                                    src="{{ asset('public/assets/imgs/theme/icons/category-8.svg')}}" alt="" />Fast
                                                food</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-right.html"> <img
                                                    src="{{ asset('public/assets/imgs/theme/icons/category-9.svg')}}"
                                                    alt="" />Vegetables</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-right.html"> <img
                                                    src="{{ asset('public/assets/imgs/theme/icons/category-10.svg')}}"
                                                    alt="" />Bread and Juice</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="more_slide_open" style="display: none">
                                    <div class="d-flex categori-dropdown-inner">
                                        <ul>
                                            <li>
                                                <a href="shop-grid-right.html"> <img
                                                        src="{{ asset('public/assets/imgs/theme/icons/icon-1.svg')}}"
                                                        alt="" />Milks and Dairies</a>
                                            </li>
                                            <li>
                                                <a href="shop-grid-right.html"> <img
                                                        src="{{ asset('public/assets/imgs/theme/icons/icon-2.svg')}}"
                                                        alt="" />Clothing & beauty</a>
                                            </li>
                                        </ul>
                                        <ul class="end">
                                            <li>
                                                <a href="shop-grid-right.html"> <img
                                                        src="{{ asset('public/assets/imgs/theme/icons/icon-3.svg')}}"
                                                        alt="" />Wines & Drinks</a>
                                            </li>
                                            <li>
                                                <a href="shop-grid-right.html"> <img
                                                        src="{{ asset('public/assets/imgs/theme/icons/icon-4.svg')}}"
                                                        alt="" />Fresh Seafood</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="more_categories"><span class="icon"></span> <span
                                        class="heading-sm-1">Show more...</span></div>
                            </div>
                        </div>
                        <div class="main-menu main-menu-padding-1 main-menu-lh-2 d-none d-lg-block font-heading">
                            <nav>
                                <ul>
                                    {{-- <li class="hot-deals"><img src="assets/imgs/theme/icons/icon-hot.svg"
                                            alt="hot deals" /><a href="shop-grid-right.html">Deals</a></li> --}}
                                    <li>
                                        <a class="active" href="index.html">Home </a>
                                    </li>
                                    <li class="position-static">
                                        <a href="#">Products <i class="fi-rs-angle-down"></i></a>
                                        <ul class="mega-menu">
                                            <div class="row">
                                                <div class="col-3 px-0 " >
                                                    <li class="sub-mega-menu col-12 px-0">
                                                        {{-- <div class="menu-banner-wrap"> --}}
                                                            <ul>
                                                                <li>
                                                                    <a  id="network_products" onclick="visible('network_products')">Network Products </a> 
                                                                </li>
                                                                <li>
                                                                    <a  id="turbo_hd_products" onclick="visible('turbo_hd_products')">Turbo HD Products</a>
                                                                </li>
                                                            </ul>
                                                        {{-- </div> --}}
                                                    </li>
                                                </div>
                                                <div class="col-9">
                                                    <div id="products_visibility">
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Network Cameras</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">Pro Series All</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series With AcuSense</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series with ColorVu</a></li>
                                                                <li><a href="shop-product-right.html">DeepinView Series</a></li>
                                                                <li><a href="shop-product-right.html">Panaromic Series</a>
                                                                </li>
                                                                <li><a href="shop-product-right.html">Special Series</a></li>
                                                                <li><a href="shop-product-right.html">Ultra Series</a></li>
                                                                <li><a href="shop-product-right.html">Cable-Free Series</a></li>
                                                                <li><a href="shop-product-right.html">Solar-powered Series</a></li>
                                                                <li><a href="shop-product-right.html">PT Series</a></li>
                                                                <li><a href="shop-product-right.html">Value Series</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">PTZ Cameras</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">TandemVu PTZ Cameras</a></li>
                                                                <li><a href="shop-product-right.html">Ultra Series</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series</a></li>
                                                                <li><a href="shop-product-right.html">PT Series</a></li>
                                                                <li><a href="shop-product-right.html">Special Series</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Network Video Recorders</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">Ultra Series</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series with AcuSense</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series (All)</a></li>
                                                                <li><a href="shop-product-right.html">Value Series</a></li>
                                                                <li><a href="shop-product-right.html">Special Series</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">DeepinMind Intelligence</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">DeepinMind Edge</a></li>
                                                            </ul>
                                                        </li>
                                    
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Explosion-Proof and Anti-Corrosion Series</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">Explosion-Proof Series</a></li>
                                                                <li><a href="shop-product-right.html">Anti-Corrosion Series</a></li>
                                                                <li><a href="shop-product-right.html">Accessories</a></li>
                                                            </ul>
                                                        </li>
                                    
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Servers</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">General Purpose Server</a></li>
                                                                <li><a href="shop-product-right.html">VMS Server</a></li>
                                                            </ul>
                                                        </li>
                                    
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Storage</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">Hybrid SAN</a></li>
                                                                <li><a href="shop-product-right.html">Cluster Storage</a></li>
                                                            </ul>
                                                        </li>
                                    
                                                         <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Kits</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">PoE Kits</a></li>
                                                                <li><a href="shop-product-right.html">Wi-Fi Kits</a></li>
                                                            </ul>
                                                        </li>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            
                                        </ul>
                                    </li>
                                    
                                    <li class="position-static">
                                        <a href="#">Solutions <i class="fi-rs-angle-down"></i></a>
                                        <ul class="mega-menu">
                                            <div class="row">
                                                <div class="col-3 px-0 " >
                                                    <li class="sub-mega-menu col-12 px-0">
                                                        {{-- <div class="menu-banner-wrap"> --}}
                                                            <ul>
                                                                <li>
                                                                    <a  >Network Products </a> 
                                                                </li>
                                                                <li>
                                                                    <a  >Turbo HD Products</a>
                                                                </li>
                                                            </ul>
                                                        {{-- </div> --}}
                                                    </li>
                                                </div>
                                                <div class="col-9">
                                                    <div id="solution_visibility">
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Network Cameras</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">Pro Series All</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series With AcuSense</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series with ColorVu</a></li>
                                                                <li><a href="shop-product-right.html">DeepinView Series</a></li>
                                                                <li><a href="shop-product-right.html">Panaromic Series</a>
                                                                </li>
                                                                <li><a href="shop-product-right.html">Special Series</a></li>
                                                                <li><a href="shop-product-right.html">Ultra Series</a></li>
                                                                <li><a href="shop-product-right.html">Cable-Free Series</a></li>
                                                                <li><a href="shop-product-right.html">Solar-powered Series</a></li>
                                                                <li><a href="shop-product-right.html">PT Series</a></li>
                                                                <li><a href="shop-product-right.html">Value Series</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">PTZ Cameras</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">TandemVu PTZ Cameras</a></li>
                                                                <li><a href="shop-product-right.html">Ultra Series</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series</a></li>
                                                                <li><a href="shop-product-right.html">PT Series</a></li>
                                                                <li><a href="shop-product-right.html">Special Series</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Network Video Recorders</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">Ultra Series</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series with AcuSense</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series (All)</a></li>
                                                                <li><a href="shop-product-right.html">Value Series</a></li>
                                                                <li><a href="shop-product-right.html">Special Series</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">DeepinMind Intelligence</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">DeepinMind Edge</a></li>
                                                            </ul>
                                                        </li>
                                    
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Explosion-Proof and Anti-Corrosion Series</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">Explosion-Proof Series</a></li>
                                                                <li><a href="shop-product-right.html">Anti-Corrosion Series</a></li>
                                                                <li><a href="shop-product-right.html">Accessories</a></li>
                                                            </ul>
                                                        </li>
                                    
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Servers</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">General Purpose Server</a></li>
                                                                <li><a href="shop-product-right.html">VMS Server</a></li>
                                                            </ul>
                                                        </li>
                                    
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Storage</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">Hybrid SAN</a></li>
                                                                <li><a href="shop-product-right.html">Cluster Storage</a></li>
                                                            </ul>
                                                        </li>
                                    
                                                         <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Kits</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">PoE Kits</a></li>
                                                                <li><a href="shop-product-right.html">Wi-Fi Kits</a></li>
                                                            </ul>
                                                        </li>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            
                                        </ul>
                                    </li>

                                    <li class="position-static">
                                        <a href="#">Support <i class="fi-rs-angle-down"></i></a>
                                        <ul class="mega-menu">
                                            <div class="row">
                                                <div class="col-3 px-0 " >
                                                    <li class="sub-mega-menu col-12 px-0">
                                                        {{-- <div class="menu-banner-wrap"> --}}
                                                            <ul>
                                                                <li>
                                                                    <a  >Network Products </a> 
                                                                </li>
                                                                <li>
                                                                    <a  >Turbo HD Products</a>
                                                                </li>
                                                            </ul>
                                                        {{-- </div> --}}
                                                    </li>
                                                </div>
                                                <div class="col-9">
                                                    <div id="solution_visibility">
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Network Cameras</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">Pro Series All</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series With AcuSense</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series with ColorVu</a></li>
                                                                <li><a href="shop-product-right.html">DeepinView Series</a></li>
                                                                <li><a href="shop-product-right.html">Panaromic Series</a>
                                                                </li>
                                                                <li><a href="shop-product-right.html">Special Series</a></li>
                                                                <li><a href="shop-product-right.html">Ultra Series</a></li>
                                                                <li><a href="shop-product-right.html">Cable-Free Series</a></li>
                                                                <li><a href="shop-product-right.html">Solar-powered Series</a></li>
                                                                <li><a href="shop-product-right.html">PT Series</a></li>
                                                                <li><a href="shop-product-right.html">Value Series</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">PTZ Cameras</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">TandemVu PTZ Cameras</a></li>
                                                                <li><a href="shop-product-right.html">Ultra Series</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series</a></li>
                                                                <li><a href="shop-product-right.html">PT Series</a></li>
                                                                <li><a href="shop-product-right.html">Special Series</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Network Video Recorders</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">Ultra Series</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series with AcuSense</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series (All)</a></li>
                                                                <li><a href="shop-product-right.html">Value Series</a></li>
                                                                <li><a href="shop-product-right.html">Special Series</a></li>
                                                            </ul>
                                                        </li>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="active" href="index.html">Customize Switches </a>
                                    </li>
                                    <li class="position-static">
                                        <a href="#">Partners <i class="fi-rs-angle-down"></i></a>
                                        <ul class="mega-menu">
                                            <div class="row">
                                                <div class="col-3 px-0 " >
                                                    <li class="sub-mega-menu col-12 px-0">
                                                        {{-- <div class="menu-banner-wrap"> --}}
                                                            <ul>
                                                                <li>
                                                                    <a  >Channel Partners</a> 
                                                                </li>
                                                                <li>
                                                                    <a  >Technology Partners</a>
                                                                </li>
                                                            </ul>
                                                        {{-- </div> --}}
                                                    </li>
                                                </div>
                                                <div class="col-9">
                                                    <div id="solution_visibility">
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Network Cameras</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">Pro Series All</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series With AcuSense</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series with ColorVu</a></li>
                                                                <li><a href="shop-product-right.html">DeepinView Series</a></li>
                                                                <li><a href="shop-product-right.html">Panaromic Series</a>
                                                                </li>
                                                                <li><a href="shop-product-right.html">Special Series</a></li>
                                                                <li><a href="shop-product-right.html">Ultra Series</a></li>
                                                                <li><a href="shop-product-right.html">Cable-Free Series</a></li>
                                                                <li><a href="shop-product-right.html">Solar-powered Series</a></li>
                                                                <li><a href="shop-product-right.html">PT Series</a></li>
                                                                <li><a href="shop-product-right.html">Value Series</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">PTZ Cameras</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">TandemVu PTZ Cameras</a></li>
                                                                <li><a href="shop-product-right.html">Ultra Series</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series</a></li>
                                                                <li><a href="shop-product-right.html">PT Series</a></li>
                                                                <li><a href="shop-product-right.html">Special Series</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-mega-menu col-4 mb-4">
                                                            <a class="menu-title" href="#">Network Video Recorders</a>
                                                            <ul>
                                                                <li><a href="shop-product-right.html">Ultra Series</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series with AcuSense</a></li>
                                                                <li><a href="shop-product-right.html">Pro Series (All)</a></li>
                                                                <li><a href="shop-product-right.html">Value Series</a></li>
                                                                <li><a href="shop-product-right.html">Special Series</a></li>
                                                            </ul>
                                                        </li>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            
                                        </ul>
                                    </li>

                                    <li>
                                        <a class="active" href="index.html">Vendors </a>
                                    </li>
                                </ul>
                            </nav>
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
                    <nav>
                        <ul class="mobile-menu font-heading">
                            <li class="menu-item-has-children">
                                <a href="index.html">Home</a>
                                <ul class="dropdown">
                                    <li><a href="index.html">Home 1</a></li>
                                    <li><a href="index-2.html">Home 2</a></li>
                                    <li><a href="index-3.html">Home 3</a></li>
                                    <li><a href="index-4.html">Home 4</a></li>
                                    <li><a href="index-5.html">Home 5</a></li>
                                    <li><a href="index-6.html">Home 6</a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="shop-grid-right.html">shop</a>
                                <ul class="dropdown">
                                    <li><a href="shop-grid-right.html">Shop Grid – Right Sidebar</a></li>
                                    <li><a href="shop-grid-left.html">Shop Grid – Left Sidebar</a></li>
                                    <li><a href="shop-list-right.html">Shop List – Right Sidebar</a></li>
                                    <li><a href="shop-list-left.html">Shop List – Left Sidebar</a></li>
                                    <li><a href="shop-fullwidth.html">Shop - Wide</a></li>
                                    <li class="menu-item-has-children">
                                        <a href="#">Single Product</a>
                                        <ul class="dropdown">
                                            <li><a href="shop-product-right.html">Product – Right Sidebar</a></li>
                                            <li><a href="shop-product-left.html">Product – Left Sidebar</a></li>
                                            <li><a href="shop-product-full.html">Product – No sidebar</a></li>
                                            <li><a href="shop-product-vendor.html">Product – Vendor Infor</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="shop-filter.html">Shop – Filter</a></li>
                                    <li><a href="shop-wishlist.html">Shop – Wishlist</a></li>
                                    <li><a href="shop-cart.html">Shop – Cart</a></li>
                                    <li><a href="shop-checkout.html">Shop – Checkout</a></li>
                                    <li><a href="shop-compare.html">Shop – Compare</a></li>
                                    <li class="menu-item-has-children">
                                        <a href="#">Shop Invoice</a>
                                        <ul class="dropdown">
                                            <li><a href="shop-invoice-1.html">Shop Invoice 1</a></li>
                                            <li><a href="shop-invoice-2.html">Shop Invoice 2</a></li>
                                            <li><a href="shop-invoice-3.html">Shop Invoice 3</a></li>
                                            <li><a href="shop-invoice-4.html">Shop Invoice 4</a></li>
                                            <li><a href="shop-invoice-5.html">Shop Invoice 5</a></li>
                                            <li><a href="shop-invoice-6.html">Shop Invoice 6</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="#">Vendors</a>
                                <ul class="dropdown">
                                    <li><a href="vendors-grid.html">Vendors Grid</a></li>
                                    <li><a href="vendors-list.html">Vendors List</a></li>
                                    <li><a href="vendor-details-1.html">Vendor Details 01</a></li>
                                    <li><a href="vendor-details-2.html">Vendor Details 02</a></li>
                                    <li><a href="vendor-dashboard.html">Vendor Dashboard</a></li>
                                    <li><a href="vendor-guide.html">Vendor Guide</a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="#">Mega menu</a>
                                <ul class="dropdown">
                                    <li class="menu-item-has-children">
                                        <a href="#">Women's Fashion</a>
                                        <ul class="dropdown">
                                            <li><a href="shop-product-right.html">Dresses</a></li>
                                            <li><a href="shop-product-right.html">Blouses & Shirts</a></li>
                                            <li><a href="shop-product-right.html">Hoodies & Sweatshirts</a></li>
                                            <li><a href="shop-product-right.html">Women's Sets</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="#">Men's Fashion</a>
                                        <ul class="dropdown">
                                            <li><a href="shop-product-right.html">Jackets</a></li>
                                            <li><a href="shop-product-right.html">Casual Faux Leather</a></li>
                                            <li><a href="shop-product-right.html">Genuine Leather</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="#">Technology</a>
                                        <ul class="dropdown">
                                            <li><a href="shop-product-right.html">Gaming Laptops</a></li>
                                            <li><a href="shop-product-right.html">Ultraslim Laptops</a></li>
                                            <li><a href="shop-product-right.html">Tablets</a></li>
                                            <li><a href="shop-product-right.html">Laptop Accessories</a></li>
                                            <li><a href="shop-product-right.html">Tablet Accessories</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="blog-category-fullwidth.html">Blog</a>
                                <ul class="dropdown">
                                    <li><a href="blog-category-grid.html">Blog Category Grid</a></li>
                                    <li><a href="blog-category-list.html">Blog Category List</a></li>
                                    <li><a href="blog-category-big.html">Blog Category Big</a></li>
                                    <li><a href="blog-category-fullwidth.html">Blog Category Wide</a></li>
                                    <li class="menu-item-has-children">
                                        <a href="#">Single Product Layout</a>
                                        <ul class="dropdown">
                                            <li><a href="blog-post-left.html">Left Sidebar</a></li>
                                            <li><a href="blog-post-right.html">Right Sidebar</a></li>
                                            <li><a href="blog-post-fullwidth.html">No Sidebar</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="page-about.html">About Us</a></li>
                                    <li><a href="page-contact.html">Contact</a></li>
                                    <li><a href="page-account.html">My Account</a></li>
                                    <li><a href="page-login.html">Login</a></li>
                                    <li><a href="page-register.html">Register</a></li>
                                    <li><a href="page-forgot-password.html">Forgot password</a></li>
                                    <li><a href="page-reset-password.html">Reset password</a></li>
                                    <li><a href="page-purchase-guide.html">Purchase Guide</a></li>
                                    <li><a href="page-privacy-policy.html">Privacy Policy</a></li>
                                    <li><a href="page-terms.html">Terms of Service</a></li>
                                    <li><a href="page-404.html">404 Page</a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="#">Language</a>
                                <ul class="dropdown">
                                    <li><a href="#">English</a></li>
                                    <li><a href="#">French</a></li>
                                    <li><a href="#">German</a></li>
                                    <li><a href="#">Spanish</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
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
        <section class="newsletter mb-15 wow animate__animated animate__fadeIn">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="position-relative newsletter-inner">
                            <div class="newsletter-content">
                                <h2 class="mb-20">
                                    Stay home & get your daily <br />
                                    needs from our shop
                                </h2>
                                <p class="mb-45">Start You'r Daily Shopping with <span class="text-brand">Nest
                                        Mart</span></p>
                                <form class="form-subcriber d-flex">
                                    <input type="email" placeholder="Your emaill address" />
                                    <button class="btn" type="submit">Subscribe</button>
                                </form>
                            </div>
                            <img src="assets/imgs/banner/banner-9.png" alt="newsletter" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="featured section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-1-5 col-md-4 col-12 col-sm-6 mb-md-4 mb-xl-0">
                        <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                            data-wow-delay="0">
                            <div class="banner-icon">
                                <img src="assets/imgs/theme/icons/icon-1.svg" alt="" />
                            </div>
                            <div class="banner-text">
                                <h3 class="icon-box-title">Best prices & offers</h3>
                                <p>Orders $50 or more</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                        <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                            data-wow-delay=".1s">
                            <div class="banner-icon">
                                <img src="assets/imgs/theme/icons/icon-2.svg" alt="" />
                            </div>
                            <div class="banner-text">
                                <h3 class="icon-box-title">Free delivery</h3>
                                <p>24/7 amazing services</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                        <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                            data-wow-delay=".2s">
                            <div class="banner-icon">
                                <img src="assets/imgs/theme/icons/icon-3.svg" alt="" />
                            </div>
                            <div class="banner-text">
                                <h3 class="icon-box-title">Great daily deal</h3>
                                <p>When you sign up</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                        <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                            data-wow-delay=".3s">
                            <div class="banner-icon">
                                <img src="assets/imgs/theme/icons/icon-4.svg" alt="" />
                            </div>
                            <div class="banner-text">
                                <h3 class="icon-box-title">Wide assortment</h3>
                                <p>Mega Discounts</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                        <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                            data-wow-delay=".4s">
                            <div class="banner-icon">
                                <img src="assets/imgs/theme/icons/icon-5.svg" alt="" />
                            </div>
                            <div class="banner-text">
                                <h3 class="icon-box-title">Easy returns</h3>
                                <p>Within 30 days</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1-5 col-md-4 col-12 col-sm-6 d-xl-none">
                        <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                            data-wow-delay=".5s">
                            <div class="banner-icon">
                                <img src="assets/imgs/theme/icons/icon-6.svg" alt="" />
                            </div>
                            <div class="banner-text">
                                <h3 class="icon-box-title">Safe delivery</h3>
                                <p>Within 30 days</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-padding footer-mid">
            <div class="container pt-15 pb-20">
                <div class="row">
                    <div class="col">
                        <div class="widget-about font-md mb-md-3 mb-lg-3 mb-xl-0 wow animate__animated animate__fadeInUp"
                            data-wow-delay="0">
                            <div class="logo mb-30">
                                <a href="index.html" class="mb-15"><img src="assets/imgs/theme/logo.svg"
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
                        data-wow-delay=".1s>
                        <h4 class=" widget-title">Company</h4>
                        <ul class="footer-list mb-sm-5 mb-md-0">
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Delivery Information</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms &amp; Conditions</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Support Center</a></li>
                            <li><a href="#">Careers</a></li>
                        </ul>
                    </div>
                    <div class="footer-link-widget col wow animate__animated animate__fadeInUp"
                        data-wow-delay=".2s">
                        <h4 class="widget-title">Account</h4>
                        <ul class="footer-list mb-sm-5 mb-md-0">
                            <li><a href="#">Sign In</a></li>
                            <li><a href="#">View Cart</a></li>
                            <li><a href="#">My Wishlist</a></li>
                            <li><a href="#">Track My Order</a></li>
                            <li><a href="#">Help Ticket</a></li>
                            <li><a href="#">Shipping Details</a></li>
                            <li><a href="#">Compare products</a></li>
                        </ul>
                    </div>
                    <div class="footer-link-widget col wow animate__animated animate__fadeInUp"
                        data-wow-delay=".3s">
                        <h4 class="widget-title">Corporate</h4>
                        <ul class="footer-list mb-sm-5 mb-md-0">
                            <li><a href="#">Become a Vendor</a></li>
                            <li><a href="#">Affiliate Program</a></li>
                            <li><a href="#">Farm Business</a></li>
                            <li><a href="#">Farm Careers</a></li>
                            <li><a href="#">Our Suppliers</a></li>
                            <li><a href="#">Accessibility</a></li>
                            <li><a href="#">Promotions</a></li>
                        </ul>
                    </div>
                    <div class="footer-link-widget col wow animate__animated animate__fadeInUp"
                        data-wow-delay=".4s">
                        <h4 class="widget-title">Popular</h4>
                        <ul class="footer-list mb-sm-5 mb-md-0">
                            <li><a href="#">Milk & Flavoured Milk</a></li>
                            <li><a href="#">Butter and Margarine</a></li>
                            <li><a href="#">Eggs Substitutes</a></li>
                            <li><a href="#">Marmalades</a></li>
                            <li><a href="#">Sour Cream and Dips</a></li>
                            <li><a href="#">Tea & Kombucha</a></li>
                            <li><a href="#">Cheese</a></li>
                        </ul>
                    </div>
                    <div class="footer-link-widget widget-install-app col wow animate__animated animate__fadeInUp"
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
                    </div>
                </div>
        </section>
        <div class="container pb-30 wow animate__animated animate__fadeInUp" data-wow-delay="0">
            <div class="row align-items-center">
                <div class="col-12 mb-30">
                    <div class="footer-bottom"></div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                    <p class="font-sm mb-0">&copy; 2022, <strong class="text-brand">Nest</strong> - HTML Ecommerce
                        Template <br />All rights reserved</p>
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
                        <a href="#"><img src="assets/imgs/theme/icons/icon-facebook-white.svg"
                                alt="" /></a>
                        <a href="#"><img src="assets/imgs/theme/icons/icon-twitter-white.svg"
                                alt="" /></a>
                        <a href="#"><img src="assets/imgs/theme/icons/icon-instagram-white.svg"
                                alt="" /></a>
                        <a href="#"><img src="assets/imgs/theme/icons/icon-pinterest-white.svg"
                                alt="" /></a>
                        <a href="#"><img src="assets/imgs/theme/icons/icon-youtube-white.svg"
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
        function visible(x){
            if(x=='network_products'){
                $('#products_visibility').empty().append(`
                    <li class="sub-mega-menu col-4 mb-4">
                        <a class="menu-title" href="#">Network Cameras</a>
                        <ul>
                            <li><a href="shop-product-right.html">Pro Series All</a></li>
                            <li><a href="shop-product-right.html">Pro Series With AcuSense</a></li>
                            <li><a href="shop-product-right.html">Pro Series with ColorVu</a></li>
                            <li><a href="shop-product-right.html">DeepinView Series</a></li>
                            <li><a href="shop-product-right.html">Panaromic Series</a>
                            </li>
                            <li><a href="shop-product-right.html">Special Series</a></li>
                            <li><a href="shop-product-right.html">Ultra Series</a></li>
                            <li><a href="shop-product-right.html">Cable-Free Series</a></li>
                            <li><a href="shop-product-right.html">Solar-powered Series</a></li>
                            <li><a href="shop-product-right.html">PT Series</a></li>
                            <li><a href="shop-product-right.html">Value Series</a></li>
                        </ul>
                    </li>
                    <li class="sub-mega-menu col-4 mb-4">
                        <a class="menu-title" href="#">PTZ Cameras</a>
                        <ul>
                            <li><a href="shop-product-right.html">TandemVu PTZ Cameras</a></li>
                            <li><a href="shop-product-right.html">Ultra Series</a></li>
                            <li><a href="shop-product-right.html">Pro Series</a></li>
                            <li><a href="shop-product-right.html">PT Series</a></li>
                            <li><a href="shop-product-right.html">Special Series</a></li>
                        </ul>
                    </li>
                    <li class="sub-mega-menu col-4 mb-4">
                        <a class="menu-title" href="#">Network Video Recorders</a>
                        <ul>
                            <li><a href="shop-product-right.html">Ultra Series</a></li>
                            <li><a href="shop-product-right.html">Pro Series with AcuSense</a></li>
                            <li><a href="shop-product-right.html">Pro Series (All)</a></li>
                            <li><a href="shop-product-right.html">Value Series</a></li>
                            <li><a href="shop-product-right.html">Special Series</a></li>
                        </ul>
                    </li>
                    <li class="sub-mega-menu col-4 mb-4">
                        <a class="menu-title" href="#">DeepinMind Intelligence</a>
                        <ul>
                            <li><a href="shop-product-right.html">DeepinMind Edge</a></li>
                        </ul>
                    </li>

                    <li class="sub-mega-menu col-4 mb-4">
                        <a class="menu-title" href="#">Explosion-Proof and Anti-Corrosion Series</a>
                        <ul>
                            <li><a href="shop-product-right.html">Explosion-Proof Series</a></li>
                            <li><a href="shop-product-right.html">Anti-Corrosion Series</a></li>
                            <li><a href="shop-product-right.html">Accessories</a></li>
                        </ul>
                    </li>

                    <li class="sub-mega-menu col-4 mb-4">
                        <a class="menu-title" href="#">Servers</a>
                        <ul>
                            <li><a href="shop-product-right.html">General Purpose Server</a></li>
                            <li><a href="shop-product-right.html">VMS Server</a></li>
                        </ul>
                    </li>

                    <li class="sub-mega-menu col-4 mb-4">
                        <a class="menu-title" href="#">Storage</a>
                        <ul>
                            <li><a href="shop-product-right.html">Hybrid SAN</a></li>
                            <li><a href="shop-product-right.html">Cluster Storage</a></li>
                        </ul>
                    </li>

                     <li class="sub-mega-menu col-4 mb-4">
                        <a class="menu-title" href="#">Kits</a>
                        <ul>
                            <li><a href="shop-product-right.html">PoE Kits</a></li>
                            <li><a href="shop-product-right.html">Wi-Fi Kits</a></li>
                        </ul>
                    </li>
                    
                `);
            }else{
                $('#products_visibility').empty().append(`
                    <li class="sub-mega-menu col-4 mb-4">
                        <a class="menu-title" href="#">Turbo HD Cameras</a>
                        <ul>
                            <li><a href="shop-product-right.html">Turbo HD Cameras with ColorVu</a></li>
                            <li><a href="shop-product-right.html">Value Series</a></li>
                            <li><a href="shop-product-right.html">Pro Series</a></li>
                            <li><a href="shop-product-right.html">Ultra Series</a></li>
                            <li><a href="shop-product-right.html">IOT Series</a></li>
                        </ul>
                    </li>
                    <li class="sub-mega-menu col-4 mb-4">
                        <a class="menu-title" href="#">DVR</a>
                        <ul>
                            <li><a href="shop-product-right.html">eDVR Series</a></li>
                            <li><a href="shop-product-right.html">Pro Series With AcuSense</a></li>
                            <li><a href="shop-product-right.html">Value Series</a></li>
                            <li><a href="shop-product-right.html">Ultra Series</a></li>
                            <li><a href="shop-product-right.html">Special Series</a>
                            </li>
                            <li><a href="shop-product-right.html">Back-end Accessories</a></li>
                        </ul>
                    </li>
                    <li class="sub-mega-menu col-4 mb-4">
                        <a class="menu-title" href="#">PTZ Cameras</a>
                        <ul>
                            <li><a href="shop-product-right.html">Pro Series</a></li>
                        </ul>
                    </li>
                `);
            }
            
            
        }
    </script>
</body>

</html>