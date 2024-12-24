@extends('frontend.layouts.front_layouts')
@section('title')
    {{-- {{ __('admin_login.Home') }} --}}
    Homepage
@endsection
@section('body')
<main class="main">
    <section class="home-slider position-relative mb-30">
        <div class="container">
            <div class="home-slide-cover mt-30">
                <div class="hero-slider-1 style-4 dot-style-1 dot-style-1-position-1">
                    @php
                        $sliders = DB::table('homepage_silders')->where([['status',1],['delete',0]])->get();
                    @endphp
                    @if(count($sliders)>0)
                        @foreach ($sliders as $slider)
                            <div class="single-hero-slider single-animation-wrap"
                            style="background-image: url({{ env('ASSET_DIRECTORY')."/".$slider->slider_image}})">
                                <div class="slider-content">
                                    <h3 class="display-2 mb-40">
                                        {{-- {{ $slider->slider_title }} --}}
                                    </h3>
                                    {{-- <p class="mb-65">{{ $slider->slider_short_description }}</p> --}}
                                    <form class="form-subcriber d-flex">
                                        {{-- <input type="email" placeholder="Your emaill address" /> --}}
                                        @if ($slider->slider_link)
                                            <a target="__blank" class="btn" href="{{ $slider->slider_link }}">{{ $slider->slider_button_text }}</a>
                                        @endif
                                    </form>
                                </div>
                            </div>
                        @endforeach
                    @endif
                </div>
                <div class="slider-arrow hero-slider-1-arrow"></div>
            </div>
        </div>
    </section>
    <!--End hero slider-->
    <section class="featured section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-1-5 col-md-4 col-12 col-sm-6 mb-md-4 mb-xl-0">
                    <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp" data-wow-delay="0">
                        <div class="banner-icon">
                            <img src="{{ asset('public/assets/imgs/theme/icons/icon-1.svg') }}" alt="" />
                        </div>
                        <div class="banner-text">
                            <h3 class="icon-box-title">Blog</h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                    <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp" data-wow-delay=".1s">
                        <div class="banner-icon">
                            <img src="{{ asset('public/assets/imgs/theme/icons/icon-2.svg') }}" alt="" />
                        </div>
                        <div class="banner-text">
                            <h3 class="icon-box-title">E-learning</h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                    <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp" data-wow-delay=".2s">
                        <div class="banner-icon">
                            <img src="{{ asset('public/assets/imgs/theme/icons/icon-3.svg') }}" alt="" />
                        </div>
                        <div class="banner-text">
                            <h3 class="icon-box-title">Success Stories</h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                    <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp" data-wow-delay=".3s">
                        <div class="banner-icon">
                            <img src="{{ asset('public/assets/imgs/theme/icons/icon-4.svg') }}" alt="" />
                        </div>
                        <div class="banner-text">
                            <h3 class="icon-box-title">Technologies</h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                    <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp" data-wow-delay=".4s">
                        <div class="banner-icon">
                            <img src="{{ asset('public/assets/imgs/theme/icons/icon-5.svg') }}" alt="" />
                        </div>
                        <div class="banner-text">
                            <h3 class="icon-box-title">Sustainability</h3>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>
    <!--End category slider-->


    <!--Products Tabs-->
    <section class="section-padding pb-5">
        <div class="container">
            <div class="section-title wow animate__animated animate__fadeIn">
                <h3 class="text-uppercase">product spotlight</h3>
                <ul class="nav nav-tabs links" id="myTab-2" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="nav-tab-one-1" data-bs-toggle="tab"
                            data-bs-target="#tab-one-1" type="button" role="tab"
                            aria-controls="tab-one" aria-selected="true">Featured</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="nav-tab-two-1" data-bs-toggle="tab"
                            data-bs-target="#tab-two-1" type="button" role="tab"
                            aria-controls="tab-two" aria-selected="false">Popular</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="nav-tab-three-1" data-bs-toggle="tab"
                            data-bs-target="#tab-three-1" type="button" role="tab"
                            aria-controls="tab-three" aria-selected="false">New added</button>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-lg-3 d-none d-lg-flex wow animate__animated animate__fadeIn">
                    <div class="banner-img style-2">
                        <div class="banner-text">
                            <h2 class="mb-60" style="font-size:20px;font-weight:700;">Explore Our Advancements
                                in AIoT Techs</h2>
                            <a href="shop-grid-right.html" class="btn btn-xs">Explore Now <i
                                    class="fi-rs-arrow-small-right"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-9 col-md-12 wow animate__animated animate__fadeIn" data-wow-delay=".4s">
                    <div class="tab-content" id="myTabContent-1">
                        <div class="tab-pane fade show active" id="tab-one-1" role="tabpanel"
                            aria-labelledby="tab-one-1">
                            <div class="carausel-4-columns-cover arrow-center position-relative">
                                <div class="slider-arrow slider-arrow-2 carausel-4-columns-arrow"
                                    id="carausel-4-columns-arrows"></div>
                                <div class="carausel-4-columns carausel-arrow-center" id="carausel-4-columns">
                                    
                                    
                                    @foreach ($featured_products as $products)
                                        
                                    
                                    @php
                                        $images = explode(',',$product->image)
                                    @endphp
                                    <div class="product-cart-wrap">
                                        <div class="product-img-action-wrap">
                                            <div class="product-img product-img-zoom">
                                                <a href="shop-product-right.html">
                                                    <img class="default-img"
                                                        src="{{ asset($images[0]) }}" alt="" />
                                                    <img class="hover-img"
                                                        src="{{ count($images)>1?asset($images[1]):asset($images[0]) }}" alt="" />
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content-wrap">
                                            <div class="product-category">
                                                <a href="#">{{ $product->subCategory->sub_category_name }}</a>
                                            </div>
                                            <h2><a href="#">{{ $product->name }}</a></h2>
                                            <div class="product-rate d-inline-block">
                                                <div class="product-rating" style="width: 80%"></div>
                                            </div>
                                            {{-- <div class="product-price mt-10">
                                                <span>{{ $product->price }}</span>
                                                <span class="old-price">$245.8</span>
                                            </div> --}}
                                            <div class="sold mt-15 mb-15">
                                                <span class="font-xs text-heading"> {{ $product->short_description }}</span>
                                            </div>
                                            <a href="{{ route('frontend.product.details',[$product->id,$product->name]) }}" class="btn w-100 hover-up"><i
                                                    class="fi-rs-shopping-cart mr-5"></i>View Details</a>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <!--End tab-pane-->
                        <div class="tab-pane fade" id="tab-two-1" role="tabpanel"
                            aria-labelledby="tab-two-1">
                            <div class="carausel-4-columns-cover arrow-center position-relative">
                                <div class="slider-arrow slider-arrow-2 carausel-4-columns-arrow"
                                    id="carausel-4-columns-2-arrows"></div>
                                <div class="carausel-4-columns carausel-arrow-center" id="carausel-4-columns-2">
                                    @foreach ($popular_products as $products)
                                        
                                    
                                    @php
                                        $images = explode(',',$product->image)
                                    @endphp
                                    <div class="product-cart-wrap">
                                        <div class="product-img-action-wrap">
                                            <div class="product-img product-img-zoom">
                                                <a href="shop-product-right.html">
                                                    <img class="default-img"
                                                        src="{{ asset($images[0]) }}" alt="" />
                                                    <img class="hover-img"
                                                        src="{{ count($images)>1?asset($images[1]):asset($images[0]) }}" alt="" />
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content-wrap">
                                            <div class="product-category">
                                                <a href="#">{{ $product->subCategory->sub_category_name }}</a>
                                            </div>
                                            <h2><a href="#">{{ $product->name }}</a></h2>
                                            <div class="product-rate d-inline-block">
                                                <div class="product-rating" style="width: 80%"></div>
                                            </div>
                                            {{-- <div class="product-price mt-10">
                                                <span>{{ $product->price }}</span>
                                                <span class="old-price">$245.8</span>
                                            </div> --}}
                                            <div class="sold mt-15 mb-15">
                                                <span class="font-xs text-heading"> {{ $product->short_description }}</span>
                                            </div>
                                            <a href="{{ route('frontend.product.details',[$product->id,$product->name]) }}" class="btn w-100 hover-up"><i
                                                    class="fi-rs-shopping-cart mr-5"></i>View Details</a>
                                        </div>
                                    </div>
                                    @endforeach
                                    
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab-three-1" role="tabpanel"
                            aria-labelledby="tab-three-1">
                            <div class="carausel-4-columns-cover arrow-center position-relative">
                                <div class="slider-arrow slider-arrow-2 carausel-4-columns-arrow"
                                    id="carausel-4-columns-3-arrows"></div>
                                <div class="carausel-4-columns carausel-arrow-center" id="carausel-4-columns-3">
                                   
                                    @foreach ($new_products as $product)
                                    @php
                                        $images = explode(',',$product->image)
                                    @endphp
                                    <div class="product-cart-wrap">
                                        <div class="product-img-action-wrap">
                                            <div class="product-img product-img-zoom">
                                                <a href="shop-product-right.html">
                                                    <img class="default-img"
                                                        src="{{ asset($images[0]) }}" alt="" />
                                                    <img class="hover-img"
                                                        src="{{ count($images)>1?asset($images[1]):asset($images[0]) }}" alt="" />
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-content-wrap">
                                            <div class="product-category">
                                                <a href="#">{{ $product->subCategory->sub_category_name }}</a>
                                            </div>
                                            <h2><a href="#">{{ $product->name }}</a></h2>
                                            <div class="product-rate d-inline-block">
                                                <div class="product-rating" style="width: 80%"></div>
                                            </div>
                                            {{-- <div class="product-price mt-10">
                                                <span>{{ $product->price }}</span>
                                                <span class="old-price">$245.8</span>
                                            </div> --}}
                                            <div class="sold mt-15 mb-15">
                                                <span class="font-xs text-heading"> {{ $product->short_description }}</span>
                                            </div>
                                            <a href="{{ route('frontend.product.details',[$product->id,$product->name]) }}" class="btn w-100 hover-up"><i
                                                    class="fi-rs-shopping-cart mr-5"></i>View Details</a>
                                        </div>
                                    </div>
                                    @endforeach
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End tab-content-->
                </div>
                <!--End Col-lg-9-->
            </div>
        </div>
    </section>
    <!--End Best Sales-->


</main>
@endsection
