@extends('backend.shared.layouts.admin')
@push('title')
    {{ __('admin_local.Edit Product') }}
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
                    <h3>{{ __('admin_local.Edit Product') }}</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="javascript:void(0)">{{ __('admin_local.Product') }}</a>
                        </li>
                        <li class="breadcrumb-item active">{{ __('admin_local.Product List') }}</li>
                        <li class="breadcrumb-item active">{{ __('admin_local.Edit Product') }}</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <!-- Column -->
            <div class="col-lg-12 mx-auto">
                <div class="card">
                    <div class="card-header py-3" style="border-bottom: 2px dashed gray">
                        <h3 class="card-title mb-0 text-center">{{ __('admin_local.Edit Product') }}</h3>
                    </div>
                    <p class="px-4 text-danger"><i>{{ __('admin_local.The field labels marked with * are required input fields.') }}</i>
                    </p>
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input type="hidden" id="csrf_token" value="{{ csrf_token() }}">
                                <form action="theme-form" id="add_product_form" enctype="multipart/form-data">
                                    @method('PUT')
                                    @csrf
                                    <div class="row">
                                        <div class="form-group col-md-4">
                                            <label for="product_type">{{ __('admin_local.Product Type') }}</label>
                                            <select class="form-select" id="product_type" name="product_type">
                                                <option value="" disabled>{{ __('admin_local.Please Select') }} * </option>
                                                <option value="standard" {{ $editproduct->type=="standard"?'selected':'' }}>Standard</option>
                                                <option value="combo" {{ $editproduct->type=="combo"?'selected':'' }} disabled>Combo</option>
                                                <option value="digital" {{ $editproduct->type=="digital"?'selected':'' }} disabled>Digital</option>
                                                <option value="service" {{ $editproduct->type=="service"?'selected':'' }} disabled>Service</option>
                                            </select>
                                            <span class="text-danger err-mgs-product_type"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="product_name">{{ __('admin_local.Product Name') }} *</label>
                                            <input type="text" class="form-control" id="product_name"
                                                name="product_name" value="{{ $editproduct->name }}">
                                            <span class="text-danger err-mgs-product_name"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="product_code">{{ __('admin_local.Product Code') }} *</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="product_code"
                                                    name="product_code" value="{{ $editproduct->code }}"><span id="get_code" class="input-group-text"
                                                    style="border:1px solid black;"><i class="fa fa-refresh"></i></span>
                                                
                                            </div>
                                            <span class="text-danger err-mgs-product_code"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="barcode_symbology">{{ __('admin_local.Barcode Symbology') }} *</label>
                                            <select class="form-select" id="barcode_symbology" name="barcode_symbology">
                                                <option value="" disabled>{{ __('admin_local.Please Select') }}</option>
                                                <option value="C128" {{ $editproduct->barcode_symbology=="C128"?'selected':'' }}>Code 128</option>
                                                <option value="C39" {{ $editproduct->barcode_symbology=="C39"?'selected':'' }}>Code 39</option>
                                                <option value="UPCA" {{ $editproduct->barcode_symbology=="UPCA"?'selected':'' }}>UPC-A</option>
                                                <option value="UPCE" {{ $editproduct->barcode_symbology=="UPCE"?'selected':'' }}>UPC-E</option>
                                                <option value="EAN8" {{ $editproduct->barcode_symbology=="EAN8"?'selected':'' }}>EAN-8</option>
                                                <option value="EAN13" {{ $editproduct->barcode_symbology=="EAN13"?'selected':'' }}>EAN-13</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-4" id="attatchment_div">
                                            <label for="attatch_file">{{ __('admin_local.Attatched File') }} *</label>
                                            <input type="file" class="form-control" id="attatched_file"
                                                name="attatch_file">
                                            <span class="text-danger err-mgs-attatch_file"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="brand_div">
                                            <label for="brand">{{ __('admin_local.Brand') }}</label>
                                            <select class="js-example-basic-single form-select" id="brand"
                                                name="brand">
                                                <option value="">{{ __('admin_local.Please Select') }}</option>
                                                @foreach ($brands as $brand)
                                                    <option value="{{ $brand->id }}" {{ $editproduct->brand_id==$brand->id?'selected':'' }}>{{ $brand->brand_name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            <span class="text-danger err-mgs-brand"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="parent_category_div">
                                            <label for="category">{{ __('admin_local.Parent Category') }} *</label>
                                            <select class="js-example-basic-single form-control" id="parent_category"
                                                name="parent_category" onchange="getCategoryDetails(this.value,'category')">
                                                <option value="">{{ __('admin_local.Please Select') }}</option>
                                                @foreach ($parent_categories as $parent_category)
                                                    <option value="{{ $parent_category->id }}" {{ $editproduct->parent_category_id==$parent_category->id?'selected':'' }}>
                                                        {{ $parent_category->parent_category_name }}</option> 
                                                @endforeach
                                            </select>
                                            <span class="text-danger err-mgs-category"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="category_div">
                                            <label for="category">{{ __('admin_local.Category') }} *</label>
                                            <select class="js-example-basic-single form-control" id="category"
                                                name="category" onchange="getCategoryDetails(this.value,'sub_category')">
                                                <option value="">{{ __('admin_local.Please Select') }}</option>
                                                    <option value="{{ $editproduct->category_id }}" selected>{{ $editproduct->category->category_name }}</option>
                                            </select>
                                            <span class="text-danger err-mgs-category"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="sub_category_div">
                                            <label for="category">{{ __('admin_local.Sub Category') }} *</label>
                                            <select class="js-example-basic-single form-control" id="sub_category"
                                                name="sub_category">
                                                <option value="{{ $editproduct->sub_category_id?$editproduct->sub_category_id:'' }}" selected>{{ $editproduct->sub_category_id?$editproduct->subCategory->sub_category_name:__('admin_local.Please Select') }}</option>
                                            </select>
                                            <span class="text-danger err-mgs-category"></span>
                                        </div>
                                    </div>
                                    <div class="row" id="combo">
                                        <div class="form-group col-md-8">
                                            <label for="add_combo_product">{{ __('admin_local.Add Combo Product') }} *</label>
                                            <div class="input-group col-md-12" id="the-basics">
                                                <span class="input-group-text col-md-1" style="border:1px solid black;"><i
                                                        class="fa fa-barcode"></i></span>
                                                <div class="col-md-11">
                                                    <input type="text" class="form-control" name="add_combo_product"
                                                    id="add_combo_product" style="width: 100% !important;">
                                                </div>
                                                
                                            </div>
                                            <span class="text-danger err-mgs-add_combo_product"></span>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="add_combo_product">{{ __('admin_local.Combo Products') }} *</label>
                                            <div class="table-responsive">
                                                <table id="combo_product_table" class="display table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th><b>{{ __('admin_local.Product') }}</b></th>
                                                            <th><b>{{ __('admin_local.Quantity') }}</b></th>
                                                            <th><b>{{ __('admin_local.Unit Price') }}</b></th>
                                                            <th><b>{{ __('admin_local.Action') }}</b></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                         
                                                    </tbody>
                                                </table>
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <div class="row" id="visible_unit">
                                        <div class="form-group col-md-4">
                                            <label for="product_unit">{{ __('admin_local.Product Unit') }} *</label>
                                            <select class="js-example-basic-single form-control" id="product_unit"
                                                name="product_unit">
                                                <option value="">{{ __('admin_local.Please Select') }}</option>
                                                @foreach ($units as $unit)
                                                    <option value="{{ $unit->id }}" {{ $editproduct->unit_id==$unit->id?'selected':'' }}>{{ $unit->unit_name }}</option>
                                                @endforeach
                                            </select>
                                            <span class="text-danger err-mgs-product_unit"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="sale_unit">{{ __('admin_local.Sale Unit') }} *</label>
                                            <select class="js-example-basic-single form-control" id="sale_unit"
                                                name="sale_unit">
                                                <option value="">{{ __('admin_local.Please Select') }}</option>
                                                @if ($editproduct->sale_unit_id)
                                                    <option value="{{ $editproduct->unit_id }}" selected>{{ $editproduct->unit->unit_name }}</option>
                                                @endif
                                            </select>
                                            <span class="text-danger err-mgs-sale_unit"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="purchase_unit">{{ __('admin_local.Purchase Unit') }} *</label>
                                            <select class="js-example-basic-single form-control" style="border-color: #da4d4d !important;" id="purchase_unit"
                                                name="purchase_unit">
                                                <option value="">{{ __('admin_local.Please Select') }}</option>
                                                @if ($editproduct->purchase_unit_id)
                                                    <option value="{{ $editproduct->unit_id }}" selected>{{ $editproduct->unit->unit_name }}</option>
                                                @endif
                                            </select>
                                            <span class="text-danger err-mgs-purchase_unit"></span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-4">
                                            <label for="unit_size">{{ __('admin_local.Unit Size') }} *</label>
                                            <input type="text" class="form-control" id="unit_size" name="unit_size" value="{{ $editproduct->unit_size?$editproduct->unit_size:'' }}">
                                            <span class="text-danger err-mgs-unit_size"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="cartoon_size">{{ __('admin_local.Cartoon Size') }} *</label>
                                            <input type="text" class="form-control" id="cartoon_size"
                                                name="cartoon_size" value="{{ $editproduct->cartoon_size?$editproduct->cartoon_size:'' }}">
                                                <span class="text-danger err-mgs-cartoon_size"></span>
                                        </div>
                                        <div class="form-group col-md-4" id="product_cost_div">
                                            <label for="product_cost">{{ __('admin_local.Product Cost') }} *</label>
                                            <input type="text" class="form-control" id="product_cost"
                                                name="product_cost" value="{{ $editproduct->cost?$editproduct->cost:'' }}">
                                                <span class="text-danger err-mgs-product_cost"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="product_price">{{ __('admin_local.Product Price') }} *</label>
                                            <input type="text" class="form-control" id="product_price"
                                                name="product_price" value="{{ $editproduct->price?$editproduct->price:'' }}">
                                                <span class="text-danger err-mgs-product_price"></span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="daily_sale_objective">{{ __('admin_local.Daily Sale Objective') }} <i
                                                    style="font-size: 16px;cursor:pointer"
                                                    class="fa fa-exclamation-circle" data-bs-toggle="tooltip"
                                                    data-bs-placement="top"
                                                    title="{{ __('admin_local.Minimum qty which must be sold in a day. If not, you will be notified on dashboard. But you have to set up the cron job properly for that. Follow the documentation in that regard.') }}"></i></label>
                                            <input type="text" class="form-control" id="daily_sale_objective"
                                                name="daily_sale_objective" value="{{ $editproduct->daily_sale_objective?$editproduct->daily_sale_objective:'' }}">
                                        </div>
                                        <div class="form-group col-md-4" id="alert_quantity_div">
                                            <label for="alert_quantity">{{ __('admin_local.Alert Quantity') }} </label>
                                            <input type="number" class="form-control" id="alert_quantity"
                                                name="alert_quantity" min="0" value="{{ $editproduct->alert_quantity?$editproduct->alert_quantity:'' }}">
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="product_tax">{{ __('admin_local.Product Tax') }}</label>
                                            <select class="form-control" id="product_tax" name="product_tax">
                                                <option value="1">No Tax</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="tax_method">{{ __('admin_local.Tax Method') }} <i
                                                    style="font-size: 16px;cursor:pointer"
                                                    class="fa fa-exclamation-circle" data-bs-toggle="tooltip"
                                                    data-bs-placement="top"
                                                    title="{{ __('admin_local.Exclusive: Poduct price = Actual product price + Tax. Inclusive: Actual product price = Product price - Tax') }}"></i></label>
                                            <select class="form-control" id="tax_method" name="tax_method">
                                                <option value="1" {{ $editproduct->tax_method?($editproduct->tax_method==1?'selected':''):'' }}>Inclusive</option>
                                                <option value="2" {{ $editproduct->tax_method?($editproduct->tax_method==2?'selected':''):'' }}>Exclusive</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <input type="checkbox" id="featured" class="mr-2" name="featured" {{ $editproduct->featured?'checked':'' }}>
                                            &nbsp;&nbsp;<label for="featured">{{ __('admin_local.Featured') }} </label>
                                            <p>{{ __('admin_local.Featured product will be displayed in POS') }}</p>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <input type="checkbox" id="embedded_barcode" name="embedded_barcode" {{ $editproduct->is_embeded?'checked':'' }}/>
                                            &nbsp;&nbsp;<label for="embedded_barcode">{{ __('admin_local.Embedded Barcode') }} <i
                                                    style="font-size: 16px;cursor:pointer"
                                                    class="fa fa-exclamation-circle" data-bs-toggle="tooltip"
                                                    data-bs-placement="top"
                                                    title="{{ __('admin_local.Check this if this product will be used in weight scale machine.') }}"></i></label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <label for="product_image">{{ __('admin_local.Product Image / Images') }} <i
                                                    style="font-size: 16px;cursor:pointer"
                                                    class="fa fa-exclamation-circle" data-bs-toggle="tooltip"
                                                    data-bs-placement="top"
                                                    title="{{ __('admin_local.You can upload multiple image. Only .jpeg, .jpg, .png, .gif file can be uploaded. First image will be base image.') }}"></i>
                                            </label>
                                            <div id="dropzoneDragArea" class="dropzone dropzone-info">
                                                <div class="dz-message needsclick"><i class="icon-cloud-up"></i>
                                                    <h6>{{ __('admin_local.Drop files here or click to upload') }}.</h6>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="product_details">{{ __('admin_local.Product Details') }} </label>
                                            <textarea id="editor1" name="product_details" cols="30" rows="10">{!! $editproduct->product_details?$editproduct->product_details:'' !!}</textarea>
                                        </div>
                                    </div>
                                    <div class="row" id="variant_row">
                                        <div class="form-group col-md-12">
                                            <input type="checkbox" id="variant" class="mr-2" name="variant" {{  $editproduct->is_variant==1?'checked':'' }}>
                                            &nbsp;&nbsp;<label for="variant">{{ __('admin_local.This product has variant') }}
                                            </label>
                                        </div>
                                    </div>
                                    <div class="row variant_option_row" id="variant_option_row"
                                        style="margin-bottom: -30px;">
                                        
                                        <div class="form-group col-md-8 mx-auto d-none" id="variant_error">
                                            <div class="alert alert-warning alert-dismissible bg-warning text-white border-0 fade show"
                                                role="alert">
                                                <button type="button" class="btn-close" data-bs-dismiss="alert"
                                                    aria-label="Close"></button>
                                                <strong>{{ __('admin_local.Varient options can not be null') }}</strong>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label for="variant_option">{{ __('admin_local.Option *') }}</label>
                                            <input type="text" class="form-control" name="variant_option[]"
                                                id="variant_option">
                                            <span class="text-danger err-mgs"></span>
                                        </div>
                                        <div class="form-group col-md-5" id="variant_value_label">
                                            <label for="variant_value" >{{ __('admin_local.Value *') }}</label>
                                            <input type="text" class="form-control variant_value" name="variant_value[]" id="variant_value" data-role="tagsinput">
                                                <span class="text-danger err-mgs"></span>
                                        </div>
                                        <div class="form-group col-md-2 text-center" style="line-height: 100px;">
                                            <button type="button" class="btn btn-primary" id="add_new_variant">+ {{ __('admin_local.Add Varient') }}</button>
                                        </div>
                                    </div>
                                    <div>

                                    </div>
                                    <div class="row mb-4" id="variant_option_table">
                                        <div class="form-group col-md-12">
                                            <table class="display table table-bordered">
                                                <thead>
                                                    <tr class="table-dark">
                                                        <th><b>{{ __('admin_local.Name') }}</b></th>
                                                        <th><b>{{ __('admin_local.Item Code') }}</b></th>
                                                        <th><b>{{ __('admin_local.Additional Cost') }}</b></th>
                                                        <th><b>{{ __('admin_local.Additional Price') }}</b></th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="row " id="warehouse_price_row">
                                        <div class="form-group col-md-8">
                                            <input type="checkbox" id="warehouse_price" class="mr-2"
                                                name="warehouse" {{  $editproduct->is_diffPrice==1?'checked':'' }}>
                                            &nbsp;&nbsp;<label
                                                for="warehouse_price">{{ __('admin_local.This product has different price for different warehouse') }}
                                            </label>
                                        </div>
                                    </div>
                                    <div class="row mb-3" id="warehouse_price_table">
                                        <div class="form-group col-md-8">
                                            <table class="display table table-bordered">
                                                <thead>
                                                    <tr class="table-success">
                                                        <th><b>{{ __('admin_local.Warehouse') }}</b></th>
                                                        <th><b>{{ __('admin_local.Quantity') }}</b></th>
                                                        <th><b>{{ __('admin_local.Price') }}</b></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @foreach ($warehouses as $warehouse)
                                                    @php
                                                        $warehouse_qty=0;
                                                        $warehouse_price=0;
                                                        foreach ($editproduct->warehousePrice as $value) {
                                                            if($value->warehouse_id==$warehouse->id){
                                                                $warehouse_qty=$value->quantity;
                                                                $warehouse_price=$value->price;
                                                                break;
                                                            }
                                                        }
                                                    @endphp
                                                        <tr>
                                                            <td><input type="text" class="form-control" name="warehouse_name[]" value="{{ $warehouse->name }}" readonly></td>
                                                            <input type="hidden" class="form-control" name="warehouse_id[]" value="{{ $warehouse->id }}" >
                                                            <td><input type="number" name="warehouse_quantity[]" class="form-control" value="{{ $warehouse_qty }}"
                                                                    min="0"></td>
                                                            <td><input type="number" name="warehouse_prices[]" class="form-control" value="{{ $warehouse_price }}"
                                                                        min="0"></td>
                                                        </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="row" id="batch_expire_date_row">
                                        <div class="form-group col-md-8">
                                            <input type="checkbox" id="batch_expire_date" class="mr-2"
                                                name="batch_expire_date" value="1">
                                            &nbsp;&nbsp;<label
                                                for="batch_expire_date">{{ __('admin_local.This product has batch and expired date') }}
                                            </label>
                                        </div>
                                    </div>
                                    <div class="row" id="imei_row">
                                        <div class="form-group col-md-8">
                                            <input type="checkbox" id="imei" class="mr-2" name="imei" {{  $editproduct->is_imei==1?'checked':'' }}>
                                            &nbsp;&nbsp;<label
                                                for="imei">{{ __('admin_local.This product has IMEI or Serial numbers') }}
                                            </label>
                                        </div>
                                    </div>
                                    <div class="row" id="add_promotional_price_div">
                                        <div class="form-group col-md-8">
                                            <input type="checkbox" id="add_promotional_price" class="mr-2"
                                                name="add_promotional_price" {{  $editproduct->promotion==1?'checked':'' }}>
                                            &nbsp;&nbsp;<label
                                                for="add_promotional_price">{{ __('admin_local.Add Promotional Price') }} </label>
                                        </div>
                                    </div>
                                    <div class="row" id="add_promotional_price_row">
                                        <div class="form-group col-md-4">
                                            <label for="promotional_price">{{ __('admin_local.Promotional Price') }}</label>
                                            <input type="text" name="promotional_price" id="promotional_price"
                                                class="form-control" value="{{ $editproduct->promotion==1?$editproduct->promotion_price:'' }}">
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="promotional_start">{{ __('admin_local.Promotion Starts') }}</label>
                                            <div class="input-group">
                                                <span class="input-group-text" style="border:1px solid black;"><i
                                                        class="fa fa-calendar"></i></span><input type="date"
                                                    name="promotional_start" id="promotional_start"
                                                    class="datepicker-here form-control digits" data-language="en"
                                                    data-position="top right" value="{{ $editproduct->promotion==1?$editproduct->starting_date:'' }}">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="promotional_end">{{ __('admin_local.Promotion Ends') }}</label>
                                            <div class="input-group">
                                                <span class="input-group-text" style="border:1px solid black;"><i
                                                        class="fa fa-calendar"></i></span><input type="date"
                                                    name="promotional_end" id="promotional_end"
                                                    class="datepicker-here form-control digits" data-language="en"
                                                    data-position="top right" value="{{ $editproduct->promotion==1?$editproduct->last_date:'' }}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-8">
                                            <button class="btn btn-primary" id="submit-btn" type="submit">{{ __('admin_local.Update Product')}}</button>
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

        $("#get_code").click(function() {
            $.get('generate/product-code', function(data) {
                $("input[name='product_code']").empty().val(data);
            });
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

        var form_url = "{{ route('admin.product.update',$editproduct->id) }}";
        var base_url = "{{ URL::to('/') }}";
        var submit_btn_after = `{{ __('admin_local.Submitting') }}`;
        var submit_btn_before = `{{ __('admin_local.Submit') }}`;
        var no_permission_mgs = `{{ __('admin_local.No Permission') }}`;


        var delete_swal_title = `{{ __('admin_local.Are you sure?') }}`;
        var delete_swal_text =
            `{{ __('admin_local.Once deleted, you will not be able to recover this size data') }}`;
        var delete_swal_cancel_text = `{{ __('admin_local.Delete request canceld successfully') }}`;
        var no_file = `{{ __('admin_local.No file') }}`;

        var substringMatcher = function(strs) {
            return function findMatches(q, cb) {
            var matches, substringRegex;
            matches = [];
            substrRegex = new RegExp(q, 'i');
            $.each(strs, function(i, str) {
                if (substrRegex.test(str)) {
                matches.push(str);
                }
            });
            cb(matches);
            };
        };
        var products = [{!! "'" . implode ( "', '", $product_name ) . "'" !!}];
        var product_prices =[{!! "'" . implode ( "', '", $product_prices ) . "'" !!}];
        $('#the-basics .form-control').typeahead({
            hint: true,
            highlight: true,
            minLength: 1
        },
        {
            name: 'products',
            source: substringMatcher(products)
        });
    </script>

    <script>
        $(document).ready(function(){
            if($('#variant').val){
                let product_vari = "{{$editproduct->variant_option }}";
                let product_vari_val = "{{$editproduct->variant_value }}";
                product_vari_val = product_vari_val.split("|");
                
                $.each(product_vari.split(","),function(varid,varopt){
                    if(varid==0){
                        $('#variant_option_row #variant_option').val(varopt);
                        $('#variant_option_row #variant_value_label').empty().append('<label for="variant_value">Value *</label><input type="text" class="form-control variant_value" name="variant_value[]" value="'+product_vari_val[varid]+'" id="variant_value" data-role="tagsinput">');
                        // console.log($('#variant_option_row div:nth-child(2)'));
                    }else{
                        $('#variant_option_row').next('div').append('<div class="row variant_option_row"><div class="form-group col-md-5"><label for="variant_option">Option *</label><input type="text" class="form-control" name="variant_option[]" id="variant_option" value="'+varopt+'"> </div><div class="form-group col-md-5"> <label for="variant_value">Value *</label><input type="text" class="form-control variant_value" name="variant_value[]" value="'+product_vari_val[varid]+'" id="variant_value" data-role="tagsinput"></div><div class="form-group col-md-2" style="line-height: 100px;"><button type="button" class="btn btn-danger py-2 px-2" id="remove_varient_div"><i class="fa fa-trash"></i></button></div></div>');
                    }
                    
    

                    $(".variant_value").tagsinput();
                })
            }
        })   
    </script>
    <script src="{{ asset(env('ASSET_DIRECTORY').'/'.'admin/custom/product/product_edit.js') }}"></script>
    <script>
        $(document).ready(function(){
            if($('#variant').val){
                let var_add_cost = {!! $editproduct->productVariant !!};
                $('#variant_option_table table tbody tr').each(function(tridx,trtdval){
                    // $(this+" td:nth-child(2)").empty();
                    $(this).find('td:eq(2)').find('input').val(var_add_cost[tridx]['additional_cost']);
                    $(this).find('td:eq(3)').find('input').val(var_add_cost[tridx]['additional_price']);
                })
            }

            if($('#product_type').val()=='stadard'){
                product_type_standard();
            }else if($('#product_type').val()=='combo'){
                product_type_combo();
            }else if($('#product_type').val()=='digital'){
                product_type_digital();
            }else if($('#product_type').val()=='service'){
                product_type_service();
            }
        })
        var pid_array = [];
        
    </script>
    @if ($editproduct->type=='combo')
        @foreach ($combop_id as $combop_id_id)
            <script>
                $(document).ready(function(){
                    comboProduct({{ $combop_id_id }});
                    pid_array.push('{{ $combop_id_id }}');
                })
            </script>
        @endforeach
    @endif
@endpush
