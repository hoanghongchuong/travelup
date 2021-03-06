@extends('admin.master')
@section('content')
@section('controller','Video')
@section('action','Create')
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
   	@yield('controller')
    <small>@yield('action')</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="admin"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="javascript:">@yield('controller')</a></li>
    <li class="active">@yield('action')</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
  
    <div class="box">
    	@include('admin.messages_error')
        <div class="box-body">        	
        	<form name="frmAdd" method="post" action="backend/video/edit/{{$data->id}}" enctype="multipart/form-data">
        		<input type="hidden" name="_token" value="{!! csrf_token() !!}" />	      		
      			<div class="nav-tabs-custom">
	                <ul class="nav nav-tabs">
	                  	<li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="false">Thông tin chung</a></li>	                  	
	                </ul>
	                <div class="tab-content">
	                  	<div class="tab-pane active" id="tab_1">
	                  		<div class="row">
		                  		<div class="col-md-6 col-xs-12">
			                    	<!-- @if (count($errors) > 0)
						        		<div class="form-group has-error">
						        			@foreach ($errors->all() as $error)
						        			<label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $error !!}</label><br>
						        			@endforeach
						        		</div>
						        	@endif -->
						        	<div class="form-group @if ($errors->first('fImages')!='') has-error @endif">
										<div class="form-group">
											<img src="{{ asset('upload/hinhanh/'.$data->photo) }}" onerror="this.src='{{asset('public/admin_assets/images/no-image.jpg')}}'" width="200"  alt="NO PHOTO" />
											<input type="hidden" name="img_current" value="{!! @$data->photo !!}">
										</div>
										<label for="file">Chọn File ảnh</label>
								     	<input type="file" id="file" name="fImages" >
								    	<p class="help-block">Width:225px - Height: 162px</p>
								    	@if ($errors->first('fImages')!='')
								      	<label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {!! $errors->first('fImages'); !!}</label>
								      	@endif
									</div>
									<div class="clearfix"></div>
									<div class="form-group">
							    		<label for="">Tên</label>
							    		<input type="text" name="name" class="form-control" value="{{$data->name}}" placeholder="">
							    	</div>
									<div class="form-group">
								      	<label for="desc">Link</label>
								      	<input type="text" name="link" class="form-control" value="{{$data->link}}">
									</div>
									<div class="form-group">
									    <label>
								        	<input type="checkbox" name="noibat" {!! (!isset($data->noibat) || $data->noibat==1)?'checked="checked"':'' !!}> Nổi bật
								    	</label>
								    </div>
							</div>
							<div class="clearfix"></div>
	                  	</div><!-- /.tab-pane -->
	                	
	                </div><!-- /.tab-content -->
	            </div>
	            <div class="clearfix"></div>

			    <div class="clearfix"></div>
			    <div class="box-footer">
			    	<div class="row">
						<div class="col-md-6">
					    	<button type="submit" class="btn btn-primary">Lưu</button>
					    	<!-- <button type="button" onclick="javascript:window.location='admin/news?type={{ @$_GET[type] }}'" class="btn btn-danger">Thoát</button> -->
				    	</div>
			    	</div>
			  	</div>
		    </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
    
</section><!-- /.content -->

@endsection()
