@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $bannerNews = DB::table('banner_content')->where('position', 13)->first();
?>
<main class="index">
	<div class="text-white text-uppercase banner" style="background: url({{ asset('upload/banner/'.@$bannerNews->image) }}) no-repeat center center; background-size: cover;">
		
		<div class="container">
			<div class="banner-wrap">
				<h2 class="s24 pt-2 pb-3 banner-stit">Đi đi - đừng ngần ngại</h2>
				<h1 class="bold s72">Tour</h1>
			</div>
		</div>
	</div>
	<!-- slider-area-end -->

	<section class="b2 tourpage">
		<div class="container">
			<h1 class="medium py-3 s30 tdetail-tit">{{ $tour->name }}</h1>
			<div class="pt-2 pb-4 tdetail-share">
				<p class="news-social">
                   <div class="addthis_toolbox addthis_default_style" style="margin-top:10px;">
                        <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                        <a class="addthis_button_tweet"></a>
                        <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                        <a class="addthis_counter addthis_pill_style"></a>
                    </div>
                        <script type="text/javascript">var addthis_config = {"data_track_addressbar":false};</script>
                        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52843d4e1ff0313a"></script>
                </p>
			</div>
			<div class="row">
				<div class="col-lg-9 col-md-8 col-sm-12">
					<div class="tdetail-slider">
						<div class="modal-qv tdetail-slider">
			        			<div class="slider-for slider slider-qv">
			        			@if(count($album_hinh) > 0)
			        				@foreach($album_hinh as $album)
									<div>
										<div class="slider-img">
											<a href="#" title=""><img src="{{ asset('upload/hasp/'.$album->image) }}" title="" alt=""></a>
										</div>
									</div>
									@endforeach
								@else 
									<div>
										<div class="slider-img">
											<a href="#" title=""><img src="{{ asset('upload/tour/'.$tour->image) }}" title="" alt=""></a>
										</div>
									</div>
								@endif	
								</div>
	
								<ul id="productthumbnail" class="slider slider-nav slider-navqv">
									@foreach($album_hinh as $album)
									<li>
										<img src="{{ asset('upload/hasp/'.$album->image) }}" alt="">
									</li>
									@endforeach
								</ul>

		        			</div>
					</div>

					<div class="tdetail-content">
						<ul class="b1 nav nav-pills bold tdetail-tab" id="pills-tab" role="tablist">
						  	<li class="nav-item">
						    	<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#de" role="tab" aria-controls="pills-home" aria-selected="true">Giới thiệu tour</a>
						  	</li>
						  	<li class="nav-item">
						    	<a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#info" role="tab" aria-controls="pills-profile" aria-selected="false">Lịch trình</a>
						  	</li>
						  	<li class="nav-item">
						    	<a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#com" role="tab" aria-controls="pills-contact" aria-selected="false">Chi tiết giá</a>
						  	</li>
						</ul>
						<div class="tab-content tdetail-tab-content" id="pills-tabContent">
						  	<div class="tab-pane fade show active" id="de" role="tabpanel" aria-labelledby="pills-home-tab">
						  		{!! $tour->introduction !!}
						  	</div>
						  	<div class="tab-pane fade" id="info" role="tabpanel" aria-labelledby="pills-profile-tab">
						  		<ul class="tdetail-tab-content-info">
						  			{!! $tour->schedule !!}
						  		</ul>
						  	</div>
						  	<div class="tab-pane fade" id="com" role="tabpanel" aria-labelledby="pills-contact-tab">
						  		{!! $tour->content !!}
						  	</div>
						</div>
					</div>

					<div class="tdetail-support">
						<h2 class="bold s16 tdetail-support-tit">Nhận tư vấn</h2>
						<p class="t1 font-italic tdetail-warm">* Mọi thông tin bạn đăng ký là bảo mật</p>
						<form class="tdetail-frm">
							<div class="row">
								<div class="col-lg-4 col-md-12">
									<div class="tdetail-frm-item">
										<label for="">
											<i class="far fa-user"></i> Họ tên
										</label>
										<input type="text" placeholder="" required="required">
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="tdetail-frm-item">
										<label for="">
											<i class="far fa-envelope"></i> Email
										</label>
										<input type="email" placeholder="" required="required">
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="tdetail-frm-item">
										<label for="">
											<i class="fas fa-phone"></i> Điện thoại
										</label>
										<input type="tel" placeholder="" required="required">
									</div>
								</div>
								<div class="col-lg-10 col-md-12">
									<textarea class="w-100" name="" id="" cols="30" rows="10" placeholder="Nội dung"></textarea>
								</div>
							</div>
							<div class="text-lg-left text-center">
								<button type="submit" class="btn regis-btn text-uppercase">Gửi</button>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-12">
					<aside class="tdetail-aside">
						<div class="tdetail-info">
							<h2 class="bold s16 tdetail-aside-tit">Thông tin tour</h2>
							<div class="tdetail-info-item">
								<div class="row">
									<div class="col-5">
										Loại tour
									</div>
									<div class="col-7 t1">
										{{$cate->name}}
									</div>
								</div>
							</div>
							<div class="tdetail-info-item">
								<div class="row">
									<div class="col-5">
										Thời gian
									</div>
									<div class="col-7 t1">
										{{$tour->time}}
									</div>
								</div>
							</div>
							<div class="tdetail-info-item">
								<div class="row">
									<div class="col-5">
										Số lượng
									</div>
									<div class="col-7 t1">
										{{$tour->numb}}
									</div>
								</div>
							</div>
							<div class="tdetail-info-item">
								<div class="row">
									<div class="col-5">
										Giá tour
									</div>
									<div class="col-7 t1">
										<strong>{{number_format($tour->price)}} VNĐ</strong>
									</div>
								</div>
							</div>
							<div class="tdetail-info-item">
								<div class="row">
									<div class="col-5">
										Khởi hành
									</div>
									<div class="col-7 t1">
										{{$tour->start}}
									</div>
								</div>
							</div>
							<div class="tdetail-info-item">
								<div class="row">
									<div class="col-5">
										Phương tiện
									</div>
									<div class="col-7 t1">
										{{$tour->phuongtien}}
									</div>
								</div>
							</div>
						</div>
						
						<!-- <ul class="font-italic list-unstyled tdetail-list">
							<li>Xe đưa đón suốt tuyến</li>
							<li>Hỗ trợ ăn sáng</li>
							<li>Có các hoạt động 
							Team Building</li>
							<li>Hướng dẫn viên riêng</li>
							<li>Có bảo hiểm</li>
						</ul> -->
					</aside>
				</div>
			</div>
			<div class="tdetail-re">
				<h2 class="s16 bold tdetail-retit">Có thể bạn quan tâm</h2>
				<div class="toure-slider">
					@foreach($tourSameCate as $item)
					<article class="tour-item">
						<figure>
							<a href="{{url('tour/'.$item->alias.'.html')}}"><img src="{{ asset('upload/tour/'.$item->image)}}" title="{{$item->name}}" alt="{{$item->name}}" class="w-100"></a>
						</figure>
						<figcaption class="tour-item-info">
							<div class="px-3">
								<h3 class="tour-item-info-tit"><a href="{{url('tour/'.$item->alias.'.html')}}">{{$item->name}}</a></h3>
								<h4 class="t1 bold s16 tour-item-info-price">{{number_format($item->price)}} VNĐ</h4>
							</div>
							<div class="p-3">
								<h4 class="tour-item-info-time"><i class="far fa-clock"></i> {{$item->time}}</h4>
								<p class="mt-2">
									<a href="{{url('tour/'.$item->alias.'.html')}}" class="btn w-100 regis-btn">Chi tiết Tour</a>
								</p>
							</div>
						</figcaption>
					</article>
					@endforeach
				</div>
			</div>
		</div>
	</section>
</main>
@endsection