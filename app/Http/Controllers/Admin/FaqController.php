<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Faqs;
use App\ProductCate;
class FaqController extends Controller
{
    public function getList(){
    	$data = Faqs::get();
    	return view('admin.hoidap.list', compact('data'));
    }
    public function getAdd(){
    	
    	$parent = ProductCate::select('id','name','parent_id')->where('com' , 'hoi-dap')->get();
    	return view('admin.hoidap.add', compact('parent'));
    }
    public function postAdd(Request $req){
    	$data = new Faqs;
    	$data->category_id = $req->cateFaq;
    	$data->question = $req->question;
    	$data->answer = $req->answer;
    	// dd($data);
    	$data->save();
    	return redirect()->route('admin.hoidap.index')->with('status','Thêm thành công');
    }
    public function getEdit($id){
    	$data = Faqs::find($id);
    	$parent = ProductCate::select('id','name','parent_id')->where('com' , 'hoi-dap')->get()->toArray();
    	return view('admin.hoidap.edit', compact('data','parent'));
    }
    public function update(Request $req, $id){
    	$data = Faqs::find($id);
    	$data->category_id = $req->cateFaq;
    	$data->question = $req->question;
    	$data->answer = $req->answer;
    	$data->save();
    	return redirect()->route('admin.hoidap.index')->with('status','Sửa thành công');
    }
    public function getDelete($id){
    	$data = Faqs::find($id);
    	$data->delete();
    	return redirect()->back()->with('status', 'Xoá thành công');
    }
}
