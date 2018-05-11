@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $cateProducts = Cache::get('cateProducts');
?>
<main class="">
    <section class="banner-page">
        <div class="container">
            <div class="banner-page-wrap">
                <h1 class="s36 bold t4 text-center text-uppercase breadcrumb-tit">Video</h1>
                <ul class="text-center s14 breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html" title="">Trang chủ</a></li>
                    <li class="breadcrumb-item">Video</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- end banner -->
    
    <section class="product-content">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-md-6">
                    <div class="video-item">
                        <a data-fancybox="video" href="{{$hots[0]->link}}">
                            <img src="{{asset('upload/hinhanh/'.$hots[0]->photo)}}" title="" alt="">
                        </a>
                        <h2 class="s24 bold pt-3 video-tit"><a data-fancybox="video" href="{{$hots[0]->link}}">{{$hots[0]->name}}</a></h2>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="video-swrap">
                        <div class="video-sitem">
                            <div class="row">
                                <div class="col-4 text-center">
                                    <a data-fancybox="video" href="{{$hots[1]->link}}">
                                        <img src="{{asset('upload/hinhanh/'.$hots[1]->photo)}}" title="" alt="">
                                    </a>
                                </div>
                                <div class="col-8">
                                    <h2 class="bold video-tit bold"><a data-fancybox="video" href="{{$hots[1]->link}}">{{$hots[1]->name}}</a></h2>
                                </div>
                            </div>
                        </div>
                        <div class="video-sitem">
                            <div class="row">
                                <div class="col-4 text-center">
                                    <a data-fancybox="video" href="{{$hots[2]->link}}">
                                        <img src="{{asset('upload/hinhanh/'.$hots[2]->photo)}}" title="" alt="">
                                    </a>
                                </div>
                                <div class="col-8">
                                    <h2 class="bold video-tit bold"><a data-fancybox href="{{$hots[2]->link}}">{{$hots[2]->name}}</a></h2>
                                </div>
                            </div>
                        </div>
                        <div class="video-sitem">
                            <div class="row">
                                <div class="col-4 text-center">
                                    <a data-fancybox="video" href="{{$hots[3]->link}}">
                                        <img src="{{asset('upload/hinhanh/'.$hots[3]->photo)}}" title="" alt="">
                                    </a>
                                </div>
                                <div class="col-8">
                                    <h2 class="bold video-tit bold"><a data-fancybox="video" href="{{$hots[3]->link}}">{{$hots[3]->name}}</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-5">
                @foreach($videos as $item)
                <div class="col-md-4">
                    <div class="video-item">
                        <a data-fancybox="video" href="{{$item->link}}">
                            <img src="{{asset('upload/hinhanh/'.$item->photo)}}" title="" alt="">
                        </a>
                        <h2 class="video-tit bold pt-3"><a data-fancybox href="{{$item->link}}">{{$item->name}}</a></h2>
                    </div>
                </div>
                @endforeach                
            </div>
            <div class="b4 text-center shadow pagi blog-pagi phantrang">
                {!! $videos->links() !!}
            </div>
        </div>
    </section>
</main>
@endsection
