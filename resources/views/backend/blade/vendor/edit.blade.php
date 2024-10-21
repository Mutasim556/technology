@extends('backend.shared.layouts.admin')
@push('title')
    {{ __('admin_local.Edit Vendor') }}
@endpush
@push('css')
    <link rel="stylesheet" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/custom.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/vendors/dropzone.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/plugins/taginputs/bootstrap-tagsinput.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/css/vendors/date-picker.css') }}">
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
        .cke_contents {
            border: 2px dashed #5c61f2 !important;
            border-radius: 0px 0px 10px 10px
        }

        .cke_top {
            border: 2px dashed #5c61f2 !important;
            border-bottom: 0px !important;
            border-radius: 10px 10px 0px 0px
        }
        #invalid-selec2{
            border-color: red !important;
        }
    </style>
@endpush
@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-sm-6">
                    <h3>{{ __('admin_local.Edit vendor') }}</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="javascript:void(0)">{{ __('admin_local.Vendor') }}</a>
                        </li>
                        <li class="breadcrumb-item active">{{ __('admin_local.Edit Vendor') }}</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <!-- Column -->
            <div class="col-lg-10 mx-auto">
                <div class="card">
                    <div class="card-header py-3" style="border-bottom: 2px dashed gray">
                        <h3 class="card-title mb-0 text-center">{{ __('admin_local.Edit Vendor') }}</h3>
                    </div>
                    <p class="px-4 text-danger"><i>{{ __('admin_local.The field labels marked with * are required input fields.') }}</i>
                    </p>
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input type="hidden" id="csrf_token" value="{{ csrf_token() }}">
                                <form action="theme-form" id="edit_vendor_form" enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')
                                    <input type="hidden" name="vendor_id" id="vendor_id" value="{{ $vendor->id }}">
                                    <div class="row">
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Vendor Name') }} *</label>
                                            <input type="text" class="form-control" name="vendor_name" id="vendor_name" value="{{ $vendor->vendor_name }}">
                                            <span class="text-danger err-mgs" id="vendor_name_err"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Vendor Image') }} *</label>
                                            <input type="file" class="form-control" name="vendor_image" id="vendor_image">
                                            <span class="text-danger err-mgs" id="vendor_image_err"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Vendor Join Date') }} *</label>
                                            <input type="date" class="form-control" name="vendor_join_date" id="vendor_join_date" value="{{ $vendor->vendor_join_date }}">
                                            <span class="text-danger err-mgs" id="vendor_join_date_err"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Vendor Type') }} *</label>
                                            <select class="js-example-basic-single form-select" id="vendor_type"
                                                name="vendor_type">
                                                <option value="">{{ __('admin_local.Please Select') }}</option>
                                                <option value="Retailer" {{ $vendor->vendor_type=='Retailer'?"selected":'' }}>{{ __('admin_local.Retailer') }}</option>
                                                <option value="Wholeseller" {{ $vendor->vendor_type=='Wholeseller'?"selected":'' }}>{{ __('admin_local.Wholeseller') }}</option>
                                                <option value="Manufacturer" {{ $vendor->vendor_type=='Manufacturer'?"selected":'' }}>{{ __('admin_local.Manufacturer') }}</option>
                                            </select>
                                            <span class="text-danger err-mgs" id="vendor_type_err"></span>
                                        </div>

                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Vendor Link ( If any )') }} </label>
                                            <input type="text" class="form-control" name="vendor_link" id="vendor_link" value="{{ $vendor->vendor_link }}">
                                            <span class="text-danger err-mgs" id="vendor_link_err"></span>
                                        </div>
                                        <div class="form-group col-md-6" id="category_div">
                                            <label for="category">{{ __('admin_local.Vendor Contact Number ( If any )') }} </label>
                                            <input type="text" class="form-control" name="vendor_contact_number" id="vendor_contact_number" value="{{ $vendor->vendor_contact_number }}">
                                            <span class="text-danger err-mgs" id="vendor_contact_number_err"></span>
                                        </div>
                                        <div class="form-group col-md-6" id="category_div">
                                            <label for="category">{{ __('admin_local.Vendor Email ( If any )') }} </label>
                                            <input type="text" class="form-control" name="vendor_email" id="vendor_email" value="{{ $vendor->vendor_email }}">
                                            <span class="text-danger err-mgs" id="vendor_email_err"></span>
                                        </div>
                                        <div class="form-group col-md-12" id="category_div">
                                            <label for="category">{{ __('admin_local.Vendor Adrress') }} </label>
                                            <textarea id="editor1" name="vendor_address" >{!! $vendor->vendor_address !!}</textarea>
                                            <span class="text-danger err-mgs" id="vendor_address_err"></span>
                                        </div>
                                        <div class="form-group col-md-12" id="category_div">
                                            <label for="category">{{ __('admin_local.Short Details') }} </label>
                                            <input type="text" class="form-control" name="short_details" id="short_details" value="{{ $vendor->short_details }}">
                                            <span class="text-danger err-mgs" id="short_details_err"></span>
                                        </div>
                                        <div class="form-group col-md-12" id="category_div">
                                            <label for="category">{{ __('admin_local.Details') }} </label>
                                            <textarea id="editor2" name="details" >{!! $vendor->details !!}</textarea>
                                            <span class="text-danger err-mgs" id="details_err"></span>
                                        </div>
                                    </div>
                                    <div class="row mt-4 py-4">
                                        <h5 class="text-center" style="font-size: 22px;">{{ __('admin_local.Owner Information') }}</h5>
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Owner Name') }} *</label>
                                            <input type="text" class="form-control" name="owner_name" id="owner_name" value="{{ $vendor->owner_name }}">
                                            <span class="text-danger err-mgs" id="owner_name_err"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Owner Email') }} *</label>
                                            <input type="text" class="form-control" name="owner_email" id="owner_email" value="{{ $vendor->owner_email }}">
                                            <span class="text-danger err-mgs" id="owner_email_err"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Owner Phone Number') }} *</label>
                                            <input type="text" class="form-control" name="owner_phone_number" id="owner_phone_number" value="{{ $vendor->owner_phone_number }}">
                                            <span class="text-danger err-mgs" id="owner_phone_number_err"></span>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <button style="float:right" type="submit" id="submit_btn" class="btn btn-outline-success">{{ __('admin_local.Update') }}</button>
                                            {{-- <button style="float:right" type="button" id="reset_btn" class="btn btn-outline-danger mx-4">{{ __('admin_local.Reset') }}</button> --}}
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@push('js')
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/sweet-alert/sweetalert.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/datatable/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/plugins/switchery/switchery.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/select2/select2.full.min.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/dropzone/dropzone.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/editor/ckeditor/ckeditor.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/editor/ckeditor/adapters/jquery.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/editor/ckeditor/styles.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/editor/ckeditor/ckeditor.custom.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/plugins/taginputs/bootstrap-tagsinput.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/datepicker/date-picker/datepicker.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/datepicker/date-picker/datepicker.en.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/datepicker/date-picker/datepicker.custom.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/typeahead/handlebars.js') }}"></script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/typeahead/typeahead.bundle.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/assets/js/typeahead/typeahead.custom.js') }}"></script> --}}
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'inventory/assets/js/select2/select2-custom.js') }}"></script> --}}
    <script>

        $(document).ready(function(){
            $('.js-example-basic-single').select2();
        })
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
        var download_count = 0;
        var form_url = "{{ route('admin.vendor.store') }}";
        var submit_btn_after = `{{ __('admin_local.Submitting') }}`;
        var submit_btn_before = `{{ __('admin_local.Submit') }}`; 
        var no_permission_mgs = `{{ __('admin_local.No Permission') }}`;
        var download_icon = `{{ __('admin_local.Icon') }}`;
        var download_title = `{{ __('admin_local.Title') }}`;
        var download_file = `{{ __('admin_local.File') }}`;
        var download_remove = `{{ __('admin_local.Remove') }}`;


        var delete_swal_title = `{{ __('admin_local.Are you sure?') }}`;
        var delete_swal_text =
            `{{ __('admin_local.Once deleted, you will not be able to recover this size data') }}`;
        var delete_swal_cancel_text = `{{ __('admin_local.Delete request canceld successfully') }}`;
        var no_file = `{{ __('admin_local.No file') }}`;
        var base_url = '{{ URL::to("/") }}';


    </script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/custom/vendor/vendor.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'inventory/custom/user/user_list.js') }}"></script> --}}
@endpush
