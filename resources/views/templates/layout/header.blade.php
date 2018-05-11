<?php
    $setting = Cache::get('setting');
    $menu_top = Cache::get('menu_top');
    $cateProducts = Cache::get('cateProducts');
    $view_cart = Cart::content();
    $cateTour = DB::table('product_categories')->where('com','tour')->where('status',1)->get();
?>
<header class="fixed-top @if(@$com=='index')index @endif top">
    <div class="top-contact">
        <div class="container">
            <div class="d-flex w-100 align-items-center justify-content-between">
                <ul class="d-lg-flex d-none align-items-center list-unstyled tsocial">
                    <li><a href="{{ $setting->facebook }}" title="">
                        <i class="fab fa-facebook-f"></i>
                    </a></li>
                    <li><a href="{{ $setting->twitter }}" title="">
                        <i class="fab fa-twitter"></i>
                    </a></li>
                    <li><a href="{{ $setting->linkedin }}" title="">
                        <i class="fab fa-linkedin-in"></i>
                    </a></li>
                    <li><a href="{{ $setting->google }}" title="">
                        <i class="fab fa-google-plus-g"></i>
                    </a></li>
                    <li><a href="{{ $setting->skype }}" title="">
                        <i class="fab fa-skype"></i>
                    </a></li>
                </ul>

                <ul class="list-unstyled d-flex align-items-center justify-content-center flex-md-row tcontact">
                    <li><a href="mailto:{{$setting->email}}" title="">
                        Email: {{$setting->email}}
                    </a></li>
                    <li><a href="tel: {{$setting->hotline}}" title="">
                        <span class="d-md-none d-inline-block"><i class="fas fa-phone"></i></span><span class="d-md-inline-block d-none">Hotline: {{$setting->hotline}}</span>
                    </a></li>
                </ul>

                <div class="text-sm-right text-center tcaontact-right">
                    <div class="d-flex align-items-center justify-content-between top-r">
                        <!-- search  -->
                        <div class="search trans">
                            <form action="{{ route('search') }}" method="get" class="text-center text-uppercase d-flex w-100 align-items-center search-frm">
                                {{ csrf_field() }}
                                <input class="search-ip" type="text" name="txtSearch" placeholder="Nhập từ khóa tìm kiếm...">
                                <button type="submit" class="btn cart-btn search-btn"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                        <!-- search -->
                        <i class="fas fa-search search-open"></i>
                        <!-- cart -->
                        <div class="top-cart index-cart">
                            <a class=" top-cart-btn" href="#" title="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-shopping-bag"></i>
                                <span class="top-cart-quan">{{Cart::count()}}</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                @foreach($view_cart as $cart)
                                <div class="dropdown-item d-flex align-items-center cart-top-item">
                                    <a class="" href="#"><img src="{{asset('upload/product/'.$cart->options->photo)}}" title="{{$cart->name}}" alt="{{$cart->name}}"></a>
                                    <div class="cart-top-info">
                                        <h2 class="cart-top-name text-truncate">
                                            <a href="#" title="{{$cart->name}}">{{$cart->name}}</a>
                                            <br>{{$cart->qty}} x <strong>{{number_format($cart->price)}} đ</strong>
                                        </h2>
                                        
                                        <p class="text-right">
                                            <!-- <i class="fa fa-trash top-cart-del"></i> -->
                                        </p>
                                    </div>  
                                </div>
                                @endforeach
                                
                                <div class="dropdown-item cart-top-total">
                                    TỔNG <strong class="pull-right">{{Cart::subtotal()}} đ</strong>
                                </div>
                                <div class="dropdown-item cart-top-item">
                                    <a href="{{url('gio-hang')}}" title="" class="text-uppercase text-center btn">Xem giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                        <!-- regis -->
                        <a href="{{url('')}}" class="btn regis-btn regis-link on">Đăng ký tour riêng</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="top-wrapmenu">
        <div class="container">
            <div class="w-100 d-flex align-items-center justify-content-between top-menu">
                <!-- logo -->
                <div class="d-flex align-items-center justify-content-between top-menu-btn">
                    <!-- hamburger menu -->
                    <a id="nav-icon" href="#menu" class="d-lg-none">
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                    @if(@$com=='index')
                    <a href="{{url('')}}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="" title="" class="logo"></a>
                    @else
                    <a href="{{url('')}}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo2)}}" alt="" title="" class="logo"></a>
                    @endif
                </div>

                <!-- menu -->
                <nav id="menu" class="menu-wrap">
                    <div class="container">
                        <ul class="menu bold text-uppercase  index-menu">
                            <li class="@if($com=='index')active @endif"><a href="{{url('')}}" title="" >Trang chủ</a></li>
                            <li class="@if($com=='gioi-thieu')active @endif"><a href="{{url('gioi-thieu')}}" title="">Đội ngũ TravelUp</a></li>
                            <li class="@if($com=='tour')active @endif"><a href="{{ url('tour') }}" title="">Up! Tours</a>
                                <ul class="smenu">
                                    @foreach($cateTour as $catet)
                                    <li><a href="{{url('tour/'.$catet->alias)}}" title="{{$catet->name}}"><i class="fas fa-blind"></i> {{$catet->name}}</a></li>
                                    
                                    @endforeach
                                </ul>
                            </li>
                            <li class="@if($com=='tin-tuc')active @endif">
                                <a href="{{url('tin-tuc')}}" title="">Tin tức</a>
                            </li>
                            <li class="@if($com=='san-pham')active @endif">
                                <a href="{{ url('san-pham') }}" title="">Up! Shop</a>
                                <ul class="smenu">
                                    @foreach($cateProducts as $cateProduct)
                                    <li><a href="{{ url('san-pham/'.$cateProduct->alias) }}" title=""><i class="fas fa-blind"></i> {{ $cateProduct->name }}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                            <li class="@if($com=='lien-he')active @endif"><a href="{{ url('lien-he') }}" title="">Liên hệ</a></li>
                            <li class="@if($com=='hoi-dap')active @endif"><a href="{{ url('hoi-dap') }}" title="">Hỏi đáp</a></li>
                        </ul>
                    </div>
                </nav>

            </div>
        </div>
    </div>
    
</header>