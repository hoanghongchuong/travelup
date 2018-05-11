@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $banks = DB::table('bank_account')->get();
?>
<main class="index">
    <div class="text-white text-uppercase banner" style="background: url({{url('public/images/cart/1.jpg')}}) no-repeat left center; background-size: cover;">
        
        <div class="container">
            <div class="banner-wrap">
                <h2 class="s24 pt-2 pb-3 banner-stit">Đi đi - đừng ngần ngại</h2>
                <h1 class="bold s72">Your cart</h1>
            </div>
        </div>
    </div>
    <!-- slider-area-end -->

    <section class="b2 tourpage">
    <form name="update_cart" action="{{route('updateCart')}}" method="post" id="">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <div class="container">
            <div class="text-uppercase b1 s14 d-md-block d-none cart-title">
                <div class="row no-gutters">
                    <div class="col-md-1 text-center">STT</div>
                    <div class="col-md-5">Sản phẩm</div>
                    <div class="col-md-2 text-center">Giá thành</div>
                    <div class="col-md-2 text-center">Số lượng</div>
                    <div class="col-md-2 text-center">Thành tiền</div>
                </div>
            </div>
            @foreach($product_cart as $key=>$product)
            <div class="cart-item">
                <div class="row no-gutters">
                    <div class="col-md-1 d-flex align-items-center justify-content-center">1</div>
                    <div class="col-md-5">
                        <div class="d-flex align-items-center">
                            <a href="{{url('san-pham/'.$product->options->alias.'.html')}}" title=""><img src="{{asset('upload/product/'.$product->options->photo)}}" title="" alt=""></a>
                            
                            <div class="cart-item-info">
                                <h2 class="s18 medium"><a href="{{url('san-pham/'.$product->options->alias.'.html')}}" title="{{$product->name}}">{{$product->name}}</a></h2>

                                <a class="cart-item-del" id="{{$product->rowId}}" href="{{url('xoa-gio-hang/'.$product->rowId)}}" title="{{$product->name}}"><span><i class="fas fa-trash-alt"></i></span> Xóa sản phẩm</a>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 t1 bold s18 font-italic d-flex align-items-center justify-content-center">{{number_format($product->price)}}</div>
                    <div class="col-md-2 text-center d-flex align-items-center justify-content-center">
                        <!-- <input type="number" value="1" min="1" max=""> -->
                        <input class="" type="number"  min="1" value="{{$product->qty}}" id="{{ $product->rowId }}"  name="numb[{{$key}}]">
                    </div>
                    <div class="col-md-2 t1 bold s18 font-italic d-flex align-items-center justify-content-center">{{number_format($product->price * $product->qty)}} đ</div>
                </div>
            </div>
            @endforeach
            

            <div class="text-lg-right text-center s24 b6 bold text-white carttt-item">
                Thành tiền: <span>{{number_format($total)}} đ</span>
            </div>

            <p class="text-lg-right mt-3 text-center">
                <button type="submit" class="btn text-uppercase regis-btn">Cập nhật</button>
                <a href="{{url('thanh-toan')}}" title="Thanh toán" class="btn text-uppercase regis-btn">Thanh toán</a>
            </p>
        </div>
    </form>
    </section>
</main>

@endsection
