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
                                    @foreach ($parent_categories as $parent_category)
                                    <li>
                                        <a  id="{{ str_replace(' ', '_',strtolower($parent_category->parent_category_name)) }}" onclick="visible({{ str_replace(' ', '_',strtolower($parent_category->id)) }})">{{ $parent_category->parent_category_name }}</a> 
                                    </li>
                                    @endforeach
                                </ul>
                            {{-- </div> --}} 
                        </li>
                    </div>
                    <div class="col-9">
                        <div id="products_visibility">
                            
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
                                    @foreach ($solution_parent_categories as $solution_parent_category)
                                    <li>
                                        <a  id="{{ str_replace(' ', '_',strtolower($solution_parent_category->parent_category_name)) }}" onclick="visible_solution({{ str_replace(' ', '_',strtolower($solution_parent_category->id)) }})">{{ $solution_parent_category->parent_category_name }}</a> 
                                    </li>
                                    @endforeach
                                </ul>
                            {{-- </div> --}}
                        </li>
                    </div>
                    <div class="col-9">
                        <div id="solution_visibility">
                            
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
                                    @foreach ($support_parent_categories as $support_parent_category)
                                    <li>
                                        <a  id="{{ str_replace(' ', '_',strtolower($support_parent_category->parent_category_name)) }}" onclick="visible_support({{ str_replace(' ', '_',strtolower($support_parent_category->id)) }})">{{ $support_parent_category->parent_category_name }}</a> 
                                    </li>
                                    @endforeach
                                </ul>
                            {{-- </div> --}}
                        </li>
                    </div>
                    <div class="col-9">
                        <div id="support_visibility">
                            <li class="sub-mega-menu col-4 my-0">
                                <ul>
                                    <li><a href="shop-product-right.html">TandemVu PTZ Cameras</a></li>
                                    <li><a href="shop-product-right.html">Ultra Series</a></li>
                                    <li><a href="shop-product-right.html">Pro Series</a></li>
                                    <li><a href="shop-product-right.html">PT Series</a></li>
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