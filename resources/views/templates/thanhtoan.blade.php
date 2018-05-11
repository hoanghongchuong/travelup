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
		<div class="container">
			<div class="row">
				<div class="col-12">
					<form name="postorder" class="row" method="post" action="{{route('postOrder')}}">
                        {{csrf_field()}}
						<div class="col-lg-4 col-md-12">
							<h2 class="s18 bold cart-pay">Thông tin đặt hàng</h2>							
								<div class="t-gray chkout-frm">
									<div class="d-flex align-items-center chkout-frm-item">
										<span class="chkout-frm-btn"><i class="fa fa-user"></i></span>
										<input class="w-100" type="text" name="full_name" placeholder="Họ tên khách hàng" required="required">
									</div>
									
									<div class="d-flex align-items-center chkout-frm-item">
										<span class="chkout-frm-btn"><i class="fa fa-map-marker"></i></span>
										<input class="w-100" type="text" name="address" placeholder="Địa chỉ nhận hàng" required="required">
									</div>
									
									<div class="d-flex align-items-center chkout-frm-item">
										<span class="chkout-frm-btn"><i class="fa fa-phone"></i></span>
										<input class="w-100" type="tel" name="phone" placeholder="Điện thoại liên hệ" required="required">
									</div>
									<div class="d-flex align-items-center chkout-frm-item">
										<span class="chkout-frm-btn"><i class="fa fa-envelope"></i></span>
										<input class="w-100" type="email" name="email" placeholder="Email" required="required">
									</div>
									<textarea class="w-100" name="content" placeholder="Nội dung đặt hàng"></textarea>
									<p class="light py-2">(*) Thông tin bắt buộc</p>
									<p class="text-lg-left text-center">
										<button type="submit" class="btn text-uppercase chk-btn">Đặt hàng</button>
									</p>
								</div>

						</div>
						<div class="col-lg-8 col-md-12">
							<div class="row">
								<div class="col-md-6">
									<input type="hidden" name="payment" value="0">
									<div class="cart-paymethod">
										<h2 class="s18 bold cart-pay">Phương thức thanh toán</h2>
										<h4 class="s16 my-3 cart-pay-choice active">
											<label class="custom-control custom-radio check1">
										      	<input type="radio" class="custom-control-input" name="payment_method" >
										      	<span class="custom-control-indicator"></span>
										      	<span class="custom-control-description">Thanh toán trực tiếp</span>
										    </label>
										</h4>
													
										<p class="chk-pay-p chk-pay-method">{{ $setting->slogan_payment }}</p>
										<h4 class="s16 my-3 cart-pay-choice">
											<label class="custom-control custom-radio check2">
										      	<input type="radio" class="custom-control-input" name="payment_method">
										      	<span class="custom-control-indicator"></span>
										      	<span class="custom-control-description">Chuyển khoản ngân hàng</span>
										    </label>
										</h4>

										<div class="cart-bank chk-pay-method">
											<p>Hiện nay chúng tôi hỗ trợ các ngân hàng sau:</p>
											<ul class="nav nav-pills text-uppercase py-3 d-flex align-items-center s12 f1 cart-tabs-menu" role="tablist">
												@foreach($banks as $k=>$bank)
												<li class="nav-item">
												    <a class="nav-link @if($k==0)active @endif" id="pills-home-tab" data-toggle="pill" href="#nv{{$k}}" role="tab" aria-controls="pills-home" aria-selected="true"><img src="{{asset('upload/hinhanh/'.$bank->img)}}" title="" alt=""></a>
												</li>
												@endforeach
											</ul>
											<div class="tab-content cart-tab-content" id="pills-tabContent">
												@foreach($banks as $k=>$bank)
											  	<div class="tab-pane fade show @if($k==0)active @endif" id="nv{{$k}}" role="tabpanel" aria-labelledby="pills-home-tab">
													<h3 class="pb-3 bold">Thông tin tài khoản</h3>
													<div class="font-italic s14">
														{!! $bank->info !!}
													</div>
												</div>
												@endforeach
												
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<h2 class="s18 bold cart-pay">Địa chỉ liên hệ</h2>
									<ul class="light list-unstyled cart-add">
										<li><i class="fas fa-map-marker-alt"></i> {{$setting->address}}</li>
										<li><i class="fas fa-phone"></i> Điện thoại: <a href="tel:{{$setting->phone}}" title="">{{$setting->phone}}</a></li>
										<li><i class="fas fa-envelope"></i> Email: <a href="mailto:{{$setting->email}}" title="">{{$setting->email}}</a></li>
										<li><i class="fas fa-globe"></i> Website: <a href="{{$setting->website}}" title="">{{$setting->website}}</a></li>
									</ul>

									<div class="pt-3 maps">
										{!!$setting->iframemap!!}
									</div>
								</div>
							</div>							
						</div>
					</form>
				</div>
			</div>
	</section>
</main>

@endsection