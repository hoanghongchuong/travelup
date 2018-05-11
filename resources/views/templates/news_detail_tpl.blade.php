@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $bannerNews = DB::table('banner_content')->where('position', 10)->first();
?>
<main class="index">
    <div class="text-white text-uppercase banner">
        <img src="{{ asset('upload/banner/'.@$bannerNews->image) }}" title="" alt="">
    </div>
    <!-- slider-area-end -->

    <section class="b2 blogpage">
        <div class="container">
            <div class="row gutter-10">
                <div class="col-sm-9">
                    <div class="bdetail-header">
                        <img src="{{url('upload/news/'.$news_detail->photo)}}" title="{{$news_detail->name}}" alt="{{$news_detail->name}}">
                        <div class="bdetail-over">
                            <h1 class="s18 medium text-uppercase bdetail-tit">{{$news_detail->name}}</h1>
                        </div>
                    </div>
                    <div class="d-flex align-items-center justify-content-between bdetail-time">
                        <div class="t3 s14 text-uppercase">{{date('d/m/Y', strtotime($news_detail->created_at))}}</div>
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

                    <div class="bdetail-content">
                        {!! $news_detail->content !!}
                    </div>
                    <div class="py-2 bdetail-fb">
                        <div class="fb-comments" data-href="{{url('tin-tuc/'.$news_detail->alias.'.html')}}" data-width="100%" data-numposts="2"></div>
                    </div>

                    <div class="bdetail-re">
                        <h2 class="s16 bold bdetail-re-tit">Bài viết khác</h2>

                        <ul class="list-unstyled bdetail-re-list">
                            @foreach($tinkhac as $tk)
                            <li><a href="{{ url('tin-tuc/'.$tk->alias.'.html') }}" title="">{{$tk->name}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <aside class="blog-aside">
                        <div class="blog-aside-list">
                            <h2 class="s16 bold bdetail-re-tit">Bài viết nổi bật</h2>

                            <div class="blog-aside-item">
                                <a href="{{url('tin-tuc/'.$hot_news[0]->alias.'.html')}}" title="{{$hot_news[0]->name}}"><img src="{{ asset('upload/news/'.$hot_news[0]->photo) }}" title="{{$hot_news[0]->name}}" class="w-100" alt=""></a>
                                <h3 class="s16 bold blog-aside-item-tit"><a href="{{url('tin-tuc/'.$hot_news[0]->alias.'.html')}}" title="{{$hot_news[0]->name}}">{{$hot_news[0]->name}}</a></h3>
                                <div class="s14 t3 text-uppercase guide-item-info-time blog-aside-item-time">
                                    {{date('d/m/Y', strtotime($hot_news[0]->created_at))}}
                                </div>
                                <p>{{$hot_news[0]->mota}}</p>
                            </div>
                            @for($i=1; $i < count($hot_news); $i++)
                            <div class="blog-aside-item">
                                <div class="row">
                                    <div class="col-4">
                                        <a href="{{ url('tin-tuc/'.$hot_news[$i]->alias.'.html') }}" title=""><img src="{{asset('upload/news/'.$hot_news[$i]->photo)}}" title="{{ $hot_news[$i]->name }}" alt="{{ $hot_news[$i]->name }}"></a>
                                    </div>
                                    <div class="col-8 d-flex align-items-center">
                                        <h3 class=""><a href="{{ url('tin-tuc/'.$hot_news[$i]->alias.'.html') }}" title="">{{ $hot_news[$i]->name }}</a></h3>
                                    </div>
                                </div>
                            </div>
                            @endfor
                        </div>
                        
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
