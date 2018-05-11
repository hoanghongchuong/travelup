<?php
	$slider = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();
?>
@if(isset($slider))
	
	<div class="slider-area slider-2">
        <div class="bend niceties preview-2">
            <div id="nivoslider-2" class="slides">  
             @foreach($slider as $key=>$item) 
                <img src="{{asset('public/img/slider/slider-2/slider-1.jpg')}}" alt="" title="#slider-direction-{{$key}}"  />
             @endforeach   
            </div>
            @foreach($slider as $key=>$item)
            <div id="slider-direction-{{$key}}" class="slider-direction">
                <div class="@if($key % 2 ==0)slider-content-1 @else slider-content-2 @endif">
                    <div class="title-container">
                        <div class="wow rotateInDownLeft" data-wow-duration="1s" data-wow-delay="0.5s">
                            <h6 class="slider2-title-1">Giá tốt: {{number_format($item->price)}}</h6>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                            <h1 class="slider2-title-2">{{$item->name}}</h1>
                        </div>
                        <!-- <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.5s">
                            <h2 class="slider2-title-3">{{$item->name}}</h2>
                        </div> -->
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                            <p class="slider2-title-4">{!! $item->mota !!}</p>
                        </div>
                        <div class="slider-button wow fadeInUp" data-wow-duration="1s" data-wow-delay="2.5s">
                            <a href="{{$item->link}}" class="button extra-small button-black">
                                <span class="text-uppercase">Mua ngay</span>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- layer 1 -->
                <div class="slider-content-1-image">
                    <div class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.5s">
                        <div class="layer-1-1 @if($key % 2 !=0) layer-2-1 @endif">
                            <img src="{{asset('public/img/slider/slider-2/layer-1.png')}}" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>

@endif