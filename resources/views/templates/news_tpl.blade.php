@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $bannerNews = DB::table('banner_content')->where('position', 9)->first();
?>
<main class="index">
    <div class="text-white text-uppercase banner" style="background: url({{ asset('upload/banner/'.@$bannerNews->image) }}) no-repeat center center; background-size: cover;">
        
        <div class="container">
            <div class="banner-wrap">
                <h2 class="s24 pt-2 pb-3 banner-stit">Đội ngũ</h2>
                <h1 class="bold s72">Tin tức</h1>
            </div>
        </div>
    </div>
    <!-- slider-area-end -->

    <section class="blogpage">
        <div class="b2 bpage-slider">
            <div class="container">
                <div class="blog-slider">
                    @foreach($tintuc_noibat as $hot)
                    <article class="guide-item">
                        <figure>
                            <a href="{{ url('tin-tuc/'.$hot->alias.'.html') }}" title=""><img src="{{asset('upload/news/'.$hot->photo)}}" title="" alt=""></a>
                        </figure>
                        <figcaption class="guide-item-info">
                            <h3 class="medium text-capitalize guide-item-info-tit"><a href="{{ url('tin-tuc/'.$hot->alias.'.html') }}" title="">{{$hot->name}}</a></h3>
                            <h4 class="t3 s14 text-uppercase guide-item-info-time">{{date('d/m/Y', strtotime($hot->created_at))}}</h4>
                            <p class="description_news">{{$hot->mota}}</p>
                        </figcaption>
                    </article>
                    
                    @endforeach
                    
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row gutter-10">
                <div class="col-sm-9">
                    @foreach($tintucs as $item)
                    <div class="blog-item">
                        <div class="row">
                            <div class="col-sm-4">
                                <figure>
                                    <a href="{{url('tin-tuc/'.$item->alias.'.html')}}" title="{{$item->name}}"><img src="{{asset('upload/news/'.$item->photo)}}" title="{{$item->name}}" alt="{{$item->name}}"></a>
                                </figure>
                            </div>
                            <div class="col-sm-8">
                                <figcaption class="guide-item-info">
                                    <h3 class="medium text-capitalize guide-item-info-tit"><a href="{{url('tin-tuc/'.$item->alias.'.html')}}" title="{{$item->name}}">{{$item->name}}</a></h3>
                                    <h4 class="t3 s14 text-uppercase guide-item-info-time">{{date('d/m/Y', strtotime($item->created_at))}}</h4>
                                    <p>{{$item->mota}}</p>
                                </figcaption>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    <div class="paginations">
                        {!! $tintucs->links() !!}
                    </div>
                    
                </div>
                <div class="col-sm-3">
                    <aside class="text-center blog-aside">
                        <div class="text-center bdetail-ads">
                            @foreach($banner as $b)
                            <a href="#" title=""><img src="{{ asset('upload/hinhanh/'.$b->photo)}}" title="" alt=""></a>
                            @endforeach
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section>
</main>

@endsection
