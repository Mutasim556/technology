@extends('backend.shared.layouts.admin')
@push('title')
    {{ __('admin_local.Edit Partner') }}
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
                    <h3>{{ __('admin_local.Edit Partner') }}</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="javascript:void(0)">{{ __('admin_local.Partner') }}</a>
                        </li>
                        <li class="breadcrumb-item active">{{ __('admin_local.Edit Partner') }}</li>
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
                        <h3 class="card-title mb-0 text-center">{{ __('admin_local.Edit Partner') }}</h3>
                    </div>
                    <p class="px-4 text-danger"><i>{{ __('admin_local.The field labels marked with * are required input fields.') }}</i>
                    </p>
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input type="hidden" id="csrf_token" value="{{ csrf_token() }}">
                                <form action="theme-form" id="edit_partner_form" enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')
                                    <input type="hidden" name="partner_id" id="partner_id" value="{{ $partner->id }}">
                                    <div class="row">
                                        <div class="form-group col-md-4" id="parent_category_div">
                                            <label for="parent_category">{{ __('admin_local.Parent Category') }} *</label>
                                            <select class="form-control js-example-basic-single invalid-selec2" id="parent_category"
                                                name="parent_category" onchange="getCategoryDetails(this.value,'category')">
                                                <option value="">{{ __('admin_local.Please Select') }}</option>
                                                @foreach ($parent_categories as $parent_category)
                                                    <option value="{{ $parent_category->id }}" {{ $partner->parent_category_id==$parent_category->id?'selected':'' }}>{{ $parent_category->parent_category_name }}</option>
                                                @endforeach
                                            </select>
                                            <span class="text-danger err-mgs" id="parent_category_err"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Category') }} *</label>
                                            <select class="js-example-basic-single form-select" id="category"
                                                name="category">
                                                <option value="">{{ __('admin_local.Please Select') }}</option>
                                                <option value="{{ $partner->category_id }}" selected>{{ $partner->category->category_name }}</option>

                                            </select>
                                            <span class="text-danger err-mgs" id="category_err"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Partner Image') }} *</label>
                                            <input type="file" class="form-control" name="partner_image" id="partner_image">
                                            <span class="text-danger err-mgs" id="partner_image_err"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Partner Join Date') }} *</label>
                                            <input type="date" class="form-control" name="partner_join_date" id="partner_join_date" value="{{ $partner->partner_join_date }}">
                                            <span class="text-danger err-mgs" id="partner_join_date_err"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Partner Name') }} *</label>
                                            <input type="text" class="form-control" name="partner_name" id="partner_name" value="{{ $partner->partner_name }}">
                                            <span class="text-danger err-mgs" id="partner_name_err"></span>
                                        </div>

                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Partner Link ( If any )') }} </label>
                                            <input type="text" class="form-control" name="partner_link" id="partner_link" value="{{ $partner->partner_link }}">
                                            <span class="text-danger err-mgs" id="partner_link_err"></span>
                                        </div>
                                        <div class="form-group col-md-6" id="category_div">
                                            <label for="category">{{ __('admin_local.Partner Contact Number ( If any )') }} </label>
                                            <input type="text" class="form-control" name="partner_contact_number" id="partner_contact_number" value="{{ $partner->partner_contact_number }}">
                                            <span class="text-danger err-mgs" id="partner_contact_number_err"></span>
                                        </div>
                                        <div class="form-group col-md-6" id="category_div">
                                            <label for="category">{{ __('admin_local.Partner Email ( If any )') }} </label>
                                            <input type="text" class="form-control" name="partner_email" id="partner_email" value="{{ $partner->partner_email }}">
                                            <span class="text-danger err-mgs" id="partner_email_err"></span>
                                        </div>
                                        <div class="form-group col-md-12" id="category_div">
                                            <label for="category">{{ __('admin_local.Partner Adrress') }} </label>
                                            <textarea id="editor1" name="partner_address" >{{ $partner->partner_address }}</textarea>
                                            <span class="text-danger err-mgs" id="partner_address_err"></span>
                                        </div>
                                        <div class="form-group col-md-12" id="category_div">
                                            <label for="category">{{ __('admin_local.Short Details') }} </label>
                                            <input type="text" class="form-control" name="short_details" id="short_details" value="{{ $partner->short_details }}">
                                            <span class="text-danger err-mgs" id="short_details_err"></span>
                                        </div>
                                        <div class="form-group col-md-12" id="category_div">
                                            <label for="category">{{ __('admin_local.Details') }} </label>
                                            <textarea id="editor2" name="details" >{{ $partner->details }}</textarea>
                                            <span class="text-danger err-mgs" id="details_err"></span>
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
        var form_url = "{{ route('admin.partner.store') }}";
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
        var base_url = `{{ URL::to('/') }}`;

    </script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/custom/partner/partner.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'inventory/custom/user/user_list.js') }}"></script> --}}
@endpush
