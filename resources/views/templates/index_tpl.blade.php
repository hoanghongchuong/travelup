@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$cateProducts = Cache::get('cateProducts');
$sloganTour = DB::table('about')->where('com', 'tour')->first();
$slider = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();
?>
<main class="index">
    <div class="slider-area">
        @foreach($slider as $s)
        <div>
            <a href="#" title=""><img src="{{ asset('upload/hinhanh/'.$s->photo)}}" title="" alt=""></a>
        </div>
        @endforeach
    </div>
    <!-- slider-area-end -->

    <section class="py-4 b2 cate">
        <div class="container">
            <div class="cate-slider">
                <div class="cate-item">
                    <a href="{{ url('tour') }}"><img src="{{ asset('public/images/index/2.jpg')}}" title="" alt="" class="w-100"></a>
                    <div class="cate-item-info">
                        <h2 class="bold s16 text-uppercase cate-item-info-tit "><a href="{{ url('tour') }}" title="" class="text-white">Up Tour</a></h2>
                    </div>
                </div>
                <div class="cate-item">
                    <a href="{{ url('san-pham') }}"><img src="{{ asset('public/images/index/3.jpg')}}" title="" alt="" class="w-100"></a>
                    <div class="cate-item-info">
                        <h2 class="bold s16 text-uppercase cate-item-info-tit text-center text-white"><a href="{{ url('san-pham') }}" title="" class="text-white">Up Shop</a></h2>
                    </div>
                </div>
                <div class="cate-item">
                    <a href="{{url('tin-tuc')}}"><img src="{{ asset('public/images/index/4.jpg')}}" title="" alt="" class="w-100"></a>
                    <div class="cate-item-info">
                        <h2 class="bold s16 text-uppercase cate-item-info-tit text-center text-white"><a href="{{url('tin-tuc')}}" title="" class="text-white">TIN MỚI NHẤT</a></h2>
                    </div>
                </div>
                
            </div>
        </div>
    </section>

    <section class="pro b2">
        <div class="container">
            <h2 class="text-uppercase text-center s36 bold t1 pt-4 pb-2 pro-tit">Tour nổi bật</h2>
            <p class="text-center pt-1 pb-3 m-auto w-lg-75 t3">{{ $sloganTour->content }} </p>
            <div class="tour-slider">
                @foreach($tourHot as $hot)
                <article class="tour-item">
                    <figure>
                        <a href="{{ url('tour/'.$hot->alias.'.html') }}"><img src="{{ asset('upload/tour/'.$hot->image)}}" title="{{$hot->name}}" alt="{{$hot->name}}" class="w-100"></a>
                    </figure>
                    <figcaption class="tour-item-info">
                        <div class="px-3">
                            <h3 class="tour-item-info-tit"><a href="{{ url('tour/'.$hot->alias.'.html') }}">{{$hot->name}}</a></h3>
                            <h4 class="t1 bold s16 tour-item-info-price">{{number_format($hot->price)}} VNĐ</h4>
                        </div>
                        <div class="p-3">
                            <h4 class="tour-item-info-time"><i class="far fa-clock"></i> {{$hot->time}}</h4>
                            <p class="mt-2">
                                <a href="{{ url('tour/'.$hot->alias.'.html') }}" class="btn w-100 regis-btn">Chi tiết Tour</a>
                            </p>
                        </div>
                    </figcaption>
                </article>
                @endforeach
            </div>
        </div>
    </section>

    <section class="team">
        <div class="container">
            <div class="">
                <h3 class="py-2 text-uppercase team-stit">Nhiệt tình năng động</h3>
                <h2 class="text-uppercase bold py-2 t1 s30 team-tit">Đội ngũ travel up</h2>
                <p class="w-lg-50">Là những thành viên đồng sáng lập và những nhân viên năng động, trẻ trung, nhiệt tình, đã, đang và sẽ làm việc tại Travel Up.</p>
            </div>
            
            <div class="team-slider">
                @foreach($partners as $partner)
                <article class="team-item">
                    <div class="d-flex justify-content-center flex-md-row flex-column">
                        <figcaption class="text-center team-item-info">
                            <h3 class="medium s16 text-capitalize">{{$partner->name}}</h3>
                            <h3 class="s14">{{$partner->position}}</h3>
                            <div class="s13 team-item-info-wrap">
                                <p>{{ $partner->desc}}</p>
                            </div>
                        </figcaption>
                        <figure>
                            <img src="{{asset('upload/banner/'.$partner->photo)}}" title="" alt="">
                        </figure>
                        <figcaption class="text-center team-item-info">
                            <h3 class="medium s16 text-capitalize">{{$partner->name}}</h3>
                            <h3 class="s14">{{$partner->position}}</h3>
                            <div class="s13 team-item-info-wrap">
                                <p>{{$partner->content}}</p>
                            </div>
                        </figcaption>
                    </div>                    
                </article>
                @endforeach
            </div>
        </div>
    </section>

    <div class="modal fade" id="team-item" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="text-uppercase text-center w-100 s24 modal-title" id="exampleModalCenterTitle">Nhân viên nổi bật</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body team-modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <p class="text-center">
                                <img src="{{ asset('public/images/index/9.jpg')}}" title="" alt="">
                            </p>
                            <h2 class="text-center medium s16 pt-4 pb-2 text-capitalize">Ông Nguyễn Đình Chung</h2>
                            <h3 class="text-center s14">Hướng dẫn viên du lịch</h3>
                        </div>
                        <div class="col-md-6 d-flex align-items-center">
                            <div class="s13 team-modal">
                                <p>Ông đã thổi một luồng sinh khí mới làm cho công ty có những bước phát triển vượt bậc thời gian qua.</p>
                                <p>Ông cống hiến không mệt mỏi vì khát vọng đem lại diện mạo mới cho ngành du lịch Việt Nam, thiết kế và tổ chức những chương trình du lịch có chất lượng cao và giá cả tiết kiệm nhất cho khách du lịch. </p>
                                <p>Năm 2011 thật vinh dự khi ông Nguyễn Bá Toàn được tôn vinh là Top 100 Phong cách Doanh Nhân xuất sắc của Việt Nam.</p>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>

    <section class="guide">
        <div class="container">
            <h2 class="s30 bold text-uppercase guide-tit">Cẩm nang du lịch</h2>
            <div class="guide-slider">
                @foreach($tintuc_moinhat as $news)
                <article class="guide-item">
                    <figure>
                        <a href="{{ url('tin-tuc/'.$news->alias.'.html') }}" title=""><img src="{{ asset('upload/news/'.$news->photo) }}" title="{{$news->name}}" alt="{{$news->name}}"></a>
                    </figure>
                    <figcaption class="b2 guide-item-info">
                        <h3 class="medium text-capitalize guide-item-info-tit"><a href="{{ url('tin-tuc/'.$news->alias.'.html') }}" title="{{$news->name}}">{{$news->name}}</a></h3>
                        <h4 class="t3 s14 text-uppercase guide-item-info-time">{{date('d/m/Y', strtotime($news->created_at))}}</h4>
                        <p class="description_news">{{ $news->mota }}</p>
                    </figcaption>
                </article>
                @endforeach
                
            </div>
        </div>
    </section>

    <section class="b2 cus">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 d-flex flex-column justify-content-center">
                    <h3 class="text-uppercase cus-stit">{{$aboutFeedback->name}}</h3>
                    <!-- <h2 class="t1 bold s30 text-uppercase pt-3 pb-4 cus-tit">Cảm nhận khách hàng</h2> -->
                    <p>{!! $aboutFeedback->content !!}</p>
                </div>
                <div class="col-lg-7 offset-lg-1 col-md-12">
                    <div class="cus-slider">
                        @foreach($feedback as $fb)
                        <div class="cus-item">
                            <figure class="cus-img" style="background: url({{ asset('upload/hinhanh/'.$fb->photo) }}) no-repeat top center;background-size: cover;">
                                <!-- <img src="images/index/18.jpg" alt=""> -->
                                <div class="text-center cus-img-over"><img src="images/index/20.jpg" alt=""></div>
                            </figure>
                            <figcaption class="text-center cus-item-info">
                                <h3 class="bold pt-1 pb-3 s16 text-capitalize">{{$fb->name}}</h3>
                                <p class="text-center">{{$fb->content}}</p>
                            </figcaption>
                        </div>
                        @endforeach
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section id="regis" class="regis" style="background: url({{asset('public/images/index/21.jpg')}}) no-repeat center center; background-size: cover;">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <form class="regis-frm" method="post" action="{{ route('postDangKyTour') }}">
                        {{csrf_field()}}
                        <h3 class="italic">* Mọi thông tin bạn đăng ký là bảo mật</h3>
                        <div class="regis-frm-item">
                            <label for="">
                                <i class="far fa-user"></i> Họ tên
                            </label>
                            <input type="text" placeholder="" name="name" required="required">
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <div class="regis-frm-item">
                                    <label for="">
                                        <i class="fas fa-phone"></i> Điện thoại
                                    </label>
                                    <input type="tel" placeholder="" name="phone" required="required">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="regis-frm-item">
                                    <label for="">
                                        <i class="far fa-envelope"></i> Email
                                    </label>
                                    <input type="email" placeholder="" name="email" required="required">
                                </div>
                            </div>
                        </div>
                        <div class="regis-frm-item">
                            <label for="">
                                Nội dung
                            </label>
                            <textarea id="" cols="30" name="content" rows="10"></textarea>
                        </div>
                        <p class="text-lg-left text-center">
                            <button class="btn text-uppercase regis-btn">ĐẶt tour</button>
                        </p>
                    </form>
                </div>

                <div class="col-md-6 col-sm-12 text-right d-flex flex-column justify-content-center">
                    <h3 class="text-uppercase py-2 regis-stit">{{ $aboutTour->name }}</h3>
                    {!! $aboutTour->content !!}
                </div>
            </div>
        </div>
    </section>
</main>
@endsection
