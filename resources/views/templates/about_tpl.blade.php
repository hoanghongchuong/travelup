@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $partners = DB::table('partner')->orderBy('id', 'desc')->get();
    $chinhanhs = DB::table('chinhanh')->orderBy('id', 'desc')->get();
?>
<main class="index">
    <div class="text-white text-uppercase banner" style="background: url({{ asset('public/images/about/1.jpg') }}) no-repeat center center; background-size: cover;">
        
        <div class="container">
            <div class="banner-wrap">
                <h2 class="s24 pt-2 pb-3 banner-stit">Đội ngũ</h2>
                <h1 class="bold s72">Travelup</h1>
            </div>
        </div>
    </div>
    <!-- slider-area-end -->

    <section class="contact">
        <div class="container">
            <h2 class="s18 text-uppercase bold contact-tit">Đội ngũ Travelup</h2>

            <div class="about-slider">
                @foreach($partners as $item)
                <article class="team-item">
                    <figure>
                        <img src="{{asset('upload/banner/'.$item->photo)}}" title="" alt="">
                    </figure>
                    <figcaption class="b3 text-white text-center team-item-info">
                        <h3 class="medium s16 text-capitalize">{{$item->name}}</h3>
                        <h3 class="s14">{{$item->position}}</h3>
                    </figcaption>
                </article>
                @endforeach
                
            </div>

            <h2 class="s18 bold contact-tit">{{ $about->name }}</h2>

            <div class="about-wrap">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="about-content">
                            {!! $about->content !!}
                            
                        </div>
                    </div>
                    <div class="col-lg-5 d-flex align-items-center justify-content-center">
                        <img src="{{ asset('upload/hinhanh/'.$about->photo)}}" title="" alt="">
                    </div>
                </div>
                <!-- <div class="py-2 about-slogan">
                    <p>Hơn nữa, chúng tôi luôn hướng tới gia tăng những giá trị đó bằng cách nâng cao những trải nghiệm và tạo nên sự kết nối cộng đồng.</p>
                    <div class="w-lg-50 text-center about-slogan-wrap">
                        <q class="s24 bold italic t1 about-slogan-content">“If you’re not changing, you’re not growing”</q>
                        <p class="s16 text-center text-uppercase">
                            Đi đi! Trải nghiệm và thay đổi
                        </p>
                    </div>
                    
                </div> -->
            </div>
        </div>
    </section>
</main>
@endsection
