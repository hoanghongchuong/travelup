@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $banks = DB::table('bank_account')->get();
?>
<main class="">
	<section class="banner-page">
		<div class="container">
			<div class="banner-page-wrap">
				<h1 class="s36 bold t4 text-center text-uppercase breadcrumb-tit">Đăng ký học viên</h1>
				<ul class="text-center s14 breadcrumb">
					<li class="breadcrumb-item"><a href="{{url('')}}" title="">Trang chủ</a></li>
					<li class="breadcrumb-item">Đăng ký học viên</li>
				</ul>
			</div>
		</div>
	</section>
	<!-- end banner -->
	
	<section class="contact-add">
		<div class="container">
			{!! $data->content !!}

			<div class="b1 regis-frm-wrap">
				<div class="row justify-content-center">
					<div class="col-lg-10 col-md-12">
						<div class="row">
							<div class="col-sm-6">
								<h2 class="t4  pt-2 pb-3 bold text-uppercase s18">Đăng ký học</h2>
								<p>Để đăng ký nhập học và làm thủ tục nhập học, học viên đăng ký học online vào form dưới và chuyển khoản giữ chỗ. Học viên vui lòng chuyển khoản vào thông tin số tài khoản phía dưới. Nội dung tên học viên, đăng ký lớp học.</p>
								<div class="regis-card">
									<h2 class="s12 bold t1 pt-2 pb-3 text-uppercase">Thông tin chuyển khoản</h2>
									@foreach($banks as $b)
									<ul class="list-unstyled">
										{!! $b->info !!}
									</ul>
									@endforeach
									
								</div>
								
							</div>

							<div class="col-sm-6 d-flex align-items-center">
								<form action="{{route('postDangKyHoc')}}" method="post" class="s14 regis-frm">
									{{csrf_field()}}
									<input type="text" placeholder="Họ tên" name="name" class="w-100" required="required">
									<input type="text" placeholder="Năm sinh" name="namsinh" class="w-100" required="required">
									<input type="tel" placeholder="Số điện thoại" name="phone" class="w-100" required="required">
									<input type="email" placeholder="Email" name="email" class="w-100" required="required">
									<input type="text" placeholder="Khóa học" name="khoahoc" class="w-100" required="required">
									<textarea name="content" id="" rows="10" class="w-100" placeholder="Ghi chú"></textarea>
									<p class="text-lg-right text-center">
										<button class="btn main-btn">GỬI</button>
									</p>
								</form>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>
</main>
@endsection