<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB,Cache,Mail;
use Cart;
use App\Bill;
class PostOrderController extends Controller
{
    public function __construct(){
    	$setting = DB::table('setting')->select()->where('id',1)->get()->first();
    	 Cache::forever('setting', $setting);
        //  $this->middleware(function($request, $next) {
        //     if (Auth::check()) {
        //         View::share('nguoidung', Auth::user());
        //     }
        //     return $next($request);
        // });
        // dd($nguoidung);
    }
    protected function getTotalPrice()
    {
        $cart = Cart::content();
        $total = 0;
        foreach ($cart as $key) {
            $total += $key->price * $key->qty;
        }
        return $total;
    }
    protected function getMoneyPay(){
        $total = $this->getTotalPrice();
        $saleOf = DB::table('saleof')->get();
        $money_pay = $total;
        if(\Auth::check()){
            if($total >= $saleOf[0]->total_value){
            $money_pay = $total*((100-$saleOf[0]->value_sale)/100);
            }
            if($total >= $saleOf[1]->total_value && $total < $saleOf[0]->total_value){
                $money_pay = $total*((100-$saleOf[1]->value_sale)/100);
            }
            if($total >= $saleOf[2]->total_value && $total < $saleOf[1]->total_value){
                $money_pay = $total*((100-$saleOf[2]->value_sale)/100);
            }
        }
        return $money_pay;
    }
    public function getTotalUser(){
        $total_money = DB::table('users')->select('total_money')->where('id', \Auth::user()->id)->first();
        if($total_money){
            return  $tm = $total_money->total_money;
        }
    }
    public function postOrder(Request $req)
    {
        
        $cart = Cart::content();
        
        $bill = new Bill;
        // $bill->full_name = Request::input('full_name');
        $bill->full_name = $req->full_name;
        // $bill->email = Request::input('email');
        $bill->email = $req->email;
        $bill->phone = $req->phone;
        $bill->note = $req->content;
        $bill->address = $req->address;
        $bill->code = str_random(8);
        $bill->payment = (int)($req->payment_method);
        dd($req->payment_method);
        $total = $this->getTotalPrice();
        $bill->total = $total;
        
        $detail = [];
        foreach ($cart as $key) {
            $detail[] = [
                'product_name' => $key->name,
                'product_numb' => $key->qty,
                'product_price' => $key->price,
                'product_img' => $key->options->photo,
                'product_code' => $key->options->code,
                'slug' => $key->options->alias
            ];
        }
        $bill->detail = json_encode($detail);
        
        if ($total > 0) {
           $bill->save();
        } else {
            echo "<script type='text/javascript'>
				alert('Giỏ hàng của bạn rỗng!');
				window.location = '" . url('/') . "' 
			</script>";
        }
        
        Cart::destroy();
        echo "<script type='text/javascript'>
				alert('Cảm ơn bạn đã đặt hàng, chúng tôi sẽ liên hệ với bạn sớm nhất!');
				window.location = '" . url('/') . "' 
			</script>";
    }
}
