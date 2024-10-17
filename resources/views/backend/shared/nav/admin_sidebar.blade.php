<ul class="sidebar-links" id="simple-bar">
    <li class="sidebar-list">
        <a class="sidebar-link sidebar-title link-nav" href="{{ route('admin.index') }}" aria-expanded="false"><i
                data-feather="home"></i><span>{{ __('admin_local.Dashboard') }}</span>
        </a>
    </li>
    @if (hasPermission(['user-index', 'user-create', 'user-update', 'user-delete']))
        <li class="sidebar-list">
            <a class="sidebar-link sidebar-title" href="javascript:void(0)" aria-expanded="false">
                <i data-feather="user-plus"></i>
                <span class="lan-3">{{ __('admin_local.Users') }}</span> 
            </a>
            <ul class="sidebar-submenu">
                <li>
                    <a href="{{ route('admin.user.index') }}" class="sidebar-link">
                        <span> {{ __('admin_local.User List') }} </span>
                    </a>
                </li>
            </ul>
        </li>
    @endif
    @if (hasPermission(['unit-index','brand-index','size-index','parent-category-index','category-index','product-store']))
        <li class="sidebar-list">
            <a class="sidebar-link sidebar-title" href="javascript:void(0)"
                aria-expanded="false">
                <i data-feather="package"></i>
                <span class="lan-3">{{ __('admin_local.Product') }}</span>
            </a>
            <ul class="sidebar-submenu">
                @if (hasPermission(['unit-index']))
                    <li>
                        <a href="{{ route('admin.product.unit.index') }}" class="sidebar-link">
                            <span > {{ __('admin_local.Units') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['brand-index']))
                    <li>
                        <a href="{{ route('admin.product.brand.index') }}" class="sidebar-link">
                            
                            <span > {{ __('admin_local.Brand') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['size-index']))
                    <li>
                        <a href="{{ route('admin.product.size.index') }}" class="sidebar-link">
                            
                            <span > {{ __('admin_local.Size') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['parent-category-index']))
                    <li>
                        <a href="{{ route('admin.product.parent-category.index') }}" class="sidebar-link">
                            
                            <span > {{ __('admin_local.Parent Category') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['category-index']))
                    <li>
                        <a href="{{ route('admin.product.category.index') }}" class="sidebar-link">
                            
                            <span > {{ __('admin_local.Category') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['sub-category-index']))
                    <li>
                        <a href="{{ route('admin.product.sub-category.index') }}" class="sidebar-link">
                            
                            <span > {{ __('admin_local.Sub Category') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['product-index']))
                    <li>
                        <a href="{{ route('admin.product.index') }}" class="sidebar-link">
                            <span > {{ __('admin_local.Product List') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['product-store']))
                    <li>
                        <a href="{{ route('admin.product.create') }}" class="sidebar-link">
                            <span > {{ __('admin_local.Add Product') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['print-barcode']))
                    <li>
                        <a href="{{ route('admin.product.printBarcode') }}" class="sidebar-link">
                            <span > {{ __('admin_local.Print Barcode') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['adjustment-index']))
                    <li>
                        <a href="{{ route('admin.productAdjustment.index') }}" class="sidebar-link">
                            <span > {{ __('admin_local.Adjustment List') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['adjustment-store']))
                    <li>
                        <a href="{{ route('admin.productAdjustment.create') }}" class="sidebar-link">
                            <span > {{ __('admin_local.Add Adjustment') }} </span>
                        </a>
                    </li>
                @endif
            </ul>
        </li>
        
    @endif
    @if (hasPermission(['solution-parent-category-index','solution-category-index','solution-sub-category-index','solution-index']))
        <li class="sidebar-list">
            <a class="sidebar-link sidebar-title" href="javascript:void(0)" aria-expanded="false">
                <i data-feather="check-circle"></i>
                <span class="lan-3">{{ __('admin_local.Solutions') }}</span>
            </a>
            <ul class="sidebar-submenu">
                @if (hasPermission(['solution-parent-category-index', 'solution-parent-category-create', 'solution-parent-category-update', 'solution-parent-category-delete']))
                    <li>
                        <a href="{{ route('admin.solution.parent-category.index') }}" class="sidebar-link">
                            <span> {{ __('admin_local.Parent Category') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['solution-category-index', 'solution-category-create', 'solution-category-update', 'solution-category-delete']))
                    <li>
                        <a href="{{ route('admin.solution.category.index') }}" class="sidebar-link">
                            <span> {{ __('admin_local.Category') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['solution-sub-category-index', 'solution-sub-category-create', 'solution-sub-category-update', 'solution-sub-category-delete']))
                    <li>
                        <a href="{{ route('admin.solution.sub-category.index') }}" class="sidebar-link">
                            <span> {{ __('admin_local.Sub Category') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['solution-create']))
                    <li>
                        <a href="{{ route('admin.solution.create') }}" class="sidebar-link">
                            <span> {{ __('admin_local.Add Solution') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['solution-index', 'solution-update', 'solution-delete']))
                    <li>
                        <a href="{{ route('admin.solution.index') }}" class="sidebar-link">
                            <span> {{ __('admin_local.View Solution') }} </span>
                        </a>
                    </li>
                @endif
            </ul>
        </li>
    @endif
    @if (hasPermission(['support-parent-category-index','support-category-index','support-sub-category-index']))
        <li class="sidebar-list">
            <a class="sidebar-link sidebar-title" href="javascript:void(0)" aria-expanded="false">
                <i data-feather="clipboard"></i>
                <span class="lan-3">{{ __('admin_local.Support') }}</span>
            </a>
            <ul class="sidebar-submenu">
                @if (hasPermission(['support-parent-category-index', 'support-parent-category-create', 'support-parent-category-update', 'support-parent-category-delete']))
                    <li>
                        <a href="{{ route('admin.support.parent-category.index') }}" class="sidebar-link">
                            <span> {{ __('admin_local.Parent Category') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['support-category-index', 'support-category-create', 'support-category-update', 'support-category-delete']))
                    <li>
                        <a href="{{ route('admin.support.category.index') }}" class="sidebar-link">
                            <span> {{ __('admin_local.Category') }} </span>
                        </a>
                    </li>
                @endif

                @if (hasPermission(['support-create']))
                <li>
                    <a href="{{ route('admin.support.create') }}" class="sidebar-link">
                        <span> {{ __('admin_local.Add Support') }} </span>
                    </a>
                </li>
                @endif
                @if (hasPermission(['support-index', 'support-update', 'support-delete']))
                    <li>
                        <a href="{{ route('admin.support.index') }}" class="sidebar-link">
                            <span> {{ __('admin_local.View Support') }} </span>
                        </a>
                    </li>
                @endif
            </ul>
        </li>
    @endif
    @if (hasPermission(['partner-parent-category-index','partner-category-index','partner-sub-category-index']))
        <li class="sidebar-list">
            <a class="sidebar-link sidebar-title" href="javascript:void(0)" aria-expanded="false">
                <i data-feather="command"></i>
                <span class="lan-3">{{ __('admin_local.Partner') }}</span>
            </a>
            <ul class="sidebar-submenu">
                @if (hasPermission(['partner-parent-category-index', 'partner-parent-category-create', 'partner-parent-category-update', 'partner-parent-category-delete']))
                    <li>
                        <a href="{{ route('admin.partner.parent-category.index') }}" class="sidebar-link">
                            <span> {{ __('admin_local.Parent Category') }} </span>
                        </a>
                    </li>
                @endif
                @if (hasPermission(['partner-category-index', 'partner-category-create', 'partner-category-update', 'partner-category-delete']))
                    <li>
                        <a href="{{ route('admin.partner.category.index') }}" class="sidebar-link">
                            <span> {{ __('admin_local.Category') }} </span>
                        </a>
                    </li>
                @endif
            </ul>
        </li>
    @endif
    @if (hasPermission(['role-permission-index', 'role-permission-create', 'role-permission-update','role-permission-delete']))
        <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="{{ route('admin.role.index') }}"
                aria-expanded="false"><i data-feather="unlock"></i><span>
                    {{ __('admin_local.Roles And Permissions') }}</span>
            </a>
        </li>
    @endif
    @if (hasPermission(['language-index', 'language-create', 'language-update', 'language-delete', 'backend-string-index']))
        <li class="sidebar-list">
            <a class="sidebar-link sidebar-title" href="javascript:void(0)" aria-expanded="false">
                <i data-feather="slack"></i>
                <span class="lan-3">{{ __('admin_local.Language') }}</span>
            </a>
            <ul class="sidebar-submenu">
                @if (hasPermission(['language-index', 'language-create', 'language-update', 'language-delete']))
                    <li>
                        <a href="{{ route('admin.language.index') }}" class="sidebar-link">
                            <span> {{ __('admin_local.Language List') }} </span>
                        </a>
                    </li>
                @endif

                @if (hasPermission(['backend-string-index']))
                    <li>
                        <a href="{{ route('admin.backend.language.index') }}" class="sidebar-link">
                            <span> {{ __('admin_local.Backed Language') }} </span>
                        </a>
                    </li>
                @endif
            </ul>
        </li>
    @endif
    @if (hasPermission(['maintenance-mode-index','warehouse-index']))
    <li class="sidebar-list">
        <a class="sidebar-link sidebar-title" href="javascript:void(0)" aria-expanded="false">
            <i data-feather="settings"></i>
            <span class="lan-3">{{ __('admin_local.Settings') }}</span>
        </a>
        <ul class="sidebar-submenu">
            @if (hasPermission(['maintenance-mode-index']))
            <li>
                <a href="{{ route('admin.settings.server.maintenanceMode') }}" class="sidebar-link">
                    <span> {{ __('admin_local.Maintenance Mode') }} </span>
                </a>
            </li>
            @endif
            @if (hasPermission(['warehouse-index']))
            <li>
                <a href="{{ route('admin.settings.warehouse.index') }}" class="sidebar-link">
                    <span> {{ __('admin_local.Warehouses') }} </span>
                </a>
            </li>
            @endif

            
        </ul>
    </li>
    @endif
</ul>
