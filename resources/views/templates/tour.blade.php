@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $bannerNews = DB::table('banner_content')->where('position', 12)->first();
?>

<main class="index">
	<div class="text-white text-uppercase banner" style="background: url({{ asset('upload/banner/'.@$bannerNews->image) }}) no-repeat center center; background-size: cover;">		
		<div class="container">
			<div class="banner-wrap">
				<h2 class="s24 pt-2 pb-3 banner-stit">Đi đi - đừng ngần ngại</h2>
				<h1 class="bold s72">Up! tour</h1>
			</div>
		</div>
	</div>
	<!-- slider-area-end -->
	<section class="b2 tourpage">
		<div class="container">
			@foreach($cateTour as $cate)
			<div class="d-flex align-items-center justify-content-between tourpage-link">
				<h2 class="bold s30 plist-tit"><a href="{{url('tour/'.$cate->name)}}">{{$cate->name}}</a></h2>
				<a class="text-uppercase plist-link" href="{{url('tour/'.$cate->alias)}}">Xem tất cả</a>
			</div>
			<?php $tours = DB::table('tours')->where('category_id', $cate->id)->where('active',1)->orderBy('id','desc')->take(12)->get(); ?>
			
			<div class="row gutter-10">
				@foreach($tours as $item)
				<div class="col-lg-3 col-md-6 col-sm-6">
					<article class="tour-item">
						<figure>
							<a href="{{ url('tour/'.$item->alias.'.html') }}"><img src="{{asset('upload/tour/'.$item->image)}}" title="{{$item->name}}" alt="{{$item->name}}" class="w-100"></a>
						</figure>
						<figcaption class="tour-item-info">
							<div class="px-3">
								<h3 class="tour-item-info-tit"><a href="{{ url('tour/'.$item->alias.'.html') }}">{{$item->name}}</a></h3>
								<h4 class="t1 bold s16 tour-item-info-price">{{ number_format($item->price)}} VNĐ</h4>
							</div>
							<div class="p-3">
								<h4 class="tour-item-info-time"><i class="far fa-clock"></i> {{$item->time}}</h4>
								<p class="mt-2">
									<a href="{{ url('tour/'.$item->alias.'.html') }}" class="btn w-100 regis-btn">Chi tiết Tour</a>
								</p>
							</div>
						</figcaption>
					</article>
				</div>
				@endforeach
				
			</div>
			@endforeach
		</div>
	</section>
</main>
@endsection