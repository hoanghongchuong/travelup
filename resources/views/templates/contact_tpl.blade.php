@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $chinhanhs = DB::table('chinhanh')->orderBy('id', 'desc')->get();
?>
<main class="index">
    <div class="text-white text-uppercase banner" style="background: url(./public/images/aq/1.jpg) no-repeat center center; background-size: cover;">
        
        <div class="container">
            <div class="banner-wrap">
                <h2 class="s24 pt-2 pb-3 banner-stit">Đi đi - đừng ngần ngại</h2>
                <h1 class="bold s72">Liên hệ</h1>
            </div>
        </div>
    </div>
    <!-- slider-area-end -->

    <section class="b2 contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6">
                    <h2 class="s18 bold contact-tit">{{$setting->company}}</h2>
                    <ul class="t6 list-unstyled contact-add">
                        <li>
                            <i class="fas fa-map-marker-alt"></i> {{$setting->address}}
                        </li>
                        <li>
                            <i class="far fa-comments"></i> <a href="mailto:{{$setting->email}}" title="">Email: {{$setting->email}}</a>
                        </li>
                        <li>
                            <i class="fas fa-phone"></i> <a href="tel:{{$setting->phone}}"> Điện thoại: {{$setting->phone}}</a>
                        </li>
                        <li>
                            <i class="fas fa-globe"></i> <a href="{{$setting->website}}">{{$setting->website}}</a>
                        </li>
                    </ul>

                    <h3 class="s18 bold">Liên hệ với chúng tôi</h3>
                    <form action="{{ route('postContact') }}" method="post" class="contact-frm">
                        {{csrf_field()}}
                        <div class="row">
                            <div class="col-lg-8 col-md-12">
                                <label for="">Họ tên</label>
                                <input class="w-100" type="text" name="name" required="required">
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <label for="">Email</label>
                                <input class="w-100" type="email" name="email">
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <label for="">Điện thoại</label>
                                <input class="w-100" type="tel" name="phone" required="required">
                            </div>
                            <div class="col-12">
                                <label for="">Nội dung</label>
                                <textarea class="w-100" name="content" id="" cols="30" rows="10"></textarea>
                            </div>
                        </div>
                        <p class="text-lg-left text-center">
                            <button type="submit" class="btn text-uppercase regis-btn">Gửi</button>
                        </p>
                    </form>
                </div>
                <div class="col-lg-6 offset-lg-1 col-md-6">
                    {!! $setting->iframemap !!}
                    
                </div>
            </div>
        </div>
    </section>
</main>
@endsection
