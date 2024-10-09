@extends('backend.shared.layouts.admin')
@push('title')
    {{ __('admin_local.Edit Solution') }}
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
        .invalid-selec2{
            border-color: red !important;
        }
    </style>
@endpush
@section('content')
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-sm-6">
                    <h3>{{ __('admin_local.Edit Solution') }}</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="javascript:void(0)">{{ __('admin_local.Solution') }}</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="javascript:void(0)">{{ __('admin_local.View Solution') }}</a>
                        </li>
                        <li class="breadcrumb-item active">{{ __('admin_local.Edit Solution') }}</li>
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
                        <h3 class="card-title mb-0 text-center">{{ __('admin_local.Edit Solution') }}</h3>
                    </div>
                    <p class="px-4 text-danger"><i>{{ __('admin_local.The field labels marked with * are required input fields.') }}</i>
                    </p>
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input type="hidden" id="csrf_token" value="{{ csrf_token() }}">
                                <form action="theme-form" id="edit_solution_form" enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')
                                    <input type="hidden" name="solution_id" id="solution_id" value="{{ $solution->id }}"> 
                                    <div class="row">
                                        <div class="form-group col-md-4" id="parent_category_div">
                                            <label for="parent_category">{{ __('admin_local.Parent Category') }} *</label>
                                            <select class="js-example-basic-single form-select" id="parent_category"
                                                name="parent_category" onchange="getCategoryDetails(this.value,'category')">
                                                <option value="">{{ __('admin_local.Please Select') }}</option>
                                                @foreach ($parent_categories as $parent_category)
                                                    <option value="{{ $parent_category->id }}" {{ $parent_category->id==$solution->parent_category_id?'selected':'' }}>{{ $parent_category->parent_category_name }}</option>
                                                @endforeach
                                            </select>
                                            <span class="text-danger err-mgs" id="parent_category_err"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Category') }} *</label>
                                            <select class="js-example-basic-single form-select" id="category"
                                                name="category" onchange="getCategoryDetails(this.value,'sub_category')">
                                                <option value="">{{ __('admin_local.Please Select') }}</option>
                                                <option value="{{ $solution->category_id }}" selected>{{ $solution->category->category_name }}</option>
                                            </select>
                                            <span class="text-danger err-mgs" id="category_err"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="sub_category_div">
                                            <label for="sub_category">{{ __('admin_local.Sub Category') }} *</label>
                                            <select class="js-example-basic-single form-select" id="sub_category"
                                                name="sub_category">
                                                <option value="">{{ __('admin_local.Please Select') }}</option>
                                               <option value="{{ $solution->sub_category_id }}" selected>{{ $solution->subCategory->sub_category_name }}</option>
                                            </select>
                                            <span class="text-danger err-mgs" id="sub_category_err"></span>
                                        </div>
                                    </div>
                                    @php
                                        $solution_tags = explode(',',$solution->solutionDetails->solution_tags);
                                        $solution_details = $solution->solutionDetails;
                                    @endphp
                                    <div class="row my-3">
                                        <div class="form-group col-md-3">
                                            <input type="checkbox" name="solution_tags[]" id="solution_tag" value="What_We_Offer" {{ in_array('What_We_Offer',$solution_tags)?'checked':'' }}> {{ __('admin_local.What We Offer ?') }}
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input type="checkbox" name="solution_tags[]" id="solution_tag" value="Success_Stories" {{ in_array('Success_Stories',$solution_tags)?'checked':'' }}> {{ __('admin_local.Success Stories') }}
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input type="checkbox" name="solution_tags[]" id="solution_tag" value="Downloads" {{ in_array('Downloads',$solution_tags)?'checked':'' }}> {{ __('admin_local.Downloads') }}
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input type="checkbox" name="solution_tags[]" id="solution_tag" value="Security_Practices" {{ in_array('Security_Practices',$solution_tags)?'checked':'' }}> {{ __('admin_local.Security Practices') }}
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input type="checkbox" name="solution_tags[]" id="solution_tag" value="Improved_Services" {{ in_array('Improved_Services',$solution_tags)?'checked':'' }}> {{ __('admin_local.Improved Services') }}
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input type="checkbox" name="solution_tags[]" id="solution_tag" value="Digital_Management" {{ in_array('Digital_Management',$solution_tags)?'checked':'' }}> {{ __('admin_local.Digital Management') }}
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input type="checkbox" name="solution_tags[]" id="solution_tag" value="Overview" {{ in_array('Overview',$solution_tags)?'checked':'' }}> {{ __('admin_local.Overview') }}
                                        </div>
                                        {{-- <div class="form-group col-md-3">
                                            <input type="checkbox" name="solution_tags" id="solution_tag" value="Related_Links"> {{ __('admin_local.Related Links') }}
                                        </div> --}}
                                        <div class="form-group col-md-3">
                                            <input type="checkbox" name="solution_tags[]" id="solution_tag" value="Warehouses" {{ in_array('Warehouses',$solution_tags)?'checked':'' }}> {{ __('admin_local.Warehouses') }}
                                        </div>
                                    </div>
                                    <div class="row mb-4" id="What_We_Offer" style="display: {{ in_array('What_We_Offer',$solution_tags)?'':'none' }}">
                                        <h5 class="text-center"><u>{{ __('admin_local.What we Offer ?') }}</u></h5>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Title') }} *</label>
                                            <input type="text" class="form-control" name="what_we_offer_title" id="what_we_offer_title" value="{{ $solution_details->offer_title }}">
                                            <span class="text-danger err-mgs"></span>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Description') }} *</label>
                                            <textarea id="editor1" class="form-control" name="what_we_offer_description" id="what_we_offer_description">{!! $solution_details->offer_description !!}</textarea>
                                            <span class="text-danger err-mgs" id="what_we_offer_description_err"></span>
                                        </div>
                                    </div>
                                    <div class="row mb-4" id="Success_Stories" style="display: {{ in_array('Success_Stories',$solution_tags)?'':'none' }}">
                                        <h5 class="text-center"><u>{{ __('admin_local.Success Stories') }}</u></h5>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Title') }} *</label>
                                            <input type="text" class="form-control" name="success_stories_title" id="success_stories_title" value="{{ $solution_details->success_story }}">
                                            <span class="text-danger err-mgs"></span>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Description') }} *</label>
                                            <textarea id="editor2" class="form-control" name="success_stories_description" id="success_stories_description">{!! $solution_details->success_description !!}"</textarea>
                                            <span class="text-danger err-mgs" id="success_stories_description_err"></span>
                                        </div>
                                    </div>
                                    <div class="row mb-4" id="Downloads" style="display: {{ in_array('What_We_Offer',$solution_tags)?'':'none' }}">
                                        <h5 class="text-center"><u>{{ __('admin_local.Downloads') }}</u></h5>
                                        <div class="form-group col-md-3">
                                            <label for="">{{ __('admin_local.Icon') }}</label>
                                            <input type="file" class="form-control" id="downloads_icon_0" name="downloads_icon[]">
                                            <span class="text-danger err-mgs" id="downloads_icon_0_err"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="">{{ __('admin_local.Title') }}</label>
                                            <input type="text" class="form-control" id="downloads_title_0" name="downloads_title[]" value="{{ explode('|',$solution->solutionDetails->download_title)[0] }}">
                                            <span class="text-danger err-mgs" id="downloads_title_0_err"></span>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="">{{ __('admin_local.File') }}</label>
                                            <input type="file" class="form-control" id="downloads_file_0" name="downloads_file[]">
                                            <span class="text-danger err-mgs" id="downloads_file_0_err"></span>
                                        </div>
                                        <div class="form-group col-md-2" style="padding-top:30px;">
                                            <button type="button"  class="btn btn-primary form-control" id="add_new_download_btn">+ {{ __('admin_local.Add New') }}</button>
                                        </div>
                                        <div class="col-md-12" id="another_download">
                                            @foreach (explode('|',$solution->solutionDetails->download_title) as $dtkey=>$download_title)
                                            @php
                                                if($dtkey==0){
                                                    continue;
                                                }
                                            @endphp
                                            <div class="row">
                                                <div class="form-group col-md-3">
                                                    <label for="">{{ __('admin_local.Icon') }}</label>
                                                    <input type="file" class="form-control" id="downloads_icon_{{ $dtkey+1 }}" name="downloads_icon[]">
                                                    <span class="text-danger err-mgs" id="downloads_icon_{{ $dtkey+1 }}_err"></span>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <label for="">{{ __('admin_local.Title') }}</label>
                                                    <input type="text" class="form-control" id="downloads_title_{{ $dtkey+1 }}" name="downloads_title[]" value="{{ $download_title }}">
                                                    <span class="text-danger err-mg" id="downloads_title_{{ $dtkey+1 }}_err"></span>
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <label for="">{{ __('admin_local.File') }}</label>
                                                    <input type="file" class="form-control" id="downloads_file_{{ $dtkey+1 }}}" name="downloads_file[]">
                                                    <span class="text-danger err-mgs" id="downloads_file_{{ $dtkey+1 }}_err"></span>
                                                </div>
                                                <div class="form-group col-md-2" style="padding-top:30px;">
                                                    <button type="button" class="btn btn-danger form-control" id="add_new_download_remove_btn">{{ __('admin_local.Remove') }}</button>
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                    </div>
                                    <div class="row mb-4" id="Security_Practices" style="display: {{ in_array('Security_Practices',$solution_tags)?'':'none' }}">
                                        <h5 class="text-center"><u>{{ __('admin_local.Security Practice') }}</u></h5>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Title') }}</label>
                                            <input type="text" class="form-control" name="security_practices_title" id="security_practices_title" value="{{ $solution_details->security_practices_title }}">
                                            <span class="text-danger err-mgs" ></span>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Description') }}</label>
                                            <textarea id="editor3" class="form-control" name="security_practices_description">{!! $solution_details->security_practices_description !!}</textarea>
                                            <span class="text-danger err-mgs" id="security_practices_description_err"></span>
                                        </div>
                                    </div>
                                    <div class="row mb-4" id="Improved_Services" style="display: {{ in_array('Improved_Services',$solution_tags)?'':'none' }}">
                                        <h5 class="text-center"><u>{{ __('admin_local.Improved Services') }}</u></h5>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Title') }}</label>
                                            <input type="text" class="form-control" name="improved_services_title" id="improved_services_title" value="{{ $solution_details->improved_services_title }}">
                                            <span class="text-danger err-mgs"></span>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Description') }}</label>
                                            <textarea id="editor4" class="form-control" name="improved_services_description">{!! $solution_details->improved_services_description !!}</textarea>
                                            <span class="text-danger err-mgs" id="improved_services_description_err"></span>
                                        </div>
                                    </div>
                                    <div class="row mb-4" id="Digital_Management" style="display: {{ in_array('Digital_Management',$solution_tags)?'':'none' }}">
                                        <h5 class="text-center"><u>{{ __('admin_local.Digital Management') }}</u></h5>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Title') }}</label>
                                            <input type="text" class="form-control" name="digital_management_title" id="digital_management_title" value="{{ $solution_details->digital_management_title }}">
                                            <span class="text-danger err-mgs"></span>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Description') }}</label>
                                            <textarea id="editor5" class="form-control" name="digital_management_description">{!! $solution_details->digital_management_description !!}</textarea>
                                            <span class="text-danger err-mgs" id="digital_management_description_err"></span>
                                        </div>
                                    </div>
                                    <div class="row mb-4" id="Overview" style="display: {{ in_array('Overview',$solution_tags)?'':'none' }}">
                                        <h5 class="text-center"><u>{{ __('admin_local.Overview') }}</u></h5>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Title') }}</label>
                                            <input type="text" class="form-control" name="overview_title" id="overview_title" value="{{ $solution_details->overview_title }}">
                                            <span class="text-danger err-mgs"></span>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Description') }}</label>
                                            <textarea id="editor6" class="form-control" name="overview_description">{!! $solution_details->overview_description !!}</textarea>
                                            <span class="text-danger err-mgs" id="overview_description_err"></span>
                                        </div>
                                    </div>
                                    <div class="row mb-4" id="Warehouses" style="display: {{ in_array('Warehouses',$solution_tags)?'':'none' }}">
                                        <h5 class="text-center"><u>{{ __('admin_local.Wharehouses') }}</u></h5>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Title') }}</label>
                                            <input type="text" class="form-control" name="warehouses_title" id="warehouses_title" value="{{ $solution_details->warehouse_title }}">
                                            <span class="text-danger err-mgs"></span>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="">{{ __('admin_local.Description') }}</label>
                                            <textarea id="editor7" class="form-control" name="warehouses_description">{{ $solution_details->warehouse_description }}</textarea>
                                            <span class="text-danger err-mgs" id="warehouses_description_err"></span>
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
        $('.js-example-basic-single').select2();
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
        var form_url = "{{ route('admin.solution.store') }}";
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
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/custom/solution/solution.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'inventory/custom/user/user_list.js') }}"></script> --}}
@endpush