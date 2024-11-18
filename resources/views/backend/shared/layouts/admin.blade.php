<!DOCTYPE html>
<html lang="en">
@php
    use App\Models\Admin\Settings\Logo;
    $logo_admin = Logo::where([['status',1],['delete',0],['logo_type','admin_main_logo']])->orderBy('id','DESC')->first();
@endphp
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description"
        content="tivo admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords"
        content="admin template, Tivo admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/images/favicon/favicon.png') }}" type="image/x-icon">
    <link rel="shortcut icon" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/images/favicon/favicon.png') }}" type="image/x-icon">
    <title>{{ env('APP_BACKEND_NAME') }} -@stack('title')</title>
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/vendors/font-awesome.css') }}">
    <!-- ico-font-->
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/vendors/icofont.css') }}">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/vendors/themify.css') }}">
    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/vendors/flag-icon.css') }}">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/vendors/feather-icon.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/vendors/scrollbar.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/vendors/scrollable.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/vendors/animate.css') }}">
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/vendors/bootstrap.css') }}">
    <!-- App css-->
    @stack('css')
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/style.css') }}">
    <link id="color" rel="stylesheet" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/color-1.css') }}" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/responsive.css') }}">
    @stack('page_css')
    <link rel="stylesheet" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/my_style.css') }}">
</head>

<body>
    <!-- tap on top starts-->
    {{-- <div class="tap-top"><i data-feather="chevrons-up"></i></div> --}}
    <!-- tap on tap ends-->
    <!-- Loader starts-->
    <div class="loader-wrapper">
        <div class="dot"></div>
        <div class="dot"></div>
        <div class="dot"></div>
        <div class="dot"> </div>
        <div class="dot"></div>
    </div>
    <!-- Loader ends-->
    <!-- page-wrapper Start-->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
        <!-- Page Header Start-->
        <div class="page-header">
            <div class="header-wrapper row m-0">
                <div class="header-logo-wrapper col-auto p-0">
                    <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle" data-feather="grid"> </i>
                    </div>

                    <div class="logo-header-main"><a href="index.html"><img class="img-fluid for-light img-100"
                                src="{{ asset($logo_admin?env('ASSET_DIRECTORY').'/'.$logo_admin->logo:'') }}" alt="{{ $logo_admin?$logo_admin->logo_alt_text:'Nexyos' }}"><img
                                class="img-fluid for-dark" src="{{ asset($logo_admin?env('ASSET_DIRECTORY').'/'.$logo_admin->logo:'') }}" alt="{{ $logo_admin?$logo_admin->logo_alt_text:'Nexyos' }}"
                                alt=""></a></div>
                </div>
                <div class="left-header col horizontal-wrapper ps-0">
                    <div class="left-menu-header">

                    </div>
                </div>
                <div class="nav-right col-6 pull-right right-header p-0">
                    <ul class="nav-menus">
                        {{-- <li>
                            <div class="right-header ps-0">
                                <div class="input-group">
                                    <a href="" class="btn btn-primary">POS</a>
                                </div>
                            </div>
                        </li>
                        <li class="serchinput">
                            <div class="serchbox"> <a href="" class="btn btn-primary">POS</a></div>

                        </li> --}}
                        {{-- <li>
                            <div><a href="" class="btn btn-primary">POS</a></div>
                        </li> --}}
                        <li>
                            <div class="mode"><i class="fa fa-moon-o"></i></div>
                        </li>
                        <li class="onhover-dropdown">
                            <div class="notification-box"><i data-feather="bell"></i></div>
                            <ul class="notification-dropdown onhover-show-div">
                                <li><i data-feather="bell"> </i>
                                    <h6 class="f-18 mb-0">Notitications</h6>
                                </li>
                                <li>
                                    <div class="d-flex align-items-center">
                                        <div class="flex-shrink-0"><i data-feather="truck"></i></div>
                                        <div class="flex-grow-1">
                                            <p><a href="order-history.html">Delivery processing </a><span
                                                    class="pull-right">6 hr</span></p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="d-flex align-items-center">
                                        <div class="flex-shrink-0"><i data-feather="shopping-cart"></i></div>
                                        <div class="flex-grow-1">
                                            <p><a href="cart.html">Order Complete</a><span class="pull-right">3
                                                    hr</span></p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="d-flex align-items-center">
                                        <div class="flex-shrink-0"><i data-feather="file-text"></i></div>
                                        <div class="flex-grow-1">
                                            <p><a href="invoice-template.html">Tickets Generated</a><span
                                                    class="pull-right">1 hr</span></p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="d-flex align-items-center">
                                        <div class="flex-shrink-0"><i data-feather="send"></i></div>
                                        <div class="flex-grow-1">
                                            <p><a href="email_inbox.html">Delivery Complete</a><span
                                                    class="pull-right">45 min</span></p>
                                        </div>
                                    </div>
                                </li>
                                <li><a class="btn btn-primary" href="javascript:void(0)">Check all notification</a>
                                </li>
                            </ul>
                        </li>

                        <li class="maximize"><a href="#!" onclick="javascript:toggleFullScreen()"><i
                                    data-feather="maximize-2"></i></a></li>
                        <li class="language-nav">
                            <div class="translate_wrapper">
                                <div class="current_lang">
                                    <div class="lang"><i data-feather="globe"></i></div>
                                </div>
                                <div class="more_lang">
                                    @php
                                        $languages = DB::table('languages')
                                            ->where([['status', 1], ['delete', 0]])
                                            ->get();
                                    @endphp
                                    @foreach ($languages as $language)
                                        <div class="lang {{ getLanguageSession()==$language->lang?'selected':'' }}" onclick="change_lang('{{ $language->lang }}')">
                                            <span class="lang-txt">{{ $language->name }}</span>
                                        </div>
                                    @endforeach

                                    {{-- <div class="lang selected" onclick="change_lang('bn')"><i
                                            class="flag-icon flag-icon-bd"></i><span class="lang-txt">Bangla</span>
                                    </div> --}}
                                </div>
                            </div>
                        </li>
                        <li class="profile-nav onhover-dropdown">
                            <div class="account-user"><i data-feather="user"></i></div>
                            <ul class="profile-dropdown onhover-show-div">
                                <li><a href="{{ route('admin.profile') }}"><i
                                            data-feather="user"></i><span> {{ __('admin_local.Account')}}</span></a>
                                </li>
                                <li><a href="email_inbox.html"><i data-feather="mail"></i><span> {{ __('admin_local.Inbox')}}</span></a></li>
                                <li><a href="edit-profile.html"><i
                                            data-feather="settings"></i><span> {{ __('admin_local.Settings')}}</span></a></li>
                                <li><a href="{{ route('admin.logout') }}"><i data-feather="log-in"> </i><span> {{ __('admin_local.LogOut')}}</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Page Header Ends-->
        <!-- Page Body Start-->
        <div class="page-body-wrapper">
            <!-- Page Sidebar Start-->
            <div class="sidebar-wrapper">
                <div>
                    <div class="logo-wrapper"><a href="index.html"><img class="img-fluid for-light"  height="40px"
                                src="{{ asset($logo_admin?env('ASSET_DIRECTORY').'/'.$logo_admin->logo:'') }}" alt="{{ $logo_admin?$logo_admin->logo_alt_text:'Nexyos' }}"></a>
                        <div class="back-btn"><i data-feather="grid"></i></div>
                        <div class="toggle-sidebar icon-box-sidebar"><i class="status_toggle middle sidebar-toggle"
                                data-feather="grid"> </i></div>
                    </div>
                    <div class="logo-icon-wrapper"><a href="index.html">
                            <div class="icon-box-sidebar"><i data-feather="grid"></i></div>
                        </a></div>
                    <nav class="sidebar-main">
                        <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
                        <div id="sidebar-menu">
                            @include('backend.shared.nav.admin_sidebar')
                        </div>
                        <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
                    </nav>
                </div>
            </div>
            <!-- Page Sidebar Ends-->
            <div class="page-body">
                @yield('content')

            </div>
            <!-- footer start-->
            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 p-0 footer-left">
                            <p class="mb-0">Copyright © 2023 Tivo. All rights reserved. </p>
                        </div>
                        <div class="col-md-6 p-0 footer-right">
                            <p class="mb-0">Hand-crafted & made with <i class="fa fa-heart font-danger"></i></p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <!-- latest jquery-->
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/jquery-3.6.0.min.js') }}"></script>
    <!-- Bootstrap js-->
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/bootstrap/bootstrap.bundle.min.js') }}"></script>
    {{-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script> --}}
    <!-- feather icon js-->
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/icons/feather-icon/feather.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/icons/feather-icon/feather-icon.js') }}"></script>
    <!-- scrollbar js-->
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/scrollbar/simplebar.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/scrollbar/custom.js') }}"></script>
    <!-- Sidebar jquery-->
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/config.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/sidebar-menu.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/clipboard/clipboard.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/scrollable/perfect-scrollbar.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/scrollable/scrollable-custom.js') }}"></script>
    @stack('js')
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/tooltip-init.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/custom-card/custom-card.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/notify/bootstrap-notify.min.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/notify/index.js') }}"></script> --}}

    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/dashboard/default.js') }}"></script> --}}
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/notify/index.js') }}"></script> --}}
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/typeahead/handlebars.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/typeahead/typeahead.bundle.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/typeahead/typeahead.custom.js') }}"></script> --}}
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/typeahead-search/handlebars.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/typeahead-search/typeahead-custom.js') }}"></script>
    <!-- Template js-->
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/script.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/theme-customizer/customizer.js') }}"></script> --}}
    <!-- login js-->
    <script></script>
    <script>
        $(document).ready(function() {
            $('body').attr('class', localStorage.getItem('body'))
        })

        function change_lang(x) {
            $.ajax({
                type: "get",
                url: window.location.origin+"/admin/change/language/" + x,
                success: function(data) {
                    window.location.reload();
                },
                error : function(err){
                    window.location.reload();
                }
            })
        }
    </script>
</body>

</html>
