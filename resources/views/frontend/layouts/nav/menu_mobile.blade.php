<nav>
    <ul class="mobile-menu font-heading">

        <li class="menu-item-has-children">
            <a href="{{ url('/') }}">Home</a>
        </li>

        <li class="menu-item-has-children">
            <a href="#">Products</a>
            <ul class="dropdown">
                @foreach ($parent_categories as $parent_category)
                    <li class="menu-item-has-children">
                        <a href="#">{{ $parent_category->parent_category_name }}</a>

                        <ul class="dropdown">
                            @foreach ($parent_category->category as $category)
                                @php
                                    $sub_categories = DB::table('sub_categories')
                                        ->where([
                                            ['sub_category_status', 1],
                                            ['sub_category_delete', 0],
                                            ['category_id', $category->id],
                                        ])
                                        ->select('id', 'sub_category_name')
                                        ->get();
                                @endphp
                                <li class="menu-item-has-children">
                                    <a href="#">{{ $category->category_name }}</a>
                                    @if (count($sub_categories) > 0)
                                        <ul class="dropdown">
                                            @foreach ($sub_categories as $sub_category)
                                                <li><a
                                                        href="{{ URL::to('/') }}/products?subcategory={{ $sub_category->sub_category_name }}&id={{ $sub_category->id }}">{{ $sub_category->sub_category_name }}</a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    @endif

                                </li>
                            @endforeach
                        </ul>


                    </li>
                @endforeach
            </ul>
        </li>
        <li class="menu-item-has-children">
            <a href="#">Solution</a>
            <ul class="dropdown">
                @foreach ($solution_parent_categories as $parent_category)
                    <li class="menu-item-has-children">
                        <a href="#">{{ $parent_category->parent_category_name }}</a>

                        <ul class="dropdown">
                            @foreach ($parent_category->category as $category)
                                @php
                                    $solution_sub_categories = DB::table('solution_sub_categories')
                                        ->where([
                                            ['sub_category_status', 1],
                                            ['sub_category_delete', 0],
                                            ['category_id', $category->id],
                                        ])
                                        ->select('id', 'sub_category_name')
                                        ->get();
                                @endphp
                                <li class="menu-item-has-children">
                                    <a href="shop-product-right.html">{{ $category->category_name }}</a>
                                    @if (count($solution_sub_categories) > 0)
                                        <ul class="dropdown">

                                            @foreach ($solution_sub_categories as $sub_category)
                                                <li><a
                                                        href="shop-product-right.html">{{ $sub_category->sub_category_name }}</a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    @endif

                                </li>
                            @endforeach
                        </ul>


                    </li>
                @endforeach
            </ul>
        </li>
        <li class="menu-item-has-children">
            <a href="#">Support</a>
            <ul class="dropdown">
                @foreach ($support_parent_categories as $parent_category)
                    <li class="menu-item-has-children">
                        <a href="#">{{ $parent_category->parent_category_name }}</a>

                        <ul class="dropdown">
                            @foreach ($parent_category->category as $category)
                                
                                <li class="menu-item-has-children">
                                    <a href="shop-product-right.html">{{ $category->category_name }}</a>
                                   
                                </li>
                            @endforeach
                        </ul>


                    </li>
                @endforeach
            </ul>
        </li>

        <li class="menu-item-has-children">
            <a href="#">Customize Switches</a>
        </li>

        <li class="menu-item-has-children">
            <a href="#">Partners</a>
            <ul class="dropdown">
                @foreach ($partner_parent_categories as $partner_parent_category)
                <li class="menu-item-has-children">
                    
                    <a href="#">{{ $partner_parent_category->parent_category_name }}</a>
                    <ul class="dropdown">
                        @foreach ($partner_parent_category->category as $category)
                            <li class="menu-item-has-children">
                                <a href="shop-product-right.html">{{ $category->category_name }}</a>
                            </li>
                        @endforeach
                    </ul>
                </li>
                @endforeach
            </ul>
        </li>

        <li>
            <a class="active" href="#">Vendors </a>
        </li>
    </ul>
</nav>
