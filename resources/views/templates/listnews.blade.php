@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    // dd($nguoidung);
?>
<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="{{url('')}}">Trang chủ</a></li>
                        <li><a href="{{url('tin-tuc')}}" class="active">Tin tức</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumbs-area-end -->
<!-- blog-main-area-start -->
<div class="blog-main-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <div class="single-blog mb-50">
                    <div class="blog-left-title">
                        <h3>Danh mục</h3>
                    </div>
                    <div class="blog-side-menu">
                        <ul>
                            @foreach($cateNews as $cate)
                            <?php 
                                $newCate = DB::table('news')->where('cate_id', $cate->id)->get();
                                $numberNews = count($newCate);
                            ?>
                            <li><a href="{{ url('tin-tuc/'.$cate->alias) }}">{{$cate->name}} ({{$numberNews}})</a></li>
                            @endforeach
                            
                        </ul>
                    </div>
                </div>
                <div class="single-blog mb-50">
                    <div class="blog-left-title">
                        <h3>Tin tức đọc nhiều</h3>
                    </div>
                    <div class="blog-side-menu">
                        <ul>
                            @foreach($tintuc_noibat as $tt)
                            <li><a href="{{url('tin-tuc/'.$tt->alias.'.html')}}" title="{{$tt->name}}">{{$tt->name}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                <div class="blog-main-wrapper">
                    @foreach($newsByCate as $item)
                    <div class="single-blog-post">
                        <div class="author-destils mb-30">
                            <div class="author-left">
                                
                                <div class="author-description">
                                    <p>Đăng bởi: 
                                        <a href="#">Admin</a>
                                    </p>
                                    <span>{{date('d/m/Y', strtotime($item->created_at))}}</span>
                                </div>
                            </div>
                            
                        </div>
                        <div class="blog-img mb-30">
                            <a href="#"><img src="{{asset('upload/news/'.$item->photo)}}" alt="{{$item->name}}" /></a>
                        </div>
                        <div class="single-blog-content">
                            <div class="single-blog-title">
                                <h3><a href="{{url('tin-tuc/'.$item->alias.'.html')}}">{{$item->name}}</a></h3>
                            </div>
                            <div class="blog-single-content">
                                {!! $item->mota !!}
                            </div>
                        </div>
                        <div class="blog-comment-readmore">
                            <div class="blog-readmore">
                                <a href="{{url('tin-tuc/'.$item->alias.'.html')}}">Đọc thêm<i class="fa fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
<!-- blog-main-area-end -->

@endsection
