@extends('admin.master')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Tour
        </h1>
        <ol class="breadcrumb">
            <li>
                <a href="#">
                    <i class="fa fa-dashboard">
                    </i>
                    Home
                </a>
            </li>
            <li>
                <a href="#">
                    tour
                </a>
            </li>
            <li>
                <a href="#">
                    create
                </a>
            </li>
        </ol>
    </section>
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="box ">
                    @include('admin.messages_error')
                    <div class="box-header with-border">
                        {{--<h3 class="box-title"></h3>--}}
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form name="frmEditTour" method="post" action="{{ isset($tour) ? route('admin.tour.edit', $tour->id) : route('admin.tour.create') }}" enctype="multipart/form-data">
                        {{csrf_field()}}

                        <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="false">Thông tin chung</a></li>

                                <li><a href="#tab_2" data-toggle="tab" aria-expanded="true">Nội dung</a></li>
                                <li><a href="#tab_5" data-toggle="tab" aria-expanded="true">Album hình</a></li>
                                <li><a href="#tab_3" data-toggle="tab" aria-expanded="true">SEO</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab_1">
                                    <div class="row">
                                        <div class="col-md-6 col-xs-12">
                                            <div class="form-group @if ($errors->first('fImages')!='') has-error @endif">
                                            <div class="form-group">
                                                <img src="{{ asset('upload/tour/'.$tour->image) }}" onerror="this.src='{{asset('public/admin_assets/images/no-image.jpg')}}'" width="200"  alt="NO PHOTO" />
                                                    
                                                <input type="hidden" name="img_current" value="{!! @$tour->image !!}">
                                                
                                            </div>
                                            <label for="file">Chọn File ảnh</label>
                                            <input type="file" id="file" name="fImages" >
                                            <p class="help-block">Width:225px - Height: 162px</p>
                                            @if ($errors->first('fImages')!='')
                                            <label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('fImages'); !!}</label>
                                            @endif
                                        </div>
                                            <div class="form-group">
                                                <label for="ten">Loại tour</label>
                                                <select name="category_id" class="form-control">
                                                    <option value="">Chọn loại tour</option>
                                                    @foreach($categories as $cate)
                                                    <option value="{{ $cate->id }}" @if(@$tour->category_id == $cate->id)selected @endif>{{ $cate->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="form-group ">

                                                <label for="ten">Tên <span style="color:red">(*)</span></label>
                                                <input type="text" id="txtName" name="name" value="{{ @$tour->name }}"  class="form-control" />
                                                @if ($errors->first('name')!='')
                                                    <label class="control-label" for="inputError">
                                                        <i class="fa fa-times-circle-o"></i>
                                                        <span style="color: red;">{!! $errors->first('name'); !!}</span>
                                                    </label>
                                                @endif
                                            </div>
                                            <div class="form-group @if ($errors->first('alias')!='') has-error @endif">
                                                <label for="alias">Đường dẫn</label>
                                                <input type="text" name="alias" id="txtAlias" value="{{ @$tour->alias }}"  class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label for="ten">Giá</label>
                                                <input type="text" name="price"  value="{{ @$tour->price }}"  class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label for="ten">Số lượng</label>
                                                <input type="text" name="numb"  value="{{ @$tour->numb }}"  class="form-control" />
                                            </div>
                                            
                                        </div>
                                        <div class="col-md-6">
                                        	<div class="form-group">
                                                <label for="ten">Thời gian</label>
                                                <input type="text" name="time"  value="{{ @$tour->time }}"  class="form-control" />
                                            </div>
                                            
                                            <div class="form-group">
                                                <label for="ten">Khởi hành</label>
                                                <input type="text" name="start"  value="{{ @$tour->start }}"  class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label for="ten">Phương tiện</label>
                                                <input type="text" name="phuongtien"  value="{{ @$tour->phuongtien }}"  class="form-control" />
                                            </div>
                                        </div>

                                    </div>
                                </div><!-- /.tab-pane -->
                                <div class="tab-pane" id="tab_2">
                                    <!-- <div class="form-group">
                                                <label for="desc">Giới thiệu tour</label>
                                                <textarea name="introduction" rows="5" id="txtContent" class="form-control">
                                                    {{ @$tour->introduction }}
                                                </textarea>
                                            </div> -->
                                    <div class="box box-info">
                                        <div class="box-header">
                                                <h3 class="box-title">Giới thiệu tour</h3>
                                                <div class="pull-right box-tools">
                                                  <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                                  <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                                              </div>
                                        </div>
                                        <div class="box-body pad">
                                              <textarea name="introduction" id="txtContent" cols="50" rows="5">
                                                  {{ @$tour->introduction }}
                                              </textarea>
                                        </div>
                                    </div>        
                                    <div class="box box-info">
                                      <div class="box-header">
                                            <h3 class="box-title">Lịch trình</h3>
                                            <div class="pull-right box-tools">
                                              <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                              <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                                          </div>
                                      </div>
                                      <div class="box-body pad">
                                          <textarea name="schedule" id="txtContent" cols="50" rows="5">
                                              {{ @$tour->schedule }}
                                          </textarea>
                                      </div>
                                  </div>
                                    <div class="box box-info">
                                        <div class="box-header">
                                            <h3 class="box-title">Chi tiết giá</h3>
                                            <div class="pull-right box-tools">
                                                <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                                <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                                            </div>
                                        </div>
                                        <div class="box-body pad">
                                            <textarea name="content" id="txtContent" cols="50" rows="5">
                                                {{ @$tour->content }}
                                            </textarea>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div><!-- /.tab-pane -->
                                <div class="tab-pane" id="tab_5">
                                    <div class="form-group">
                                      @foreach($product_img as $key => $item)
                                        <div class="form-group" id="{!! $key !!}">
                                            <img src="{!! asset('upload/hasp/'.$item['image']) !!}" style="max-width: 150px; margin: 20px;" idImg="{!! $item['id'] !!}" id="{!! $key !!}">

                                            <a href="javascript:" type="button" id="del_img_tour" class="btn btn-danger btn-circle icon_del"><i class="fa fa-times"></i></a>
                                        </div>
                                      @endforeach


                                      <label class="control-label">Chọn ảnh</label>
                                      <input id="input-2" name="detailImg[]" type="file" class="file" multiple data-show-upload="false" data-show-caption="true" data-allowed-file-extensions='["jpeg", "jpg", "png", "gif"]'>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab_3">
                                    <div class="row">
                                        <div class="col-md-6 col-xs-12">
                                            <div class="form-group">
                                                <label for="keyword">Title</label>
                                                <textarea name="title" rows="5" class="form-control">
                                                    {{ @$tour->title }}
                                                </textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="keyword">Keyword</label>
                                                <textarea name="keyword" rows="5" class="form-control">
                                                    {{ @$tour->keyword }}
                                                </textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="description">Description</label>
                                                <textarea name="description" rows="5" id="" class="form-control">
                                                    {{ @$tour->description }}
                                                </textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div><!-- /.tab-pane -->
                            </div><!-- /.tab-content -->
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>
                                    <input type="checkbox" name="hot"
                                    {!! (isset($tour) && $tour->hot==1)?'checked="checked"':'' !!}>Nổi bật
                                </label>
                            </div>
                            <div class="form-group">
                                <label>
                                    <input type="checkbox" name="active"
                                    {!! (isset($tour) && $tour->active==1)?'checked="checked"':'' !!}> Hiển thị
                                </label>
                            </div>

                        </div>
                        <div class="clearfix"></div>
                        <div class="box-footer">
                            <div class="row">
                                <div class="col-md-6">
                                    <button type="submit" class="btn btn-primary">Lưu</button>
                                    <a href="{{ route('admin.tour.index') }}" class="btn btn-danger">Thoát</a>
                                </div>
                            </div>
                        </div>
                    </form>
                    </div><!-- /.box -->

            </div>
        </div>
    </div>
@endsection