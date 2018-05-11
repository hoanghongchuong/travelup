@foreach($result as $result_cart)
<div class="dropdown-item d-flex align-items-center cart-top-item">
    <a class="" href="{{url('san-pham/'.$result_cart->options->alias.'.html')}}"><img src="{{asset('upload/product/'.$result_cart->options->photo)}}" title="" alt=""></a>
    <div class="cart-top-info">
        <h2 class="cart-top-name text-truncate">
            <a href="{{url('san-pham/'.$result_cart->options->alias.'.html')}}" title="">{{$result_cart->name}}</a>
            <br>{{$result_cart->qty}} x <strong>{{number_format($result_cart->price)}} đ</strong>
        </h2>
        
        <p class="text-right">
            <!-- <i class="fa fa-trash top-cart-del"></i> -->
            <a  id="{{$result_cart->rowId}}" style="color:#000" href="{{url('xoa-gio-hang/'.$result_cart->rowId)}}"><i class="fa fa-trash top-cart-del"></i></a>
        </p>
    </div>  
</div>
@endforeach
<div class="dropdown-item cart-top-total">
    TỔNG <strong class="pull-right">{{(Cart::subtotal())}} đ</strong>
</div>
<div class="dropdown-item cart-top-item">
    <a href="{{url('gio-hang')}}" title="" class="text-uppercase text-center btn">Xem giỏ hàng</a>
    
</div>