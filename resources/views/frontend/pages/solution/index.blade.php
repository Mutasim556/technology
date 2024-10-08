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
                                                
                                                @if ($tagKey==0)
                                                    <h4 class="text-center">{{ $solution->solutionDetails->offer_title }}</h4>
                                                    {!! $solution->solutionDetails->offer_description !!}
                                                @elseif ($tagKey==1)
                                                <div class="col-lg-1-5 col-md-4 col-12 col-sm-6 mb-md-4 mb-xl-0">
                                                    <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                                                        data-wow-delay="0">
                                                        <div class="banner-icon">
                                                            <img src="{{ asset('public/assets/imgs/theme/icons/icon-1.svg') }}"
                                                                alt="" />
                                                        </div>
                                                        <div class="banner-text">
                                                            <h3 class="icon-box-title">Blog</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                                @endif
            
                                            </div>
                                        </div>
                                        @endforeach
                                        <!--End tab-pane-->
                                        {{-- <div class="tab-pane fade" id="tab-two-1" role="tabpanel" aria-labelledby="tab-two-1">
                                            <div class="row text-center mt-2">
                                                <div class="col-12" style="font-size: 18px;font-weight:700">
                                                    Security requirements and application settings vary. That's why Hikvision designs
                                                    and tailors network cameras to meet various needs, from general video monitoring to
                                                    video content analytics with deep learning algorithms and beyond.
            
            
            
                                                    By rendering high-quality images across a range of lighting conditions, minimizing
                                                    storage and bandwidth requirements and providing data-powered situational awareness,
                                                    Hikvision network cameras can help users make smart decisions. Our network cameras
                                                    are the ideal choice for hundreds of application scenarios.
                                                </div>
                                            </div>
                                        </div> --}}
                                        {{-- <div class="tab-pane fade" id="tab-three-1" role="tabpanel" aria-labelledby="tab-two-1">
                                            <div class="row text-center mt-2">
                                                <div class="col-12" style="font-size: 18px;font-weight:700">
                                                    Security requirements and application settings vary. That's why Hikvision designs
                                                    and tailors network cameras to meet various needs, from general video monitoring to
                                                    video content analytics with deep learning algorithms and beyond.
            
            
            
                                                    By rendering high-quality images across a range of lighting conditions, minimizing
                                                    storage and bandwidth requirements and providing data-powered situational awareness,
                                                    Hikvision network cameras can help users make smart decisions. Our network cameras
                                                    are the ideal choice for hundreds of application scenarios.
                                                </div>
                                            </div>
                                        </div> --}}
                                        {{-- <div class="tab-pane fade" id="tab-three-1" role="tabpanel" aria-labelledby="tab-three-1">
                                            <div class="row text-center mt-2">
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col-lg-1-5 col-md-4 col-12 col-sm-6 mb-md-4 mb-xl-0">
                                                            <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                                                                data-wow-delay="0">
                                                                <div class="banner-icon">
                                                                    <img src="{{ asset('public/assets/imgs/theme/icons/icon-1.svg') }}"
                                                                        alt="" />
                                                                </div>
                                                                <div class="banner-text">
                                                                    <h3 class="icon-box-title">Blog</h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                                                            <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                                                                data-wow-delay=".1s">
                                                                <div class="banner-icon">
                                                                    <img src="{{ asset('public/assets/imgs/theme/icons/icon-2.svg') }}"
                                                                        alt="" />
                                                                </div>
                                                                <div class="banner-text">
                                                                    <h3 class="icon-box-title">E-learning</h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                                                            <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                                                                data-wow-delay=".2s">
                                                                <div class="banner-icon">
                                                                    <img src="{{ asset('public/assets/imgs/theme/icons/icon-3.svg') }}"
                                                                        alt="" />
                                                                </div>
                                                                <div class="banner-text">
                                                                    <h3 class="icon-box-title">Success Stories</h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                                                            <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                                                                data-wow-delay=".3s">
                                                                <div class="banner-icon">
                                                                    <img src="{{ asset('public/assets/imgs/theme/icons/icon-4.svg') }}"
                                                                        alt="" />
                                                                </div>
                                                                <div class="banner-text">
                                                                    <h3 class="icon-box-title">Technologies</h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                                                            <div class="banner-left-icon d-flex align-items-center wow animate__animated animate__fadeInUp"
                                                                data-wow-delay=".4s">
                                                                <div class="banner-icon">
                                                                    <img src="{{ asset('public/assets/imgs/theme/icons/icon-5.svg') }}"
                                                                        alt="" />
                                                                </div>
                                                                <div class="banner-text">
                                                                    <h3 class="icon-box-title">Sustainability</h3>
                                                                </div>
                                                            </div>
                                                        </div>
            
            
                                                    </div>
                                                </div>
                                            </div>
                                        </div> --}}
                                        <div class="tab-pane fade" id="tab-five-1" role="tabpanel" aria-labelledby="tab-two-1">
                                            <div class="row text-center mt-2">
                                                <div class="col-12" style="font-size: 18px;font-weight:700">
                                                    Security requirements and application settings vary. That's why Hikvision designs
                                                    and tailors network cameras to meet various needs, from general video monitoring to
                                                    video content analytics with deep learning algorithms and beyond.
            
            
            
                                                    By rendering high-quality images across a range of lighting conditions, minimizing
                                                    storage and bandwidth requirements and providing data-powered situational awareness,
                                                    Hikvision network cameras can help users make smart decisions. Our network cameras
                                                    are the ideal choice for hundreds of application scenarios.
                                                </div>
                                            </div>
                                        </div>
            
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