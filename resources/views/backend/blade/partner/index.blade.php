@extends('backend.shared.layouts.admin')
@push('title')
    {{ __('admin_local.Partners') }}
@endpush
@push('css')
    <link rel="stylesheet" href="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/css/custom.css') }}">
    {{-- <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/vendors/animate.css') }}"> --}}
    <link rel="stylesheet" type="text/css"
        href="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/css/vendors/owlcarousel.css') }}">
@endpush
@push('page_css')
    <style>
        .loader-box {
            height: auto;
            padding: 10px 0px;
        }

        .loader-box .loader-35:after {
            height: 20px;
            width: 10px;
        }

        .loader-box .loader-35:before {
            width: 20px;
            height: 10px;
        }

        .buttons-excel {
            border-radius: 5px;
            background-color: aqua;
        }

        #partner-details-modal .table-bordered thead,
        #partner-details-modal .table-bordered tbody,
        #partner-details-modal .table-bordered tfoot,
        #partner-details-modal .table-bordered tr,
        #partner-details-modal .table-bordered td,
        #partner-details-modal .table-bordered th {
            border-color: black;
        }

        #partner-details-modal .table-bordered th {
            font-weight: 1000;
        }
    </style>
@endpush
@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-sm-6">
                    <h3>{{ __('admin_local.Partners') }}</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="javascript:void(0)">{{ __('admin_local.Partner') }}</a>
                        </li>
                        <li class="breadcrumb-item active">{{ __('admin_local.Partner List') }}</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    {{-- partner Details Modal End --}}
    <div class="container-fluid">
        <div class="row">
            <!-- Column -->
            <div class="col-lg-12 mx-auto">
                <div class="card">
                    <div class="card-header py-3" style="border-bottom: 2px dashed gray">
                        <h3 class="card-title mb-0 text-center">{{ __('admin_local.Partner List') }}</h3>
                    </div>

                    <div class="card-body">
                        @if (hasPermission(['partner-store']))
                            <div class="row mb-3">
                                <div class="col-md-3">
                                    <a class="btn btn-success" href="{{ route('admin.partner.create') }}">+
                                        {{ __('admin_local.Add partner') }}</a>
                                </div>
                            </div>
                        @endif
                        <div class="table-responsive theme-scrollbar">
                            <table id="basic-1" class="display table-bordered">
                                <thead>
                                    <tr>
                                        <th>{{ __('admin_local.Parent Category') }}</th>
                                        <th>{{ __('admin_local.Category') }}</th>
                                        <th>{{ __('admin_local.Image') }}</th>
                                        <th>{{ __('admin_local.Partner Name') }}</th>
                                        <th>{{ __('admin_local.Action') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($partners as $partner)
                                        {{-- partner details modal start --}}
                                        <div class="modal fade" id="partner-details-modal" tabindex="-1"
                                            aria-labelledby="bs-example-modal-lg" aria-hidden="true">
                                            <div class="modal-dialog modal-xl">
                                                <div class="modal-content">
                                                    <div class="modal-header d-flex align-items-center"
                                                        style="border-bottom:1px dashed gray">
                                                        <h4 class="modal-title" id="myLargeModalLabel">
                                                            {{ __('admin_local.Partner Details') }}
                                                        </h4>
                                                        <button type="button" class="btn-close " data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body" id="DivIdToPrint" style="margin-top: -20px">
                                                        <div class="row mt-4">
                                                            <div class="col-md-10">
                                                                <h4 class="text-center">{{__('admin_local.Partner Contact Details')}}</h4>
                                                                <span>
                                                                    <b>
                                                                        {{ __('admin_local.Contact Number') }} :
                                                                    </b>
                                                                    {{ $partner->partner_contact_number }} <br>

                                                                    <b>
                                                                        {{ __('admin_local.Email') }} :
                                                                    </b>
                                                                    {{ $partner->partner_email }} <br>
                                                                    <b>
                                                                        {{ __('admin_local.Address') }} :
                                                                    </b>
                                                                    {!! $partner->partner_address !!} <br>

                                                                    <b>
                                                                        {{ __('admin_local.Short Details') }} :
                                                                    </b>
                                                                    {!! $partner->short_details !!} <br>
                                                                    <b>
                                                                        {{ __('admin_local.Details') }} :
                                                                    </b>
                                                                    {!! $partner->details !!} <br>
                                                                </span>

                                                            </div>
                                                        </div>
                                                        <div class="row mt-4 mb-2">
                                                            <div class="form-group col-lg-12">
                                                                <button
                                                                    class="btn btn-danger text-white font-weight-medium waves-effect text-start"
                                                                    data-bs-dismiss="modal" style="float: right"
                                                                    type="button">{{ __('admin_local.Close') }}</button>
                                                            </div>

                                                        </div>
                                                    </div>

                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                        <tr data-id="{{ $partner->id }}" id="partner_row">

                                            <td data-bs-toggle="modal" data-bs-target="#partner-details-modal">
                                                {{ $partner->parentCategory->parent_category_name }}</td>
                                            <td data-bs-toggle="modal" data-bs-target="#partner-details-modal">
                                                {{ $partner->category->category_name }}</td>
                                            <td data-bs-toggle="modal" data-bs-target="#partner-details-modal">
                                                    <img src="{{ asset(env('ASSET_DIRECTORY').'/'.$partner->partner_image) }}" alt=""></td>
                                            <td data-bs-toggle="modal" data-bs-target="#partner-details-modal">
                                                {{ $partner->partner_name }}</td>
                                            <td>
                                                @if (hasPermission(['partner-update', 'partner-delete']))
                                                    <div class="dropdown">
                                                        <button
                                                            class="btn btn-info text-white px-2 py-1 dropbtn">{{ __('admin_local.Action') }}
                                                            <i class="fa fa-angle-down"></i></button>
                                                        <div class="dropdown-content">
                                                            @if (hasPermission(['partner-update']))
                                                                <a style="cursor: pointer;"
                                                                    href="{{ route('admin.partner.edit', $partner->id) }}"
                                                                    class="text-primary" id="edit_button"><i
                                                                        class=" fa fa-edit mx-1"></i>{{ __('admin_local.Edit') }}</a>
                                                            @endif
                                                            @if (hasPermission(['partner-delete']))
                                                                <a class="text-danger" id="delete_button"
                                                                    style="cursor: pointer;"><i
                                                                        class="fa fa-trash mx-1"></i>
                                                                    {{ __('admin_local.Delete') }}</a>
                                                            @endif
                                                        </div>
                                                    </div>
                                                @else
                                                    <span
                                                        class="badge badge-danger">{{ __('admin_local.No Permission') }}</span>
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            @csrf
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- Row -->
    </div>
@endsection

@push('js')
    <script src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/sweet-alert/sweetalert.min.js') }}"></script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatables/jquery.dataTables.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/dataTables.buttons.min.js') }}">
    </script>
    <script src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/jszip.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/buttons.colVis.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/pdfmake.min.js') }}">
    </script>
    <script src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/vfs_fonts.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/dataTables.autoFill.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/dataTables.select.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/buttons.bootstrap4.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/buttons.html5.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/buttons.print.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/dataTables.bootstrap4.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/dataTables.responsive.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/responsive.bootstrap4.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/dataTables.keyTable.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/dataTables.colReorder.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/dataTables.fixedHeader.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/dataTables.rowReorder.min.js') }}">
    </script>
    <script
        src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/datatable/datatable-extension/dataTables.scroller.min.js') }}">
    </script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/modal-animated.js') }}"></script> --}}
    <script src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/owlcarousel/owl.carousel.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/owlcarousel/owl-custom.j') }}s"></script> --}}
    <script src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/plugins/switchery/switchery.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/assets/js/select2/select2.full.min.js') }}"></script>
    <script>
        $('[data-toggle="switchery"]').each(function(idx, obj) {
            new Switchery($(this)[0], $(this).data());
        });
        $('.js-example-basic-single').select2({
            dropdownParent: $('#add-warehouse-modal')
        });
        $('.js-example-basic-single1').select2({
            dropdownParent: $('#edit-warehouse-modal')
        });
        $('.js-example-basic-single3').select2({
            dropdownParent: $('#add-specific-user-permission-modal')
        });
        $(document).on('select2:open', () => {
            document.querySelector('.select2-search__field').focus();
        });
        var oTable = $("#basic-1").DataTable({
            dom: 'Blfrtip',
            select: true,
            dom: "<'row'<'col-sm-4'l><'col-sm-4 text-center'B><'col-sm-4'f>>" +
                "<'row'<'col-sm-12'tr>>" +
                "<'row'<'col-sm-5'i><'col-sm-7'p>>",
            buttons: [{
                "extend": 'excel',
                "text": '<i class="fa fa-file-excel-o" style="font-size:18px;"></i>',
                'className': 'btn btn-success btn-square py-1 px-3'
            }, {
                "extend": 'pdf',
                "text": '<i class="fa fa-file-pdf-o" style="font-size:18px;"></i>',
                'className': 'btn btn-danger btn-square py-1 px-3'
            }, {
                "extend": 'print',
                "text": '<i class="fa fa-print" style="font-size:18px;"></i>',
                'className': 'btn btn-info btn-square py-1 px-3'
            }],

        });


        // var getting_permission = `<span>{{ __('admin_local.Getting Permissons') }} ...... <i class="fa fa-spinner fa-spin" ></i></span>`;
        var submit_btn_after = `{{ __('admin_local.Submitting') }}`;
        var submit_btn_before = `{{ __('admin_local.Submit') }}`;
        var no_permission_mgs = `{{ __('admin_local.No Permission') }}`;
        var base_url = `{{ URL::to('/') }}`;


        var delete_swal_title = `{{ __('admin_local.Are you sure?') }}`;
        var delete_swal_text =
            `{{ __('admin_local.Once deleted, you will not be able to recover this maintenance data') }}`;
        var delete_swal_cancel_text = `{{ __('admin_local.Delete request canceld successfully') }}`;
    </script>
    <script src="{{ asset(env('ASSET_DIRECTORY') . '/' . 'admin/custom/partner/partner.js') }}"></script>
@endpush
