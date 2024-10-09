@extends('frontend.layouts.front_layouts')

@section('body')
<div class="page-header breadcrumb-wrap">
    <div class="container">
        <div class="breadcrumb">
            <a href="index.html" rel="nofollow"><i class="fi-rs-home mr-5"></i>Home</a>
            <span></span> <span>{{ $solution->parentCategory->parent_category_name }}</span> <span></span> {{ $solution->category->category_name }}<span></span> {{ $solution->subCategory->sub_category_name }}
        </div>
    </div>
</div>
<div class="container mb-30">
    <div class="row">
        <div class="col-xl-11 col-lg-12 m-auto">
            <div class="row">
                <div class="col-xl-12">
                    <section class="section-padding pb-5">
                        <div class="container">
                            <div class="section-title wow animate__animated animate__fadeIn ">
                                <h3 class="text-uppercase text-center" id="header_visible">{{ explode(',',str_replace('_',' ',$solution->solutionDetails->solution_tags))[0]  }}</h3>
                                <ul class="nav nav-tabs links " id="myTab-2" role="tablist">
                                    @php
                                        $digits = ['one','two','three','four','five','six','seven','nine','ten'];
                                    @endphp
                                    @foreach (explode(',',$solution->solutionDetails->solution_tags) as $tagKey=>$tag)
                                        <li class="nav-item py-3 px-2 m-1" style="border:1px solid #198754;border-radius:10px;"
                                        role="presentation">
                                            <button class="nav-link {{ $tagKey==0?'active':'' }} " style="margin:auto;" id="nav-tab-{{ $digits[$tagKey] }}-1" data-bs-toggle="tab"
                                                data-bs-target="#tab-{{ $digits[$tagKey] }}-1" type="button" role="tab" aria-controls="tab-{{ $digits[$tagKey] }}"
                                                aria-selected="true" onclick="header_visible('{{ str_replace('_',' ',$tag) }}')">{{ str_replace('_',' ',$tag) }}</button>
                                        </li>
                                    @endforeach
                                    
                                   
                                </ul>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 mx-auto wow animate__animated animate__fadeIn" data-wow-delay=".4s">
                                    <div class="tab-content" id="myTabContent-1">
                                        @foreach (explode(',',$solution->solutionDetails->solution_tags) as $tagKey=>$tag)
                                        <div class="tab-pane fade show {{ $tagKey==0?'active':'' }}" id="tab-{{ $digits[$tagKey] }}-1" role="tabpanel"
                                            aria-labelledby="tab-{{ $digits[$tagKey] }}-1">
                                            <div class="row">
                                                
                                                @if ($tag=='What_We_Offer')
                                                <div class="col-md-12 mb-4">
                                                    <h4 class="text-center">{{ $solution->solutionDetails->offer_title }}</h4>
                                                </div>
                                                <div class="col-md-12 mb-4">
                                                    {!! $solution->solutionDetails->offer_description !!}
                                                </div>
                                                @elseif ($tag=='Downloads')
                                                @php
                                                    $download_icons = explode(',',$solution->solutionDetails->download_icon);
                                                    $download_titles = explode('|',$solution->solutionDetails->download_title);
                                                    $download_files = explode(',',$solution->solutionDetails->download_file);
                                                @endphp
                                                @foreach ($download_titles as $dwkey=>$download_title)
                                                
                                                <div class="col-lg-3-4 col-md-4 col-12 col-sm-6 mb-md-4 mb-xl-0" >
                                                    <a target="__blank" href="{{ asset($download_files[$dwkey]) }}">
                                                        <div class="banner-left-icon d-flex align-items-center py-1">
                                                            <div class="banner-icon">
                                                                <img height="40px" src="{{ asset($download_icons[$dwkey]) }}"
                                                                    alt="" />
                                                            </div>
                                                            <div class="banner-text text-center">
                                                                <h3 class="icon-box-title text-center">{{ $download_title }}</h3>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                @endforeach
                                                
                                                @elseif ($tag=='Success_Stories')
                                                <div class="col-md-12 mb-4">
                                                    <h4 class="text-center">{{ $solution->solutionDetails->success_story }}</h4>
                                                </div>
                                                <div class="col-md-12">
                                                    {!! $solution->solutionDetails->success_description !!}
                                                </div>
                                                @elseif ($tag=='Security_Practices')
                                                
                                                <div class="col-md-12">
                                                    <h4 class="text-center mb-4" >{{ $solution->solutionDetails->security_practices_title }}</h4>
                                                </div>
                                                <div class="col-md-12">
                                                    <span>{!! $solution->solutionDetails->security_practices_description !!}</span>
                                                </div>

                                                @elseif ($tag=='Improved_Services')
                                                
                                                <div class="col-md-12">
                                                    <h4 class="text-center mb-4" >{{ $solution->solutionDetails->improved_services_title }}</h4>
                                                </div>
                                                <div class="col-md-12">
                                                    <span>{!! $solution->solutionDetails->improved_services_description !!}</span>
                                                </div>
                                                @elseif ($tag=='Digital_Management')
                                                
                                                <div class="col-md-12">
                                                    <h4 class="text-center mb-4" >{{ $solution->solutionDetails->digital_management_title }}</h4>
                                                </div>
                                                <div class="col-md-12">
                                                    <span>{!! $solution->solutionDetails->digital_management_description !!}</span>
                                                </div>

                                                @elseif ($tag=='Overview')
                                                
                                                <div class="col-md-12">
                                                    <h4 class="text-center mb-4" >{{ $solution->solutionDetails->overview_title }}</h4>
                                                </div>
                                                <div class="col-md-12">
                                                    <span>{!! $solution->solutionDetails->overview_description !!}</span>
                                                </div>

                                                @elseif ($tag=='Warehouses')
                                                
                                                <div class="col-md-12">
                                                    <h4 class="text-center mb-4" >{{ $solution->solutionDetails->warehouse_title }}</h4>
                                                </div>
                                                <div class="col-md-12">
                                                    <span>{!! $solution->solutionDetails->warehouse_description !!}</span>
                                                </div>



                                                @endif
            
                                            </div>
                                        </div>
                                        @endforeach
            
                                    </div>
                                    <!--End tab-content-->
                                </div>
                                <!--End Col-lg-9-->
                            </div>
                        </div>
                    </section>
                </div>
                
            </div>
        </div>
    </div>
</div>
@endsection
@section('js')
    <script>
        function header_visible(x) {
            $('#header_visible').empty().append(x);
        }
    </script>
@endsection