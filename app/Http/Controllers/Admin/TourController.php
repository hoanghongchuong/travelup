<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Tour;
use App\Album;
use App\ProductCate;
use File;
class TourController extends Controller
{
	public function __construct(Tour $tour, ProductCate $category)
	{
		$this->Tour = $tour;
		$this->Category = $category;
	}
    public function index()
    {
    	$data = $this->Tour->orderBy('id','desc')->get();
    	return view('admin.tour.index', compact('data'));
    }

    public function create()
    {
    	$categories = $this->Category->where('com','tour')->get();
    	return view('admin.tour.create', compact('categories'));
    }
    public function postCreate(Request $req)
    {
    	$img = $req->file('fImages');
        $path_img='upload/tour';
        $img_name='';
        if(!empty($img)){
            $img_name=time().'_'.$img->getClientOriginalName();
            $img->move($path_img,$img_name);
        }
        $tour = new Tour;
        $tour->name = $req->name;
        if($req->price!=''){
            $tour->price = str_replace(",", "", $req->price);
        }else{
            $tour->price =0;
        }
        
        if($req->category_id>0){
            $tour->category_id = $req->category_id;
        }else{
            $tour->category_id = 0;
        }
        if($req->alias){
            $tour->alias = $req->alias;
        }else{
            $tour->alias = changeTitle($req->name);
        }     
        $tour->image = $img_name;
        $tour->time = $req->time;
        $tour->numb = $req->numb;
        $tour->start = $req->start;
        $tour->phuongtien = $req->phuongtien;
        $tour->introduction = $req->introduction;
        $tour->content = $req->content;
        $tour->schedule = $req->schedule;
        $tour->short_des = $req->short_des;
        $tour->short_des = $req->short_des;
        $tour->title = $req->title;
        $tour->description = $req->description;
        $tour->keyword = $req->keyword;

        if($req->active=='on'){
            $tour->active = 1;
        }else{
            $tour->active = 0;
        }
        if($req->hot=='on'){
            $tour->hot = 1;
        }else{
            $tour->hot = 0;
        }
        $tour->save();

        $tour_id = $tour->id;
        if ($req->hasFile('detailImg')) {

            foreach ($req->file('detailImg') as $file) {
                $product_img = new Album();
                if (isset($file)) {
                    $product_img->image = time().'_'.$file->getClientOriginalName();
                    $product_img->tour_id = $tour_id;
                    $file->move('upload/hasp/',time().'_'.$file->getClientOriginalName());

                    $product_img->save();
                }
            }
        }
        return redirect()->route('admin.tour.index')->with('status','Thêm mới thành công !');
    }

    public function getEdit($id)
    {
    	$tour = Tour::find($id);
    	$categories = $this->Category->where('com','tour')->get();
    	$product_img = Tour::find($id)->pimg;
    	return view('admin.tour.edit', compact('tour', 'categories','product_img'));
    }

    public function postEdit(Request $req, $id)
    {
    	$this->validate($req,
            ["name" => "required"],
            ["name.required" => "Bạn chưa nhập tên"]
        );
    	$tour = Tour::find($id);
    	$img = $req->file('fImages');
            $img_current = 'upload/tour/'.$req->img_current;
            if(!empty($img)){
                $path_img='upload/tour';
                $img_name=time().'_'.$img->getClientOriginalName();
                $img->move($path_img,$img_name);
                $tour->image = $img_name;
            }
            if ($req->hasFile('detailImg')) {
                foreach ($req->file('detailImg') as $file) {
                    $product_img = new Album();
                    if (isset($file)) {
                        $product_img->image = time().'_'.$file->getClientOriginalName();
                        $product_img->tour_id = $tour->id;
                        $file->move('upload/hasp/',time().'_'.$file->getClientOriginalName());
                        $product_img->save();
                    }
                }
            }
            $tour->name = $req->name;
	        if($req->price!=''){
	            $tour->price = str_replace(",", "", $req->price);
	        }else{
	            $tour->price =0;
	        }
	        
	        if($req->category_id>0){
	            $tour->category_id = $req->category_id;
	        }else{
	            $tour->category_id = 0;
	        }
	        if($req->alias){
	            $tour->alias = $req->alias;
	        }else{
	            $tour->alias = changeTitle($req->name);
	        }
	        $tour->time = $req->time;
	        $tour->numb = $req->numb;
	        $tour->start = $req->start;
	        $tour->phuongtien = $req->phuongtien;
	        $tour->introduction = $req->introduction;
	        $tour->content = $req->content;
	        $tour->schedule = $req->schedule;
	        $tour->short_des = $req->short_des;
	        $tour->short_des = $req->short_des;
	        $tour->title = $req->title;
	        $tour->description = $req->description;
	        $tour->keyword = $req->keyword;

	        if($req->active=='on'){
	            $tour->active = 1;
	        }else{
	            $tour->active = 0;
	        }
	        if($req->hot=='on'){
	            $tour->hot = 1;
	        }else{
	            $tour->hot = 0;
	        }
	        // dd($tour);
	        $tour->save();
	        return redirect()->back()->with('status', 'Cập nhật thành công');
    }


    public function delete($id)
    {
    	$tour = $this->Tour->find($id);
    	$tour->delete();
    	return redirect()->back()->with('messae','Xóa thành công');
    }

    public function getDelImg(Request $request,$id){
        if ($request->ajax()) {      
            $idImg = (int)$request->get('idImg');
            $image_detail = Album::find($idImg);
            if (!empty($image_detail)) {
                $img = 'upload/hasp/'.$image_detail->image;
                if (File::exists($img)) {
                    File::delete($img);
                }
                $image_detail->delete();
            }
            return 'OK';
        }
    }
}
