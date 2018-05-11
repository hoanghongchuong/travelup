@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
<main class="index">
    <div class="text-white text-uppercase banner" style="background: url({{ asset('public/images/pdetail/1.jpg') }}) no-repeat center center; background-size: cover;">
        
        <div class="container">
            <div class="banner-wrap">
                <h2 class="s24 pt-2 pb-3 banner-stit">Đi đi - đừng ngần ngại</h2>
                <h1 class="bold s72">Track tour</h1>
            </div>
        </div>
    </div>
    <!-- slider-area-end -->

    <section class="b2 prolist">
        <div class="container">
            <div class="row gutter-10">
                <div class="col-lg-5 col-sm-6 d-flex align-items-center justify-content-center">
                    <a href="pdetail.html">
                        <img src="{{asset('upload/product/'.$product_detail->photo)}}" title="{{$product_detail->name}}" alt="{{$product_detail->name}}">
                    </a>
                </div>
                <div class="col-lg-7 col-sm-6">
                    <h1 class="bold pt-3 pb-1 s24 text-uppercase pdetail-tit">{{$product_detail->name}}</h1>
                    <p class="font-italic pt-1 pb-2 text-capitalize t7 s16">@if($product_detail->tinhtrang == 1) Còn hàng @else Hết hàng @endif</p>
                    <h2 class="bold s30 pb-3 t1 pdetail-price">{{number_format($product_detail->price)}} đ</h2>
                    <div class="des-detail">{!! $product_detail->mota !!}</div>
                    <form action="{{ route('addProductToCart') }}" method="post" class=" p-qty-frm">
                        {{ csrf_field() }}
                        <input type="hidden" name="product_id" value="{{$product_detail->id}}"> 
                        <p class="">Số lượng</p>
                        <div class="d-flex align-items-center pdetail-quan-wrap">
                            <i class="fas fa-plus count add"></i>
                            <input type="number" name="product_numb" min="1" class="qty" required="required" value="1" id="french-hens" >
                            <i class="fas fa-minus count minus"></i>
                        </div>
                        <p class="text-lg-left text-center">
                            <button type="submit" class="btn text-uppercase regis-btn pdetail-btn">Mua sản phẩm</button>
                            <!-- <a class="btn text-uppercase regis-btn pdetail-btn" href="#" title="">Mua sản phẩm</a> -->
                        </p>
                    </form>
                </div>
            </div>
            <div class="s16 pdetail-content">
                <h2 class="bold s16 py-2 px-3 b1 pdetail-content-tit">Thông tin sản phẩm</h2>
                <div class="content-detail">{!! $product_detail->content !!}</div>
            </div>
            <h2 class="bold s16 pdetail-content-tit">Có thể bạn quan tâm</h2>
            <div class="row gutter-10">
            @foreach($productSameCate as $item)
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <article class="pgage-item">
                        <figure class="text-center ppage-img">
                            <a href="{{ url('san-pham/'.$item->alias.'.html') }}">
                                <img src="{{asset('upload/product/'.$item->photo)}}" title="{{$item->name}}" alt="{{$item->name}}">
                            </a>
                        </figure>
                        <figcaption class="ppage-info">
                            <h2 class="s16 ppage-tit"><a href="{{ url('san-pham/'.$item->alias.'.html') }}">{{$item->name}}</a></h2>
                            <h3 class="bold t1 s18 ppage-price">{{ number_format($item->price) }} đ</h3>
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
