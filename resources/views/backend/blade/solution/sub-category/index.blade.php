@extends('backend.shared.layouts.admin')
@push('title')
    {{ __('admin_local. SolutionSub Category') }}
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
                    <h3>{{ __('admin_local. SolutionSub Category List') }}</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="javascript:void(0)">{{ __('admin_local. Solution') }}</a>
                        </li>
                        <li class="breadcrumb-item active">{{ __('admin_local. SolutionSub Category List') }}</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    {{-- Add Category Modal Start --}}

    <div class="modal fade" id="add-category-modal" tabindex="-1" aria-labelledby="bs-example-modal-lg" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header d-flex align-items-center" style="border-bottom:1px dashed gray">
                    <h4 class="modal-title" id="myLargeModalLabel">
                        {{ __('admin_local.Add  SolutionSub Category') }}
                    </h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <p class="px-3 text-danger">
                    <i>{{ __('admin_local.The field labels marked with * are required input fields.') }}</i>
                </p>
                <div class="modal-body" style="margin-top: -20px">
                    <form method="POST" action="" id="add_sub_category_form" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-lg-6 mt-2">
                                <label for="category_name"><strong>{{ __('admin_local.Sub Category Name') }} *</strong></label>
                                <input type="text" class="form-control" name="sub_category_name" id="sub_category_name">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-6 mt-2">
                                <label for="parent_category"><strong>{{ __('admin_local.Select Parent Category') }}
                                    </strong></label>
                                <select class="js-example-basic-single form-control" name="parent_category"
                                    id="parent_category">
                                    <option value="">Select Please</option>
                                    @foreach ($parent_categories as $parent_category)
                                        <option value="{{ $parent_category->id }}">
                                            {{ $parent_category->parent_category_name }}</option>
                                    @endforeach
                                </select>
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-6 mt-2">
                                <label for="category"><strong>{{ __('admin_local.Select Category') }}
                                    </strong></label>
                                <select class="js-example-basic-single2 form-control" name="category"
                                    id="category">
                                    <option value="">Select Please</option>
                                </select>
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-6 mt-2">
                                <label for="sub_category_image"><strong>{{ __('admin_local.Sub Category Image') }}
                                    </strong></label>
                                <input type="file" class="form-control" name="sub_category_image" id="sub_category_image">
                                <span class="text-danger err-mgs"></span>
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

    {{-- Add Category Modal End --}}

    {{-- Edit Category Modal Start --}}

    <div class="modal fade" id="edit-sub-category-modal" tabindex="-1" aria-labelledby="bs-example-modal-lg"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header d-flex align-items-center" style="border-bottom:1px dashed gray">
                    <h4 class="modal-title" id="myLargeModalLabel">
                        {{ __('admin_local.Edit Solution Sub Category') }}
                    </h4>
                    <button type="button" class="btn-close " data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <p class="px-3 text-danger">
                    <i>{{ __('admin_local.The field labels marked with * are required input fields.') }}</i>
                </p>
                <div class="modal-body" style="margin-top: -20px">
                    <form id="edit_sub_category_form" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <input type="hidden" id="sub_category_id" name="sub_category_id" value="">
                        <div class="row">
                            <div class="col-lg-6 mt-2">
                                <label for="sub_category_name"><strong>{{ __('admin_local.Sub Category Name') }} *</strong></label>
                                <input type="text" class="form-control" name="sub_category_name" id="sub_category_name">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-6 mt-2">
                                <label for="parent_category"><strong>{{ __('admin_local.Select Parent Category') }}
                                    </strong></label>
                                <select class="js-example-basic-single1 form-control" name="parent_category"
                                    id="parent_category">
                                    <option value="">Select Please</option>
                                    @foreach ($parent_categories as $parent_category)
                                        <option value="{{ $parent_category->id }}">
                                            {{ $parent_category->parent_category_name }}</option>
                                    @endforeach
                                </select>
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-6 mt-2">
                                <label for="category"><strong>{{ __('admin_local.Select Category') }}
                                    </strong></label>
                                <select class="js-example-basic-single3 form-control" name="category"
                                    id="category">
                                    <option value="">Select Please</option>
                                </select>
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-6 mt-2">
                                <label for="sub_category_image"><strong>{{ __('admin_local.Sub Category Image') }}
                                    </strong></label>
                                <input type="file" class="form-control" name="sub_category_image" id="sub_category_image">
                                <span class="text-danger err-mgs"></span>
                            </div>
                            <div class="col-lg-6 mt-2">
                                <label for="sub_category_image"><strong>{{ __('admin_local.Previous Sub Category Image') }}
                                    </strong></label>
                                <div style="height: 50px" id="image_preview">
                                    <img src="" alt="">
                                </div>
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

    {{-- Edit Category Modal End --}}



    <div class="container-fluid">
        <div class="row">
            <!-- Column -->
            <div class="col-lg-10 mx-auto">
                <div class="card">
                    <div class="card-header py-3" style="border-bottom: 2px dashed gray">
                        <h3 class="card-title mb-0 text-center">{{ __('admin_local. SolutionSub Category List') }}</h3>
                    </div>

                    <div class="card-body">
                        @if (hasPermission(['category-store']))
                            <div class="row mb-3">
                                <div class="col-md-3">
                                    <button class="btn btn-success" type="btn" data-bs-toggle="modal"
                                        data-bs-target="#add-category-modal">+
                                        {{ __('admin_local.Add  SolutionSub Category') }}</button>
                                </div>
                            </div>
                        @endif
                        <div class="table-responsive theme-scrollbar">
                            <table id="basic-1" class="display table-bordered">
                                <thead>
                                    <tr>
                                        <th>{{ __('admin_local.Sub Category Name') }}</th>
                                        <th>{{ __('admin_local.Category') }}</th>
                                        <th>{{ __('admin_local.Parent Category') }}</th>
                                        <th>{{ __('admin_local.Image') }}</th>
                                        <th>{{ __('admin_local.Created By') }}</th>
                                        <th>{{ __('admin_local.Status') }}</th>
                                        <th>{{ __('admin_local.Action') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($sub_categories as $sub_category)
                                        <tr id="trid-{{ $sub_category->id }}" data-id="{{ $sub_category->id }}">
                                            <td>{{ $sub_category->sub_category_name }}</td>
                                            <td>{{ $sub_category->category->category_name? $sub_category->category->category_name: 'N/A' }}
                                            <td>{{ $sub_category->parentCategory->parent_category_name?$sub_category->parentCategory->parent_category_name : 'N/A' }}
                                            </td>
                                            <td>
                                                @if ($sub_category->sub_category_image)
                                                    <img src="{{ asset(env('ASSET_DIRECTORY').'/'.$sub_category->sub_category_image) }}" alt=""
                                                        style="height:">
                                                @else
                                                    {{ __('admin_local.No File') }}
                                                @endif
                                            </td>
                                            <td>{{ $sub_category->admin->name }}</td>
                                            <td class="text-center">
                                                @if (hasPermission(['category-update']))
                                                    <span
                                                        class="mx-2">{{ $sub_category->sub_category_status == 0 ? 'Inactive' : 'Active' }}</span><input
                                                        data-status="{{ $sub_category->sub_category_status == 0 ? 1 : 0 }}"
                                                        id="status_change" type="checkbox" data-toggle="switchery"
                                                        data-color="green" data-secondary-color="red" data-size="small"
                                                        {{ $sub_category->sub_category_status == 1 ? 'checked' : '' }} />
                                                @else
                                                    <span
                                                        class="badge badge-danger">{{ __('admin_local.No Permission') }}</span>
                                                @endif
                                            </td>
                                            <td>
                                                @if (hasPermission(['sub-category-update', 'sub-category-delete']))
                                                    <div class="dropdown">
                                                        <button
                                                            class="btn btn-info text-white px-2 py-1 dropbtn">{{ __('admin_local.Action') }}
                                                            <i class="fa fa-angle-down"></i></button>
                                                        <div class="dropdown-content">
                                                            @if (hasPermission(['sub-category-update']))
                                                                <a data-bs-toggle="modal" style="cursor: pointer;"
                                                                    data-bs-target="#edit-sub-category-modal"
                                                                    class="text-primary" id="edit_button"><i
                                                                        class=" fa fa-edit mx-1"></i>{{ __('admin_local.Edit') }}</a>
                                                            @endif
                                                            @if (hasPermission(['sub-category-delete']))
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
            dropdownParent: $('#add-category-modal')
        });
        $('.js-example-basic-single2').select2({
            dropdownParent: $('#add-category-modal')
        });
        $('.js-example-basic-single1').select2({
            dropdownParent: $('#edit-sub-category-modal')
        });
        $('.js-example-basic-single3').select2({
            dropdownParent: $('#edit-sub-category-modal')
        });
        $(document).on('select2:open', () => {
            document.querySelector('.select2-search__field').focus();
        });

        $(document).on('change','#add-category-modal #parent_category',function(){
            var id = $(this).val()==''?'empty':$(this).val()
            $.ajax({
                type: "GET",
                url: 'category/get/category-details/' +id+'/category',
                dataType: "JSON",
                success: function (data) {
                    $('#add-category-modal #category').empty();

                    var options = '<option>Select Please</option>';
                    $.each(data,function(key,val){
                        options = options + '<option value="' + val.id + '">' + val.category_name + '</option>';
                    })
                    // $('#add-category-modal #category');
                    $('#add-category-modal #category').append(options).trigger('change');
                },
                error: function () {

                }
            })
        })
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

        var form_url = "{{ route('admin.solution.sub-category.store') }}";
        var submit_btn_after = `{{ __('admin_local.Submitting') }}`;
        var submit_btn_before = `{{ __('admin_local.Submit') }}`;
        var no_permission_mgs = `{{ __('admin_local.No Permission') }}`;


        var delete_swal_title = `{{ __('admin_local.Are you sure?') }}`;
        var delete_swal_text =
            `{{ __('admin_local.Once deleted, you will not be able to recover this size data') }}`;
        var delete_swal_cancel_text = `{{ __('admin_local.Delete request canceld successfully') }}`;
        var no_file = `{{ __('admin_local.No file') }}`;
    </script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/custom/solution/sub_category.js') }}"></script>
    {{-- <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'inventory/custom/user/user_list.js') }}"></script> --}}
@endpush
