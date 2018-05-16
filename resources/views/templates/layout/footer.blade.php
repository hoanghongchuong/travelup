<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $cateProducts = Cache::get('cateProducts');
    $chinhanhs = DB::table('chinhanh')->orderBy('id', 'desc')->get();
?>
<footer class="b4 ft">
    <!-- <div class="to-top"><i class="fa fa-arrow-up"></i></div> -->
    <div class="quick-alo-phone quick-alo-green quick-alo-show" id="quick-alo-phoneIcon">
        <a href="tel:0944260360" title="Liên hệ nhanh">
        <div class="quick-alo-ph-circle"></div>
        <div class="quick-alo-ph-circle-fill"></div>
        <div class="quick-alo-ph-img-circle"></div></a>
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6">
                <a href="{{url('')}}" title=""><img src="{{ asset('upload/hinhanh/'.$setting->photo) }}" alt="" class="ft-logo"></a>
                <p>{{ $setting->mota }}</p>
                <ul class="text-center list-unstyled ft-social">
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
            </div>
            <div class="col-lg-4 col-md-6">
                <h2 class="s24 bold text-uppercase ft-tit">Địa chỉ liên hệ</h2>
                <ul class="ft-add">
                    <li>Trụ sở chính: {{$setting->address}}</li>

                    <li>Điện thoại: <a href="tel:{{$setting->phone}}">{{$setting->phone}}</a></li>

                    <li>Hotline: <a href="tel:{{$setting->hotline}}">{{$setting->hotline}}</a></li>

                    <li>Email: <a href="{{$setting->email}}" title=""></a>{{$setting->email}}</li>
                </ul>
            </div>
            <div class="col-lg-4 col-md-6">
                <h2 class="s24 bold text-uppercase ft-tit">Facebook</h2>
                <div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-width="350px" data-height="203px" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/facebook" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote></div>
            </div>
        </div>
    </div>
    <p class="text-center light ft-last">
        © Designed by <a class="t2" href="http://gco.vn" title="">GCO GROUP</a>.
    </p>
</footer>

<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6&appId=124844007858325";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>