@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $cateProducts = Cache::get('cateProducts');
?>
<main class="index">
    <div class="text-white text-uppercase banner" style="background: url(./public/images/product/1.jpg) no-repeat center center; background-size: cover;">        
        <div class="container">
            <div class="banner-wrap">
                <h2 class="s24 pt-2 pb-3 banner-stit">Đi đi - đừng ngần ngại</h2>
                <h1 class="bold s72">Tìm kiếm</h1>
            </div>
        </div>
    </div>
    <!-- slider-area-end -->
    <section class="b2 prolist">
        <div class="container">            
            <h2 class="bold s30 plist-tit"><a href="#">Kết quả tìm kiếm từ khóa: "{{ $search }}"</a></h2>
            <div class="row gutter-10">                
                @foreach($products as $item)
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <article class="pgage-item">
                        <figure class="text-center ppage-img">
                            <a href="{{ url('san-pham/'.$item->alias.'.html') }}">
                                <img src="{{asset('upload/product/'.$item->photo)}}" title="{{$item->name}}" alt="{{$item->name}}">
                            </a>
                        </figure>
                        <figcaption class="ppage-info">
                            <h2 class="s16 ppage-tit"><a href="{{ url('san-pham/'.$item->alias.'.html') }}">{{$item->name}}</a></h2>
                            <h3 class="bold t1 s18 ppage-price">{{number_format($item->price)}} đ</h3>
                        </figcaption>
                        <div class="text-center ppage-over">
                            <img src="{{ asset('public/images/product/plus.png')}}" title="" alt="">
                            <p class="text-center"><a href="{{ url('san-pham/'.$item->alias.'.html') }}">Xem thêm</a></p>
                        </div>
                    </article>
                </div>
                @endforeach
            </div>
        </div>
    </section>
</main>
@endsection
