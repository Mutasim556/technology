@extends('frontend.layouts.front_layouts')
@section('body')
    @if (isset(request()->category))
        <div class="page-header mt-30 mb-50">
            <div class="container">
                <div class="archive-header">
                    <div class="row align-items-center">

                        <div class="col-xl-12">
                            <h1 class="mb-15">{{ $category->category_name }}</h1>
                            <div class="breadcrumb">
                                <a href="{{ url('/') }}" rel="nofollow"><i class="fi-rs-home mr-5"></i>Home</a>
                                <span></span> Product <span></span>
                                {{ $category->parentCategory->parent_category_name }}<span></span>
                                {{ $category->category_name }}
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
                <div class="section-title wow animate__animated animate__fadeIn ">
                    <h3 class="text-uppercase text-center" id="header_visible">Product categories</h3>
                    <ul class="nav nav-tabs links " id="myTab-2" role="tablist">
                        <li class="nav-item py-3 px-2 m-1" style="border:1px solid #198754;border-radius:10px;"
                            role="presentation">
                            <button class="nav-link active " style="margin:auto;" id="nav-tab-one-1" data-bs-toggle="tab"
                                data-bs-target="#tab-one-1" type="button" role="tab" aria-controls="tab-one"
                                aria-selected="true" onclick="header_visible('Product Categories')">Product
                                Categories</button>
                        </li>
                        <li class="nav-item py-3 px-2 m-1" style="border:1px solid #198754;border-radius:10px;"
                            role="presentation">
                            <button class="nav-link" style="margin:auto;" id="nav-tab-two-1" data-bs-toggle="tab"
                                data-bs-target="#tab-two-1" type="button" role="tab" aria-controls="tab-two"
                                aria-selected="false" onclick="header_visible('What we offer ?')">Whaat we
                                offer ?</button>
                        </li>
                        {{-- <li class="nav-item py-3 px-2 m-1" style="border:1px solid #198754;border-radius:10px;"
                            role="presentation">
                            <button class="nav-link" style="margin:auto;" id="nav-tab-three-1" data-bs-toggle="tab" data-bs-target="#tab-three-1"
                                type="button" role="tab" aria-controls="tab-three" aria-selected="false"  onclick="header_visible('Prodcut Spotlight')">Prodcut
                                Spotlight</button>
                        </li> --}}
                        <li class="nav-item py-3 px-2 m-1" style="border:1px solid #198754;border-radius:10px;"
                            role="presentation">
                            <button class="nav-link" style="margin:auto;" id="nav-tab-four-1" data-bs-toggle="tab"
                                data-bs-target="#tab-four-1" type="button" role="tab" aria-controls="tab-four"
                                aria-selected="false" onclick="header_visible('Download')">Download</button>
                        </li>
                        <li class="nav-item py-3 px-2 m-1" style="border:1px solid #198754;border-radius:10px;"
                            role="presentation">
                            <button class="nav-link" style="margin:auto;" id="nav-tab-five-1" data-bs-toggle="tab"
                                data-bs-target="#tab-five-1" type="button" role="tab" aria-controls="tab-five"
                                aria-selected="false" onclick="header_visible('Related Links')">Related
                                Links</button>
                        </li>
                    </ul>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 mx-auto wow animate__animated animate__fadeIn" data-wow-delay=".4s">
                        <div class="tab-content" id="myTabContent-1">
                            <div class="tab-pane fade show active" id="tab-one-1" role="tabpanel"
                                aria-labelledby="tab-one-1">
                                <div class="row">
                                    @foreach ($category->subCategory as $subcategory)
                                        <div class="col-xl-3 col-lg-4 col-md-6">
                                            <div class="product-cart-wrap style-2">
                                                <div class="product-img-action-wrap">
                                                    <div class="product-img">
                                                        <a href="shop-product-right.html">
                                                            <img src="{{ asset($subcategory->sub_category_image ? $subcategory->sub_category_image : 'public/assets/imgs/banner/banner-5.png') }}"
                                                                alt="" />
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-content-wrap">
                                                    <div class="deals-content text-center">
                                                        <h2><a
                                                                href="shop-product-right.html">{{ $subcategory->sub_category_name }}</a>
                                                        </h2>
                                                        {{-- <div class="product-rate-cover">
                                                        <div class="product-rate d-inline-block">
                                                            <div class="product-rating" style="width: 90%"></div>
                                                        </div>
                                                        <span class="font-small ml-5 text-muted"> (4.0)</span>
                                                    </div>
                                                    <div>
                                                        <span class="font-small text-muted">By <a
                                                                href="vendor-details-1.html">NestFood</a></span>
                                                    </div> --}}

                                                        <a class="btn w-100 hover-up" style="margin-top: 20px;"
                                                            href="shop-cart.html">
                                                            {{-- <i class="fi-rs-shopping-cart mr-5"></i> --}}
                                                            View Products
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach

                                </div>
                            </div>
                            <!--End tab-pane-->
                            <div class="tab-pane fade" id="tab-two-1" role="tabpanel" aria-labelledby="tab-two-1">
                                <div class="row text-center mt-2">
                                    <div class="col-12" style="font-size: 18px;font-weight:700">
                                        Security requirements and application settings vary. That's why Hikvision designs
                                        and tailors network cameras to meet various needs, from general video monitoring to
                                        video content analytics with deep learning algorithms and beyond.



                                        By rendering high-quality images across a range of lighting conditions, minimizing
                                        storage and bandwidth requirements and providing data-powered situational awareness,
                                        Hikvision network cameras can help users make smart decisions. Our network cameras
                                        are the ideal choice for hundreds of application scenarios.
                                    </div>
                                </div>
                            </div>
                            {{-- <div class="tab-pane fade" id="tab-three-1" role="tabpanel" aria-labelledby="tab-two-1">
                                <div class="row text-center mt-2">
                                    <div class="col-12" style="font-size: 18px;font-weight:700">
                                        Security requirements and application settings vary. That's why Hikvision designs
                                        and tailors network cameras to meet various needs, from general video monitoring to
                                        video content analytics with deep learning algorithms and beyond.



                                        By rendering high-quality images across a range of lighting conditions, minimizing
                                        storage and bandwidth requirements and providing data-powered situational awareness,
                                        Hikvision network cameras can help users make smart decisions. Our network cameras
                                        are the ideal choice for hundreds of application scenarios.
                                    </div>
                                </div>
                            </div> --}}
                            <div class="tab-pane fade" id="tab-four-1" role="tabpanel" aria-labelledby="tab-two-1">
                                <div class="row text-center mt-2">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-1-5 col-md-4 col-12 col-sm-6 mb-md-4 mb-xl-0">
                                                <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                                                    data-wow-delay="0">
                                                    <div class="banner-icon">
                                                        <img src="{{ asset('public/assets/imgs/theme/icons/icon-1.svg') }}"
                                                            alt="" />
                                                    </div>
                                                    <div class="banner-text">
                                                        <h3 class="icon-box-title">Blog</h3>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                                                <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                                                    data-wow-delay=".1s">
                                                    <div class="banner-icon">
                                                        <img src="{{ asset('public/assets/imgs/theme/icons/icon-2.svg') }}"
                                                            alt="" />
                                                    </div>
                                                    <div class="banner-text">
                                                        <h3 class="icon-box-title">E-learning</h3>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                                                <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                                                    data-wow-delay=".2s">
                                                    <div class="banner-icon">
                                                        <img src="{{ asset('public/assets/imgs/theme/icons/icon-3.svg') }}"
                                                            alt="" />
                                                    </div>
                                                    <div class="banner-text">
                                                        <h3 class="icon-box-title">Success Stories</h3>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                                                <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                                                    data-wow-delay=".3s">
                                                    <div class="banner-icon">
                                                        <img src="{{ asset('public/assets/imgs/theme/icons/icon-4.svg') }}"
                                                            alt="" />
                                                    </div>
                                                    <div class="banner-text">
                                                        <h3 class="icon-box-title">Technologies</h3>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                                                <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                                                    data-wow-delay=".4s">
                                                    <div class="banner-icon">
                                                        <img src="{{ asset('public/assets/imgs/theme/icons/icon-5.svg') }}"
                                                            alt="" />
                                                    </div>
                                                    <div class="banner-text">
                                                        <h3 class="icon-box-title">Sustainability</h3>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab-five-1" role="tabpanel" aria-labelledby="tab-two-1">
                                <div class="row text-center mt-2">
                                    <div class="col-12" style="font-size: 18px;font-weight:700">
                                        Security requirements and application settings vary. That's why Hikvision designs
                                        and tailors network cameras to meet various needs, from general video monitoring to
                                        video content analytics with deep learning algorithms and beyond.



                                        By rendering high-quality images across a range of lighting conditions, minimizing
                                        storage and bandwidth requirements and providing data-powered situational awareness,
                                        Hikvision network cameras can help users make smart decisions. Our network cameras
                                        are the ideal choice for hundreds of application scenarios.
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
    @elseif (request()->subcategory)
        <div class="page-header mt-30 mb-50">
            <div class="container">
                <div class="archive-header">
                    <div class="row align-items-center">

                        <div class="col-xl-12">
                            <h1 class="mb-15">{{ $subcategory->sub_category_name }}</h1>
                            <div class="breadcrumb">
                                <a href="{{ url('/') }}" rel="nofollow"><i class="fi-rs-home mr-5"></i>Home</a>
                                <span></span> Product <span></span>
                                {{ $subcategory->parentCategory->parent_category_name }}<span></span>
                                {{ $subcategory->category->category_name }}<span></span>{{ $subcategory->sub_category_name }}
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

        <div class="container mb-30">
            <div class="row">
                <div class="col-lg-4-5">
                    <div class="shop-product-fillter">
                        <div class="totall-product">
                            <p>We found <strong class="text-brand">{{ count($subcategory->product) }}</strong> items for you!</p>
                        </div>
                        <div class="sort-by-product-area">
                            <div class="sort-by-cover mr-10">
                                <div class="sort-by-product-wrap">
                                    <div class="sort-by">
                                        <span><i class="fi-rs-apps"></i>Show:</span>
                                    </div>
                                    <div class="sort-by-dropdown-wrap">
                                        <span> 50 <i class="fi-rs-angle-small-down"></i></span>
                                    </div>
                                </div>
                                <div class="sort-by-dropdown">
                                    <ul>
                                        <li><a class="active" href="#">50</a></li>
                                        <li><a href="#">100</a></li>
                                        <li><a href="#">150</a></li>
                                        <li><a href="#">200</a></li>
                                        <li><a href="#">All</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="sort-by-cover">
                                <div class="sort-by-product-wrap">
                                    <div class="sort-by">
                                        <span><i class="fi-rs-apps-sort"></i>Sort by:</span>
                                    </div>
                                    <div class="sort-by-dropdown-wrap">
                                        <span> Featured <i class="fi-rs-angle-small-down"></i></span>
                                    </div>
                                </div>
                                <div class="sort-by-dropdown">
                                    <ul>
                                        <li><a class="active" href="#">Featured</a></li>
                                        <li><a href="#">Price: Low to High</a></li>
                                        <li><a href="#">Price: High to Low</a></li>
                                        <li><a href="#">Release Date</a></li>
                                        <li><a href="#">Avg. Rating</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row product-grid px-3">
                        @if (count($subcategory->product)>0)
                            @foreach ($subcategory->product as $product)
                                <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                                    <div class="product-cart-wrap mb-30">
                                        <div class="product-img-action-wrap">
                                            <div class="product-img product-img-zoom">
                                                <a href="shop-product-right.html">
                                                    @php
                                                        $image = explode(',',$product->image);
                                                    @endphp
                                                    <img class="default-img" src="{{ $image[0]?asset($image[0]):'' }}"
                                                        alt="" />
                                                    {{-- <img class="hover-img" src="{{ $image[1]?asset($image[1]):'' }}"
                                                        alt="" /> --}}
                                                </a>
                                            </div>
                                            <div class="product-action-1">
                                                <a aria-label="Add To Wishlist" class="action-btn" href="shop-wishlist.html"><i
                                                        class="fi-rs-heart"></i></a>
                                                <a aria-label="Compare" class="action-btn" href="shop-compare.html"><i
                                                        class="fi-rs-shuffle"></i></a>
                                            </div>
                                            <div class="product-badges product-badges-position product-badges-mrg">
                                                <span class="{{ $product->product_group=='new'?'new':( $product->product_group=='featured'?'hot':'sale') }}">{{ $product->product_group }}</span>
                                            </div>
                                        </div>
                                        <div class="product-content-wrap text-center mt-4">
                                            <h2 style="font-weight: 900;"><a href="shop-product-right.html">{{ $product->name }}</a></h2>
                                            <span style="font-size:12px;">{{ $product->short_description }}</span>
                                            
                                            <div class="product-card-bottom">
                                                <a class="btn w-100" href="shop-cart.html"><i class="fi-rs-shopping-cart mr-5"></i>View details </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--end product card-->
                            @endforeach
                        @else
                        <div class="col-lg-6 col-md-4 col-12 col-sm-6 mx-auto text-center mt-2" style="box-shadow: 0px 0px 10px rgb(5, 141, 5);padding:30px;border-radius:10px;">
                            <h2>Opps ! No Product Found</h2>
                        </div>
                        @endif
                        
                    </div>
                    <!--product grid-->
                    {{-- <div class="pagination-area mt-20 mb-20">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-start">
                                <li class="page-item">
                                    <a class="page-link" href="#"><i class="fi-rs-arrow-small-left"></i></a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item active"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link dot" href="#">...</a></li>
                                <li class="page-item"><a class="page-link" href="#">6</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#"><i class="fi-rs-arrow-small-right"></i></a>
                                </li>
                            </ul>
                        </nav>
                    </div> --}}
                    
                    <!--End Deals-->
                </div>
                <div class="col-lg-1-5 primary-sidebar sticky-sidebar">
                    <div class="sidebar-widget widget-category-2 mb-30">
                        <h5 class="section-title style-1 mb-30">Similar category</h5>
                        <ul>
                            @foreach ($subcategories as $subcategory)
                            <li class="px-1 text-center">
                                <a class="text-center mx-auto" href="{{ URL::to('/') }}/products?subcategory={{ $subcategory->sub_category_name }}&id={{  $subcategory->id }}">{{ $subcategory->sub_category_name }}</a>
                            </li>
                            @endforeach
                            
                        </ul>
                    </div>
                    <!-- Fillter By Price -->
                    <div class="sidebar-widget price_range range mb-30">
                        <h5 class="section-title style-1 mb-30">Fill by price</h5>
                        <div class="price-filter">
                            <div class="price-filter-inner">
                                <div id="slider-range" class="mb-20"></div>
                                <div class="d-flex justify-content-between">
                                    <div class="caption">From: <strong id="slider-range-value1"
                                            class="text-brand"></strong></div>
                                    <div class="caption">To: <strong id="slider-range-value2"
                                            class="text-brand"></strong></div>
                                </div>
                            </div>
                        </div>
                        <div class="list-group">
                            <div class="list-group-item mb-10 mt-10">
                                <label class="fw-900">Color</label>
                                <div class="custome-checkbox">
                                    <input class="form-check-input" type="checkbox" name="checkbox"
                                        id="exampleCheckbox1" value="" />
                                    <label class="form-check-label" for="exampleCheckbox1"><span>Red (56)</span></label>
                                    <br />
                                    <input class="form-check-input" type="checkbox" name="checkbox"
                                        id="exampleCheckbox2" value="" />
                                    <label class="form-check-label" for="exampleCheckbox2"><span>Green
                                            (78)</span></label>
                                    <br />
                                    <input class="form-check-input" type="checkbox" name="checkbox"
                                        id="exampleCheckbox3" value="" />
                                    <label class="form-check-label" for="exampleCheckbox3"><span>Blue
                                            (54)</span></label>
                                </div>
                                <label class="fw-900 mt-15">Item Condition</label>
                                <div class="custome-checkbox">
                                    <input class="form-check-input" type="checkbox" name="checkbox"
                                        id="exampleCheckbox11" value="" />
                                    <label class="form-check-label" for="exampleCheckbox11"><span>New
                                            (1506)</span></label>
                                    <br />
                                    <input class="form-check-input" type="checkbox" name="checkbox"
                                        id="exampleCheckbox21" value="" />
                                    <label class="form-check-label" for="exampleCheckbox21"><span>Refurbished
                                            (27)</span></label>
                                    <br />
                                    <input class="form-check-input" type="checkbox" name="checkbox"
                                        id="exampleCheckbox31" value="" />
                                    <label class="form-check-label" for="exampleCheckbox31"><span>Used
                                            (45)</span></label>
                                </div>
                            </div>
                        </div>
                        <a href="shop-grid-right.html" class="btn btn-sm btn-default"><i
                                class="fi-rs-filter mr-5"></i> Fillter</a>
                    </div>
                    <!-- Product sidebar Widget -->
                    
                    <div class="banner-img wow fadeIn mb-lg-0 animated d-lg-block d-none">
                        <img src="assets/imgs/banner/banner-11.png" alt="" />
                        <div class="banner-text">
                            <span>Oganic</span>
                            <h4>
                                Save 17% <br />
                                on <span class="text-brand">Oganic</span><br />
                                Juice
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif

@endsection
@section('js')
    <script>
        function header_visible(x) {
            $('#header_visible').empty().append(x);
        }
    </script>
@endsection
