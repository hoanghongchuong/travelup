@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $chinhanhs = DB::table('chinhanh')->orderBy('id', 'desc')->get();
?>

<main class="index">
	<div class="text-white text-uppercase banner" style="background: url({{ asset('public/images/aq/1.jpg') }}) no-repeat center center; background-size: cover;">
		
		<div class="container">
			<div class="banner-wrap">
				<h2 class="s24 pt-2 pb-3 banner-stit">Đi đi - đừng ngần ngại</h2>
				<h1 class="bold s72">Hỏi - đáp</h1>
			</div>
		</div>
	</div>
	<!-- slider-area-end -->

	<section class="b2 propage">
		<div class="container">
			<div class="row gutter-10">
				<div class="col-lg-3 col-md-4 col-sm-6">
					<aside class="b1 p-3 aq-aside">
						<h2 class="bold s16 aqaside-tit">Câu hỏi của bạn</h2>
						@if(session('message'))
							<div class="alert alert-success">
						        {{ session('message') }}
						    </div>
						@endif
						<form action="{{ route('postQuestion') }}" method="post" class="aq-frm">
							{{ csrf_field() }}
							<label for="">Họ và tên</label>
							<input type="text" class="form-control" name="name" required="required">
							<label for="">Email</label>
							<input type="email" class="form-control" name="email" required="required">
							<label for="">Số điện thoại</label>
							<input type="tel" class="form-control" name="phone" required="required">
							<label for="">Nội dung câu hỏi</label>
							<textarea name="question" id="" cols="30" rows="10" class="form-control"></textarea>
							<p class="text-center">
								<button type="submit" class="btn text-uppercase regis-btn">Gửi</button>
							</p>
						</form>
					</aside>
				</div>
				<div class="col-lg-9 col-md-8 col-sm-6">
					<div class="row">
						@foreach($categories as $k => $cate)
						<div class="col-lg-6 col-md-12">
							<div class="aq-wrap">
								<h2 class="s16 t6 aq-tit">{{ $cate->name }}</h2>
								<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
									<?php $faqs = DB::table('faqs')->where('category_id', $cate->id)->get(); ?>
									@foreach($faqs as $key => $faq)
                                    <div class="panel panel-default">
                                        <div class="panel-heading" id="heading{{$key}}">
                                            <h2 class="panel-title">
                                                <a data-toggle="collapse"	 role="button"  data-parent="#accordion" href="#collapse{{$k}}{{$key}}" aria-expanded="false" aria-controls="collapseOne" class="">
                                                    {{$faq->question}}
                                                </a>
                                            </h2>
                                        </div>
                                        <div id="collapse{{$k}}{{$key}}" class="panel-collapse collapse @if($k==0 && $key ==0)show @endif" aria-expanded="false">
                                            <div class="panel-body">
                                                <p>{{$faq->answer}}</p>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
							</div>
							<!-- / accordion -->							
						</div>
						@endforeach
					</div>
				</div>
			</div>
		</div>
	</section>
</main>

@endsection