@extends('backend.shared.layouts.admin')
@push('title')
    {{ __('admin_local.Logo') }}
@endpush
@push('css')
    <link rel="stylesheet" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/custom.css') }}">
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
    </style>
@endpush
@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-sm-6">
                    <h3>{{ __('admin_local.Logo List') }}</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="javascript:void(0)">{{ __('admin_local.Settings ') }}</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="javascript:void(0)">{{ __('admin_local.Frontend ') }}</a>
                        </li>
                        <li class="breadcrumb-item active">{{ __('admin_local.Logo') }}</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    {{-- Add logo Modal Start --}}

    <div class="modal fade" id="add-logo-modal" tabindex="-1" aria-labelledby="bs-example-modal-lg" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header d-flex align-items-center" style="border-bottom:1px dashed gray">
                    <h4 class="modal-title" id="myLargeModalLabel">
                        {{ __('admin_local.Add Logo') }}
                    </h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <p class="px-3 text-danger">
                    <i>{{ __('admin_local.The field labels marked with * are required input fields.') }}</i>
                </p>
                <div class="modal-body" style="margin-top: -20px">
                    <form method="POST" action="" id="add_logo_form" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-lg-12 mt-2">
                                <label for="logo_name"><strong>{{ __('admin_local.logo Title') }} *</strong></label>
                                <input type="text" class="form-control" name="logo_title" id="logo_title">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="logo_name"><strong>{{ __('admin_local.logo Short Description') }} *</strong></label>
                                <input type="text" class="form-control" name="logo_short_description" id="logo_short_description">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="logo_name"><strong>{{ __('admin_local.logo Link ( If Any )') }} *</strong></label>
                                <input type="text" class="form-control" name="logo_link" id="logo_link">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="logo_name"><strong>{{ __('admin_local.logo Button Text') }} *</strong></label>
                                <input type="text" class="form-control" name="logo_button_text" id="logo_button_text">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="logo_image"><strong>{{ __('admin_local.logo Image') }} ( 2376px x 807px )
                                    </strong></label>
                                <input type="file" class="form-control" name="logo_image" id="logo_image" onchange="document.getElementById('preview_image').src = window.URL.createObjectURL(this.files[0])">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2 mb-4">
                                <label for="parent_logo_image"><strong>{{ __('admin_local.Preview Image') }}
                                    </strong></label>
                                <img src="" id="preview_image" style="height: 100%;width:100%" alt="preview image">
                            </div>
                        </div>
                        <div class="row mt-4 mb-2">
                            <div class="form-group col-lg-12">
                                <button class="btn btn-danger text-white font-weight-medium waves-effect text-start"
                                    data-bs-dismiss="modal" style="float: right"
                                    type="button">{{ __('admin_local.Close') }}</button>
                                <button class="btn btn-primary mx-2" style="float: right"
                                    type="submit">{{ __('admin_local.Submit') }}</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

    {{-- Add logo Modal End --}}

    {{-- Edit logo Modal Start --}}

    <div class="modal fade" id="edit-logo-modal" tabindex="-1" aria-labelledby="bs-example-modal-lg"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header d-flex align-items-center" style="border-bottom:1px dashed gray">
                    <h4 class="modal-title" id="myLargeModalLabel">
                        {{ __('admin_local.Edit Logo') }}
                    </h4>
                    <button type="button" class="btn-close " data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <p class="px-3 text-danger">
                    <i>{{ __('admin_local.The field labels marked with * are required input fields.') }}</i>
                </p>
                <div class="modal-body" style="margin-top: -20px">
                    <form id="edit_logo_form" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <input type="hidden" id="logo_id" name="logo_id" value="">
                        <div class="row">
                            <div class="col-lg-12 mt-2">
                                <label for="logo_name"><strong>{{ __('admin_local.logo Title') }} *</strong></label>
                                <input type="text" class="form-control" name="logo_title" id="logo_title">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="logo_name"><strong>{{ __('admin_local.logo Short Description') }} *</strong></label>
                                <input type="text" class="form-control" name="logo_short_description" id="logo_short_description">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="logo_name"><strong>{{ __('admin_local.logo Link ( If Any )') }} *</strong></label>
                                <input type="text" class="form-control" name="logo_link" id="logo_link">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="logo_name"><strong>{{ __('admin_local.logo Button Text') }} *</strong></label>
                                <input type="text" class="form-control" name="logo_button_text" id="logo_button_text">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2">
                                <label for="logo_image"><strong>{{ __('admin_local.logo Image') }} ( 2376px x 807px )
                                    </strong></label>
                                <input type="file" class="form-control" name="logo_image" id="logo_image" onchange="document.getElementById('preview_image2').src = window.URL.createObjectURL(this.files[0])">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-12 mt-2 mb-4">
                                <label for="parent_logo_image"><strong>{{ __('admin_local.Preview Image') }}
                                    </strong></label>
                                <img src="" id="preview_image2" style="height: 100%;width:100%" alt="preview image">
                            </div>
                        </div>

                        <div class="row mt-4 mb-2">
                            <div class="form-group col-lg-12">
                                <button class="btn btn-danger text-white font-weight-medium waves-effect text-start"
                                    data-bs-dismiss="modal" style="float: right"
                                    type="button">{{ __('admin_local.Close') }}</button>
                                <button class="btn btn-primary mx-2" style="float: right"
                                    type="submit">{{ __('admin_local.Submit') }}</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

    {{-- Edit logo Modal End --}}



    <div class="container-fluid">
        <div class="row">
            <!-- Column -->
            <div class="col-lg-10 mx-auto">
                <div class="card">
                    <div class="card-header py-3" style="border-bottom: 2px dashed gray">
                        <h3 class="card-title mb-0 text-center">{{ __('admin_local.Logo List') }}</h3>
                    </div>

                    <div class="card-body">
                        @if (hasPermission(['homepage-logo-store']))
                            <div class="row mb-3">
                                <div class="col-md-3">
                                    <button class="btn btn-success" type="btn" data-bs-toggle="modal"
                                        data-bs-target="#add-logo-modal">+
                                        {{ __('admin_local.Add Logo') }}</button>
                                </div>
                            </div>
                        @endif
                        <div class="table-responsive theme-scrollbar">
                            <table id="basic-1" class="display table-bordered">
                                <thead>
                                    <tr>
                                        <th>{{ __('admin_local.Image') }}</th>
                                        <th>{{ __('admin_local.Title') }}</th>
                                        <th>{{ __('admin_local.Details') }}</th>
                                        <th>{{ __('admin_local.Button Text') }}</th>
                                        <th>{{ __('admin_local.Status') }}</th>
                                        <th>{{ __('admin_local.Action') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($logos as $logo)
                                        <tr id="trid-{{ $logo->id }}" data-id="{{ $logo->id }}">
                                            <td>
                                                @if ($logo->logo_image)
                                                    <img height="40px" src="{{ asset(env('ASSET_DIRECTORY').'/'.$logo->logo_image) }}" alt=""
                                                        style="height:">
                                                @else
                                                    {{ __('admin_local.No File') }}
                                                @endif
                                            </td>
                                            <td>{{ $logo->logo_title }}</td>
                                            <td>{{ $logo->logo_short_description != '' ? $logo->logo_short_description : 'N/A' }}</td>
                                            <td>
                                                {{ $logo->logo_button_text != '' ? $logo->logo_button_text : 'N/A' }}
                                            </td>
                                            <td class="text-center">
                                                @if (hasPermission(['homepage-logo-update']))
                                                    <span
                                                        class="mx-2">{{ $logo->status == 0 ? 'Inactive' : 'Active' }}</span><input
                                                        data-status="{{ $logo->status == 0 ? 1 : 0 }}"
                                                        id="status_change" type="checkbox" data-toggle="switchery"
                                                        data-color="green" data-secondary-color="red" data-size="small"
                                                        {{ $logo->status == 1 ? 'checked' : '' }} />
                                                @else
                                                    <span
                                                        class="badge badge-danger">{{ __('admin_local.No Permission') }}</span>
                                                @endif
                                            </td>
                                            <td>
                                                @if (hasPermission(['homepage-logo-update', 'homepage-logo-delete']))
                                                    <div class="dropdown">
                                                        <button
                                                            class="btn btn-info text-white px-2 py-1 dropbtn">{{ __('admin_local.Action') }}
                                                            <i class="fa fa-angle-down"></i></button>
                                                        <div class="dropdown-content">
                                                            @if (hasPermission(['homepage-logo-update']))
                                                                <a data-bs-toggle="modal" style="cursor: pointer;"
                                                                    data-bs-target="#edit-logo-modal"
                                                                    class="text-primary" id="edit_button"><i
                                                                        class=" fa fa-edit mx-1"></i>{{ __('admin_local.Edit') }}</a>
                                                            @endif
                                                            @if (hasPermission(['homepage-logo-delete']))
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
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/sweet-alert/sweetalert.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/datatable/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/plugins/switchery/switchery.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/select2/select2.full.min.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'inventory/assets/js/select2/select2-custom.js') }}"></script> --}}
    <script>
        $('[data-toggle="switchery"]').each(function(idx, obj) {
            new Switchery($(this)[0], $(this).data());
        });
        $('.js-example-basic-single').select2({
            dropdownParent: $('#add-logo-modal')
        });
        $('.js-example-basic-single1').select2({
            dropdownParent: $('#edit-logo-modal')
        });
        $(document).on('select2:open', () => {
            document.querySelector('.select2-search__field').focus();
        });
        var oTable = $("#basic-1").DataTable({
            "language": {
                "decimal": "",
                "emptyTable": "{{ __('admin_local.No size available in table') }}",
                "info": "Showing _START_ to _END_ of _TOTAL_ entries",
                "infoEmpty": "Showing 0 to 0 of 0 entries",
                "infoFiltered": "(filtered from _MAX_ total entries)",
                "infoPostFix": "",
                "thousands": ",",
                "lengthMenu": "Show _MENU_ entries",
                "loadingRecords": "Loading...",
                "processing": "",
                "search": "Search:",
                "zeroRecords": "No matching records found",
                "paginate": {
                    "first": "First",
                    "last": "Last",
                    "next": "Next",
                    "previous": "Previous"
                },
                "aria": {
                    "sortAscending": ": activate to sort column ascending",
                    "sortDescending": ": activate to sort column descending"
                }
            }
        });

        var form_url = "{{ route('admin.settings.logo.store') }}";
        var submit_btn_after = `{{ __('admin_local.Submitting') }}`;
        var submit_btn_before = `{{ __('admin_local.Submit') }}`;
        var no_permission_mgs = `{{ __('admin_local.No Permission') }}`;
        var base_url = '{{ URL::to("/") }}';
        var asset_url = '{{ URL::to("/")."/".env("ASSET_DIRECTORY")."/" }}';


        var delete_swal_title = `{{ __('admin_local.Are you sure?') }}`;
        var delete_swal_text =
            `{{ __('admin_local.Once deleted, you will not be able to recover this size data') }}`;
        var delete_swal_cancel_text = `{{ __('admin_local.Delete request canceld successfully') }}`;
        var no_file = `{{ __('admin_local.No file') }}`;
    </script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/custom/settings/logo.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'inventory/custom/user/user_list.js') }}"></script> --}}
@endpush
