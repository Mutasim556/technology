@extends('frontend.layouts.front_layouts')
@section('body')
<div class="page-header mt-30 mb-50">
    <div class="container">
        <div class="archive-header">
            <div class="row align-items-center">
                <div class="col-xl-12">
                    <h1 class="mb-15">{{ $compact_data[0]->category_name }}</h1>
                    <div class="breadcrumb">
                        <a href="{{ url('/') }}" rel="nofollow"><i class="fi-rs-home mr-5"></i>Home</a>
                        <span></span> Product <span></span> {{ $compact_data[0]->parentCategory->parent_category_name }}<span></span> {{ $compact_data[0]->category_name }}
                    </div>
                </div>
                {{-- <div class="col-xl-9 text-end d-none d-xl-block">
                    <ul class="tags-list">
                        <li class="hover-up">
                            <a href="blog-category-grid.html"><i class="fi-rs-cross mr-10"></i>Cabbage</a>
                        </li>
                        <li class="hover-up active">
                            <a href="blog-category-grid.html"><i class="fi-rs-cross mr-10"></i>Broccoli</a>
                        </li>
                        <li class="hover-up">
                            <a href="blog-category-grid.html"><i class="fi-rs-cross mr-10"></i>Artichoke</a>
                        </li>
                        <li class="hover-up">
                            <a href="blog-category-grid.html"><i class="fi-rs-cross mr-10"></i>Celery</a>
                        </li>
                        <li class="hover-up mr-0">
                            <a href="blog-category-grid.html"><i class="fi-rs-cross mr-10"></i>Spinach</a>
                        </li>
                    </ul>
                </div> --}}
            </div>
        </div>
    </div>
</div>
<!--Products Tabs-->
<section class="section-padding pb-5">
    <div class="container">
        <div class="section-title wow animate__animated animate__fadeIn">
            <h3 class="text-uppercase text-center">Product categories</h3>
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
            <div class="col-lg-12 col-md-12 mx-auto wow animate__animated animate__fadeIn" data-wow-delay=".4s">
                <div class="tab-content" id="myTabContent-1">
                    <div class="tab-pane fade show active" id="tab-one-1" role="tabpanel"
                        aria-labelledby="tab-one-1">
                        <div class="row">
                            <div class="col-xl-3 col-lg-4 col-md-6">
                                <div class="product-cart-wrap style-2">
                                    <div class="product-img-action-wrap">
                                        <div class="product-img">
                                            <a href="shop-product-right.html">
                                                <img src="{{ asset('public/assets/imgs/banner/banner-5.png') }}" alt="" />
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product-content-wrap">
                                        <div class="deals-countdown-wrap">
                                            <div class="deals-countdown" data-countdown="2025/03/25 00:00:00"></div>
                                        </div>
                                        <div class="deals-content">
                                            <h2><a href="shop-product-right.html">Seeds of Change Organic Quinoa, Brown</a></h2>
                                            <div class="product-rate-cover">
                                                <div class="product-rate d-inline-block">
                                                    <div class="product-rating" style="width: 90%"></div>
                                                </div>
                                                <span class="font-small ml-5 text-muted"> (4.0)</span>
                                            </div>
                                            <div>
                                                <span class="font-small text-muted">By <a href="vendor-details-1.html">NestFood</a></span>
                                            </div>
                                            <div class="product-card-bottom">
                                                <div class="product-price">
                                                    <span>$32.85</span>
                                                    <span class="old-price">$33.8</span>
                                                </div>
                                                <div class="add-cart">
                                                    <a class="add" href="shop-cart.html"><i class="fi-rs-shopping-cart mr-5"></i>Add </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                                <div class="product-cart-wrap">
                                    <div class="product-img-action-wrap">
                                        <div class="product-img product-img-zoom">
                                            <a href="shop-product-right.html">
                                                <img class="default-img"
                                                    src="assets/imgs/shop/product-10-1.jpg"
                                                    alt="" />
                                                <img class="hover-img"
                                                    src="assets/imgs/shop/product-10-2.jpg"
                                                    alt="" />
                                            </a>
                                        </div>
                                        <div class="product-action-1">
                                            <a aria-label="Quick view" class="action-btn small hover-up"
                                                data-bs-toggle="modal" data-bs-target="#quickViewModal"> <i
                                                    class="fi-rs-eye"></i></a>
                                            <a aria-label="Add To Wishlist"
                                                class="action-btn small hover-up"
                                                href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                                            <a aria-label="Compare" class="action-btn small hover-up"
                                                href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                        </div>
                                        <div
                                            class="product-badges product-badges-position product-badges-mrg">
                                            <span class="hot">Save 15%</span>
                                        </div>
                                    </div>
                                    <div class="product-content-wrap">
                                        <div class="product-category">
                                            <a href="shop-grid-right.html">Hodo Foods</a>
                                        </div>
                                        <h2><a href="shop-product-right.html">Canada Dry Ginger Ale – 2 L
                                                Bottle</a></h2>
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 80%"></div>
                                        </div>
                                        <div class="product-price mt-10">
                                            <span>$238.85 </span>
                                            <span class="old-price">$245.8</span>
                                        </div>
                                        <div class="sold mt-15 mb-15">
                                            <div class="progress mb-5">
                                                <div class="progress-bar" role="progressbar"
                                                    style="width: 50%" aria-valuemin="0"
                                                    aria-valuemax="100"></div>
                                            </div>
                                            <span class="font-xs text-heading"> Sold: 90/120</span>
                                        </div>
                                        <a href="shop-cart.html" class="btn w-100 hover-up"><i
                                                class="fi-rs-shopping-cart mr-5"></i>Add To Cart</a>
                                    </div>
                                </div>
                                <!--End product Wrap-->
                                <div class="product-cart-wrap">
                                    <div class="product-img-action-wrap">
                                        <div class="product-img product-img-zoom">
                                            <a href="shop-product-right.html">
                                                <img class="default-img"
                                                    src="assets/imgs/shop/product-15-1.jpg"
                                                    alt="" />
                                                <img class="hover-img"
                                                    src="assets/imgs/shop/product-15-2.jpg"
                                                    alt="" />
                                            </a>
                                        </div>
                                        <div class="product-action-1">
                                            <a aria-label="Quick view" class="action-btn small hover-up"
                                                data-bs-toggle="modal" data-bs-target="#quickViewModal"> <i
                                                    class="fi-rs-eye"></i></a>
                                            <a aria-label="Add To Wishlist"
                                                class="action-btn small hover-up"
                                                href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                                            <a aria-label="Compare" class="action-btn small hover-up"
                                                href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                        </div>
                                        <div
                                            class="product-badges product-badges-position product-badges-mrg">
                                            <span class="new">Save 35%</span>
                                        </div>
                                    </div>
                                    <div class="product-content-wrap">
                                        <div class="product-category">
                                            <a href="shop-grid-right.html">Hodo Foods</a>
                                        </div>
                                        <h2><a href="shop-product-right.html">Encore Seafoods Stuffed
                                                Alaskan</a></h2>
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 80%"></div>
                                        </div>
                                        <div class="product-price mt-10">
                                            <span>$238.85 </span>
                                            <span class="old-price">$245.8</span>
                                        </div>
                                        <div class="sold mt-15 mb-15">
                                            <div class="progress mb-5">
                                                <div class="progress-bar" role="progressbar"
                                                    style="width: 50%" aria-valuemin="0"
                                                    aria-valuemax="100"></div>
                                            </div>
                                            <span class="font-xs text-heading"> Sold: 90/120</span>
                                        </div>
                                        <a href="shop-cart.html" class="btn w-100 hover-up"><i
                                                class="fi-rs-shopping-cart mr-5"></i>Add To Cart</a>
                                    </div>
                                </div>
                                <!--End product Wrap-->
                                <div class="product-cart-wrap">
                                    <div class="product-img-action-wrap">
                                        <div class="product-img product-img-zoom">
                                            <a href="shop-product-right.html">
                                                <img class="default-img"
                                                    src="assets/imgs/shop/product-12-1.jpg"
                                                    alt="" />
                                                <img class="hover-img"
                                                    src="assets/imgs/shop/product-12-2.jpg"
                                                    alt="" />
                                            </a>
                                        </div>
                                        <div class="product-action-1">
                                            <a aria-label="Quick view" class="action-btn small hover-up"
                                                data-bs-toggle="modal" data-bs-target="#quickViewModal"> <i
                                                    class="fi-rs-eye"></i></a>
                                            <a aria-label="Add To Wishlist"
                                                class="action-btn small hover-up"
                                                href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                                            <a aria-label="Compare" class="action-btn small hover-up"
                                                href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                        </div>
                                        <div
                                            class="product-badges product-badges-position product-badges-mrg">
                                            <span class="sale">Sale</span>
                                        </div>
                                    </div>
                                    <div class="product-content-wrap">
                                        <div class="product-category">
                                            <a href="shop-grid-right.html">Hodo Foods</a>
                                        </div>
                                        <h2><a href="shop-product-right.html">Gorton’s Beer Battered Fish </a>
                                        </h2>
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 80%"></div>
                                        </div>
                                        <div class="product-price mt-10">
                                            <span>$238.85 </span>
                                            <span class="old-price">$245.8</span>
                                        </div>
                                        <div class="sold mt-15 mb-15">
                                            <div class="progress mb-5">
                                                <div class="progress-bar" role="progressbar"
                                                    style="width: 50%" aria-valuemin="0"
                                                    aria-valuemax="100"></div>
                                            </div>
                                            <span class="font-xs text-heading"> Sold: 90/120</span>
                                        </div>
                                        <a href="shop-cart.html" class="btn w-100 hover-up"><i
                                                class="fi-rs-shopping-cart mr-5"></i>Add To Cart</a>
                                    </div>
                                </div>
                                <!--End product Wrap-->
                                <div class="product-cart-wrap">
                                    <div class="product-img-action-wrap">
                                        <div class="product-img product-img-zoom">
                                            <a href="shop-product-right.html">
                                                <img class="default-img"
                                                    src="assets/imgs/shop/product-13-1.jpg"
                                                    alt="" />
                                                <img class="hover-img"
                                                    src="assets/imgs/shop/product-13-2.jpg"
                                                    alt="" />
                                            </a>
                                        </div>
                                        <div class="product-action-1">
                                            <a aria-label="Quick view" class="action-btn small hover-up"
                                                data-bs-toggle="modal" data-bs-target="#quickViewModal"> <i
                                                    class="fi-rs-eye"></i></a>
                                            <a aria-label="Add To Wishlist"
                                                class="action-btn small hover-up"
                                                href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                                            <a aria-label="Compare" class="action-btn small hover-up"
                                                href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                        </div>
                                        <div
                                            class="product-badges product-badges-position product-badges-mrg">
                                            <span class="best">Best sale</span>
                                        </div>
                                    </div>
                                    <div class="product-content-wrap">
                                        <div class="product-category">
                                            <a href="shop-grid-right.html">Hodo Foods</a>
                                        </div>
                                        <h2><a href="shop-product-right.html">Haagen-Dazs Caramel Cone Ice</a>
                                        </h2>
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 80%"></div>
                                        </div>
                                        <div class="product-price mt-10">
                                            <span>$238.85 </span>
                                            <span class="old-price">$245.8</span>
                                        </div>
                                        <div class="sold mt-15 mb-15">
                                            <div class="progress mb-5">
                                                <div class="progress-bar" role="progressbar"
                                                    style="width: 50%" aria-valuemin="0"
                                                    aria-valuemax="100"></div>
                                            </div>
                                            <span class="font-xs text-heading"> Sold: 90/120</span>
                                        </div>
                                        <a href="shop-cart.html" class="btn w-100 hover-up"><i
                                                class="fi-rs-shopping-cart mr-5"></i>Add To Cart</a>
                                    </div>
                                </div>
                                <!--End product Wrap-->
                                <div class="product-cart-wrap">
                                    <div class="product-img-action-wrap">
                                        <div class="product-img product-img-zoom">
                                            <a href="shop-product-right.html">
                                                <img class="default-img"
                                                    src="assets/imgs/shop/product-14-1.jpg"
                                                    alt="" />
                                                <img class="hover-img"
                                                    src="assets/imgs/shop/product-14-2.jpg"
                                                    alt="" />
                                            </a>
                                        </div>
                                        <div class="product-action-1">
                                            <a aria-label="Quick view" class="action-btn small hover-up"
                                                data-bs-toggle="modal" data-bs-target="#quickViewModal"> <i
                                                    class="fi-rs-eye"></i></a>
                                            <a aria-label="Add To Wishlist"
                                                class="action-btn small hover-up"
                                                href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                                            <a aria-label="Compare" class="action-btn small hover-up"
                                                href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                        </div>
                                        <div
                                            class="product-badges product-badges-position product-badges-mrg">
                                            <span class="hot">Save 15%</span>
                                        </div>
                                    </div>
                                    <div class="product-content-wrap">
                                        <div class="product-category">
                                            <a href="shop-grid-right.html">Hodo Foods</a>
                                        </div>
                                        <h2><a href="shop-product-right.html">Italian-Style Chicken
                                                Meatball</a></h2>
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 80%"></div>
                                        </div>
                                        <div class="product-price mt-10">
                                            <span>$238.85 </span>
                                            <span class="old-price">$245.8</span>
                                        </div>
                                        <div class="sold mt-15 mb-15">
                                            <div class="progress mb-5">
                                                <div class="progress-bar" role="progressbar"
                                                    style="width: 50%" aria-valuemin="0"
                                                    aria-valuemax="100"></div>
                                            </div>
                                            <span class="font-xs text-heading"> Sold: 90/120</span>
                                        </div>
                                        <a href="shop-cart.html" class="btn w-100 hover-up"><i
                                                class="fi-rs-shopping-cart mr-5"></i>Add To Cart</a>
                                    </div>
                                </div>
                                <!--End product Wrap-->
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="tab-three-1" role="tabpanel"
                        aria-labelledby="tab-three-1">
                        <div class="carausel-4-columns-cover arrow-center position-relative">
                            <div class="slider-arrow slider-arrow-2 carausel-4-columns-arrow"
                                id="carausel-4-columns-3-arrows"></div>
                            <div class="carausel-4-columns carausel-arrow-center" id="carausel-4-columns-3">
                                <div class="product-cart-wrap">
                                    <div class="product-img-action-wrap">
                                        <div class="product-img product-img-zoom">
                                            <a href="shop-product-right.html">
                                                <img class="default-img"
                                                    src="assets/imgs/shop/product-7-1.jpg" alt="" />
                                                <img class="hover-img"
                                                    src="assets/imgs/shop/product-7-2.jpg" alt="" />
                                            </a>
                                        </div>
                                        <div class="product-action-1">
                                            <a aria-label="Quick view" class="action-btn small hover-up"
                                                data-bs-toggle="modal" data-bs-target="#quickViewModal"> <i
                                                    class="fi-rs-eye"></i></a>
                                            <a aria-label="Add To Wishlist"
                                                class="action-btn small hover-up"
                                                href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                                            <a aria-label="Compare" class="action-btn small hover-up"
                                                href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                        </div>
                                        <div
                                            class="product-badges product-badges-position product-badges-mrg">
                                            <span class="hot">Save 15%</span>
                                        </div>
                                    </div>
                                    <div class="product-content-wrap">
                                        <div class="product-category">
                                            <a href="shop-grid-right.html">Hodo Foods</a>
                                        </div>
                                        <h2><a href="shop-product-right.html">Perdue Simply Smart Organics
                                                Gluten Free</a></h2>
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 80%"></div>
                                        </div>
                                        <div class="product-price mt-10">
                                            <span>$238.85 </span>
                                            <span class="old-price">$245.8</span>
                                        </div>
                                        <div class="sold mt-15 mb-15">
                                            <div class="progress mb-5">
                                                <div class="progress-bar" role="progressbar"
                                                    style="width: 50%" aria-valuemin="0"
                                                    aria-valuemax="100"></div>
                                            </div>
                                            <span class="font-xs text-heading"> Sold: 90/120</span>
                                        </div>
                                        <a href="shop-cart.html" class="btn w-100 hover-up"><i
                                                class="fi-rs-shopping-cart mr-5"></i>Add To Cart</a>
                                    </div>
                                </div>
                                <!--End product Wrap-->
                                <div class="product-cart-wrap">
                                    <div class="product-img-action-wrap">
                                        <div class="product-img product-img-zoom">
                                            <a href="shop-product-right.html">
                                                <img class="default-img"
                                                    src="assets/imgs/shop/product-8-1.jpg" alt="" />
                                                <img class="hover-img"
                                                    src="assets/imgs/shop/product-8-2.jpg" alt="" />
                                            </a>
                                        </div>
                                        <div class="product-action-1">
                                            <a aria-label="Quick view" class="action-btn small hover-up"
                                                data-bs-toggle="modal" data-bs-target="#quickViewModal"> <i
                                                    class="fi-rs-eye"></i></a>
                                            <a aria-label="Add To Wishlist"
                                                class="action-btn small hover-up"
                                                href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                                            <a aria-label="Compare" class="action-btn small hover-up"
                                                href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                        </div>
                                        <div
                                            class="product-badges product-badges-position product-badges-mrg">
                                            <span class="new">Save 35%</span>
                                        </div>
                                    </div>
                                    <div class="product-content-wrap">
                                        <div class="product-category">
                                            <a href="shop-grid-right.html">Hodo Foods</a>
                                        </div>
                                        <h2><a href="shop-product-right.html">Seeds of Change Organic
                                                Quinoa</a></h2>
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 80%"></div>
                                        </div>
                                        <div class="product-price mt-10">
                                            <span>$238.85 </span>
                                            <span class="old-price">$245.8</span>
                                        </div>
                                        <div class="sold mt-15 mb-15">
                                            <div class="progress mb-5">
                                                <div class="progress-bar" role="progressbar"
                                                    style="width: 50%" aria-valuemin="0"
                                                    aria-valuemax="100"></div>
                                            </div>
                                            <span class="font-xs text-heading"> Sold: 90/120</span>
                                        </div>
                                        <a href="shop-cart.html" class="btn w-100 hover-up"><i
                                                class="fi-rs-shopping-cart mr-5"></i>Add To Cart</a>
                                    </div>
                                </div>
                                <!--End product Wrap-->
                                <div class="product-cart-wrap">
                                    <div class="product-img-action-wrap">
                                        <div class="product-img product-img-zoom">
                                            <a href="shop-product-right.html">
                                                <img class="default-img"
                                                    src="assets/imgs/shop/product-9-1.jpg" alt="" />
                                                <img class="hover-img"
                                                    src="assets/imgs/shop/product-9-2.jpg" alt="" />
                                            </a>
                                        </div>
                                        <div class="product-action-1">
                                            <a aria-label="Quick view" class="action-btn small hover-up"
                                                data-bs-toggle="modal" data-bs-target="#quickViewModal"> <i
                                                    class="fi-rs-eye"></i></a>
                                            <a aria-label="Add To Wishlist"
                                                class="action-btn small hover-up"
                                                href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                                            <a aria-label="Compare" class="action-btn small hover-up"
                                                href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                        </div>
                                        <div
                                            class="product-badges product-badges-position product-badges-mrg">
                                            <span class="sale">Sale</span>
                                        </div>
                                    </div>
                                    <div class="product-content-wrap">
                                        <div class="product-category">
                                            <a href="shop-grid-right.html">Hodo Foods</a>
                                        </div>
                                        <h2><a href="shop-product-right.html">Signature Wood-Fired
                                                Mushroom</a></h2>
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 80%"></div>
                                        </div>
                                        <div class="product-price mt-10">
                                            <span>$238.85 </span>
                                            <span class="old-price">$245.8</span>
                                        </div>
                                        <div class="sold mt-15 mb-15">
                                            <div class="progress mb-5">
                                                <div class="progress-bar" role="progressbar"
                                                    style="width: 50%" aria-valuemin="0"
                                                    aria-valuemax="100"></div>
                                            </div>
                                            <span class="font-xs text-heading"> Sold: 90/120</span>
                                        </div>
                                        <a href="shop-cart.html" class="btn w-100 hover-up"><i
                                                class="fi-rs-shopping-cart mr-5"></i>Add To Cart</a>
                                    </div>
                                </div>
                                <!--End product Wrap-->
                                <div class="product-cart-wrap">
                                    <div class="product-img-action-wrap">
                                        <div class="product-img product-img-zoom">
                                            <a href="shop-product-right.html">
                                                <img class="default-img"
                                                    src="assets/imgs/shop/product-13-1.jpg"
                                                    alt="" />
                                                <img class="hover-img"
                                                    src="assets/imgs/shop/product-13-2.jpg"
                                                    alt="" />
                                            </a>
                                        </div>
                                        <div class="product-action-1">
                                            <a aria-label="Quick view" class="action-btn small hover-up"
                                                data-bs-toggle="modal" data-bs-target="#quickViewModal"> <i
                                                    class="fi-rs-eye"></i></a>
                                            <a aria-label="Add To Wishlist"
                                                class="action-btn small hover-up"
                                                href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                                            <a aria-label="Compare" class="action-btn small hover-up"
                                                href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                        </div>
                                        <div
                                            class="product-badges product-badges-position product-badges-mrg">
                                            <span class="best">Best sale</span>
                                        </div>
                                    </div>
                                    <div class="product-content-wrap">
                                        <div class="product-category">
                                            <a href="shop-grid-right.html">Hodo Foods</a>
                                        </div>
                                        <h2><a href="shop-product-right.html">Simply Lemonade with Raspberry
                                                Juice</a></h2>
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 80%"></div>
                                        </div>
                                        <div class="product-price mt-10">
                                            <span>$238.85 </span>
                                            <span class="old-price">$245.8</span>
                                        </div>
                                        <div class="sold mt-15 mb-15">
                                            <div class="progress mb-5">
                                                <div class="progress-bar" role="progressbar"
                                                    style="width: 50%" aria-valuemin="0"
                                                    aria-valuemax="100"></div>
                                            </div>
                                            <span class="font-xs text-heading"> Sold: 90/120</span>
                                        </div>
                                        <a href="shop-cart.html" class="btn w-100 hover-up"><i
                                                class="fi-rs-shopping-cart mr-5"></i>Add To Cart</a>
                                    </div>
                                </div>
                                <!--End product Wrap-->
                                <div class="product-cart-wrap">
                                    <div class="product-img-action-wrap">
                                        <div class="product-img product-img-zoom">
                                            <a href="shop-product-right.html">
                                                <img class="default-img"
                                                    src="assets/imgs/shop/product-14-1.jpg"
                                                    alt="" />
                                                <img class="hover-img"
                                                    src="assets/imgs/shop/product-14-2.jpg"
                                                    alt="" />
                                            </a>
                                        </div>
                                        <div class="product-action-1">
                                            <a aria-label="Quick view" class="action-btn small hover-up"
                                                data-bs-toggle="modal" data-bs-target="#quickViewModal"> <i
                                                    class="fi-rs-eye"></i></a>
                                            <a aria-label="Add To Wishlist"
                                                class="action-btn small hover-up"
                                                href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                                            <a aria-label="Compare" class="action-btn small hover-up"
                                                href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                        </div>
                                        <div
                                            class="product-badges product-badges-position product-badges-mrg">
                                            <span class="hot">Save 15%</span>
                                        </div>
                                    </div>
                                    <div class="product-content-wrap">
                                        <div class="product-category">
                                            <a href="shop-grid-right.html">Hodo Foods</a>
                                        </div>
                                        <h2><a href="shop-product-right.html">Organic Quinoa, Brown, & Red
                                                Rice</a></h2>
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 80%"></div>
                                        </div>
                                        <div class="product-price mt-10">
                                            <span>$238.85 </span>
                                            <span class="old-price">$245.8</span>
                                        </div>
                                        <div class="sold mt-15 mb-15">
                                            <div class="progress mb-5">
                                                <div class="progress-bar" role="progressbar"
                                                    style="width: 50%" aria-valuemin="0"
                                                    aria-valuemax="100"></div>
                                            </div>
                                            <span class="font-xs text-heading"> Sold: 90/120</span>
                                        </div>
                                        <a href="shop-cart.html" class="btn w-100 hover-up"><i
                                                class="fi-rs-shopping-cart mr-5"></i>Add To Cart</a>
                                    </div>
                                </div>
                                <!--End product Wrap-->
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
@endsection
