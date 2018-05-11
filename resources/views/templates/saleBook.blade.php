@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $cateProducts = Cache::get('cateProducts');
?>
<div class="breadcrumbs-area mb-70">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumbs-menu">
					<ul>
						<li><a href="{{url('')}}">Trang chủ</a></li>
						<li><a href="#" class="active">Sách giảm giá</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- shop-main-area-start -->
<div class="shop-main-area mb-70">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
				<div class="shop-left">
					<div class="section-title-5 mb-30">
						<h2>Tùy chọn</h2>
					</div>
					<div class="left-title mb-20">
						<h4>Danh mục</h4>
					</div>
					<div class="left-menu mb-30">
						<ul>
							@foreach($cateProducts as $cate)
							
							<li><a href="{{url('san-pham/'.$cate->alias)}}">{{$cate->name}}</a></li>
							@endforeach
						</ul>
					</div>
					
					<div class="left-title mb-20">
						<h4>Sách ngẫu nhiên</h4>
					</div>
					<div class="random-area mb-30">
						<div class="product-active-2">
							@foreach($productNew->chunk(3) as $chunks)
							<div class="product-total-2">
								@foreach($chunks as $p)
								<div class="single-most-product bd mb-18">
									<div class="most-product-img">
										<a href="{{url('san-pham/'.$p->alias.'.html')}}"><img src="{{asset('upload/product/'.$p->photo)}}" alt="{{$p->name}}" /></a>
									</div>
									<div class="most-product-content">
										<h4><a href="{{url('san-pham/'.$p->alias.'.html')}}">{{$p->name}}</a></h4>
										<div class="product-price">
											<ul>
												<li>{{number_format($p->price)}}</li>
												@if($p->price_old > $p->price)
												<li class="old-price">{{$p->price_old}}</li>
												@endif
											</ul>
										</div>
									</div>
								</div>
								@endforeach
								
							</div>
							@endforeach
						</div>
					</div>
					<div class="banner-area mb-30">
						<div class="banner-img-2">
							<a href="#"><img src="{{asset('public/img/banner/31.jpg')}}" alt="banner" /></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 shop">
				<div class="category-image mb-30">
					<?php $banner = DB::table('banner_content')->where('position', 6)->first(); ?>
					<a href="#"><img src="{{asset('upload/banner/'.$banner->image)}}" alt="banner" /></a>
				</div>
				<div class="section-title-5 mb-30">
					<h1>Sách</h1>
				</div>
				<div class="toolbar mb-30">
					<div class="shop-tab">
						<div class="tab-3">
							<ul>
								<li class="active"><a href="#th" data-toggle="tab"><i class="fa fa-th-large"></i>Dạng lưới</a></li>
								<li><a href="#list" data-toggle="tab"><i class="fa fa-bars"></i>Dạng danh sách</a></li>
							</ul>
						</div>
					</div>
					<div class="toolbar-sorter">
						<span>Sắp xếp</span>
						<select id="sorter" class="sorter-options sort-by" data-role="sorter">
                            <option value="">Sắp xếp</option>
                            @foreach($sortType as $type => $value)
                            <option value="{{ $type }}" @if($type == $selected) {{"selected"}} @endif >{{ $value['text'] }}</option>
                            @endforeach
                        </select>
						<a href="#"><i class="fa fa-arrow-up"></i></a>
					</div>
				</div>
				<!-- tab-area-start -->
				<div class="tab-content">
					<div class="tab-pane active" id="th">
						<!-- single-product-start -->
						@foreach($products as $product)
						<div class="product-wrapper mb-40">
							<span class="sale">mới</span>
							<div class="product-img">
								<a href="{{ asset('san-pham/'.$product->alias.'.html') }}">
									<img src="{{asset('upload/product/'.$product->photo)}}" alt="book" class="primary" />
									<img src="{{asset('public/img/product/2.jpg')}}" alt="book" class="secondary" />
								</a>
							</div>
							<div class="product-details text-center">
								<h4><a href="{{ asset('san-pham/'.$product->alias.'.html') }}">{{$product->name}}</a></h4>
								<div class="product-price">
									<ul>
										<li>{{number_format($product->price)}}</li>
									</ul>
								</div>
							</div>
							<div class="product-link">
								<div class="product-button">
									<a href="javascript:;" data-id="{{$product->id}}" class="btn-addcartx" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
								</div>
								<div class="add-to-link">
									<ul>
										<li><a href="{{ asset('san-pham/'.$product->alias.'.html') }}" data-toggle="tooltip" title="Xem chi tiết"><i class="fa fa-eye"></i></a></li>
									</ul>
								</div>
							</div>	
						</div>
						@endforeach
						
					</div>
					<div class="tab-pane fade" id="list">
					
						@foreach($products as $product)						
						<div class="single-shop mb-30">
							<div class="row">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<div class="product-wrapper-2">
										<div class="product-img">
											<a href="{{ asset('san-pham/'.$product->alias.'.html') }}">
												<img src="{{asset('upload/product/'.$product->photo)}}" alt="book" class="primary" />
											</a>
										</div>	
									</div>
								</div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
									<div class="product-wrapper-content">
										<div class="product-details">
											<h4><a href="{{ asset('san-pham/'.$product->alias.'.html') }}">{{$product->name}}</a></h4>
											<div class="product-price">
												<ul>
													<li>{{number_format($product->price)}}</li>
													@if($product->price_old > $product->price)
													<li class="old-price">{{$product->price}}</li>
													@endif
												</ul>
											</div>
											<p>{!! $product->mota !!}</p>
										</div>
										<div class="product-link">
											<div class="product-button">
												<a href="javascript:;" data-id="{{$product->id}}" class="btn-addcartx" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
											</div>
											<div class="add-to-link">
												<ul>
													<li><a href="{{ asset('san-pham/'.$product->alias.'.html') }}" data-toggle="tooltip" title="Xem chi tiết"><i class="fa fa-eye"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						@endforeach
						
					</div>
				</div>
				
				<div class="pagination-area mt-50">
					<div class="paginations pull-right">
						{{$products->links()}}
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>
@endsection
