<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tour extends Model
{
    protected $table= 'tours';

    protected $fillable = [
    	'name',
    	'alias',
    	'category_id',
    	'image',
    	'price',
    	'time',
    	'numb',
    	'start',
    	'phuongtien',
    	'introduction',
    	'content',
    	'schedule',
    	'short_des',
    	'hot',
    	'active',
    	'title',
    	'description',
    	'keyword',
    ];
    public function getFieldList()
    {
    	return $this->fillable;
    }
    public function pimg(){
        return $this->hasMany('App\Album','tour_id');
    }
     public function category()
    {
        return $this->belongsTo('App\ProductCate', 'category_id', 'id');
    }
}
