<nav>
    <ul class="mx-auto">
        {{-- <li class="hot-deals"><img src="assets/imgs/theme/icons/icon-hot.svg"
                alt="hot deals" /><a href="shop-grid-right.html">Deals</a></li> --}}
        <li>
            <a class="active" href="{{ url('/') }}">Home </a>
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


                        </div>
                    </div>
                </div>


            </ul>
        </li>
        <li>
            <a class="active" href="#">Customize Switches </a>
        </li>
        <li class="position-static">
            <a href="#">Partners <i class="fi-rs-angle-down"></i></a>
            <ul class="mega-menu">
                <div class="row">
                    <div class="col-3 px-0 " >
                        <li class="sub-mega-menu col-12 px-0">
                            {{-- <div class="menu-banner-wrap"> --}}
                                <ul>
                                    @foreach ($partner_parent_categories as $partner_parent_category)
                                    <li>
                                        <a  id="{{ str_replace(' ', '_',strtolower($partner_parent_category->parent_category_name)) }}" onclick="visible_partner({{ str_replace(' ', '_',strtolower($partner_parent_category->id)) }})">{{ $partner_parent_category->parent_category_name }}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            {{-- </div> --}}
                        </li>
                    </div>
                    <div class="col-9">
                        <div id="partner_visibility">

                        </div>
                    </div>
                </div>


            </ul>
        </li>

        <li>
            <a class="active" href="#">Vendors </a>
        </li>
    </ul>
</nav>
