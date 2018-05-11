<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\DangKyHoc;
class DangKyHocController extends Controller
{
    public function index()
    {
    	$data = DangKyHoc::orderBy('id', 'desc')->get();
    	return view('admin.dangkykhoahoc.index', compact('data'));
    }
    public function edit($id)
    {
    	$data = DangKyHoc::find($id);
    	return view('admin.dangkykhoahoc.edit', compact('data'));
    }
    public function postEdit(Request $req, $id)
    {
    	$data = DangKyHoc::find($id);
    	$data->name = $req->name;
    	$data->email = $req->email;
    	$data->phone = $req->phone;
    	$data->khoahoc = $req->khoahoc;
    	$data->namsinh = $req->namsinh;
    	$data->content = $req->content;
    	$data->save();
    	return redirect()->back()->with('status', 'Sửa thành công');
    }
    public function delete($id)
    {
    	$data = DangKyHoc::find($id);
    	$data->delete();
    	return redirect()->back()->with('status', 'Xóa thành công');
    }
}
