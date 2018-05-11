<?php

namespace App\Http\Controllers;

// use Illuminate\Http\Request;
use Mail, Request, Cache;

class PostQuestionController extends Controller
{
    public function postQuestion(Request $req)
    {        
        
        $data = [
            'name' => Request::input('name'),
            'email' => Request::input('email'),
            'phone' => Request::input('phone'),
            'question' => Request::input('question'),
        ];
        Mail::send('templates.sendmail', $data, function ($msg) {
            $setting = Cache::get('setting');
            // $msg->from(Request::input('email'),  $setting->name);
            $msg->to($setting->email,'visitor' )->subject('Câu hỏi');
            // $msg->to(Request::input('email'), Request::input('full_name'))->subject('Đơn đặt hàng');
        });

        return redirect()->back()->with('message', 'Gửi câu hỏi thành công');
    }
}
