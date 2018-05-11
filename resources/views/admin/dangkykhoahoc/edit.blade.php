@extends('admin.master')
@section('content')
@section('controller','Sửa')
@section('action','Edit')
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
        	<form method="post" action="" enctype="multipart/form-data">
        		<input type="hidden" name="_token" value="{!! csrf_token() !!}" />        		
      			<div class="row">
              		<div class="col-md-6 col-xs-12">              			
						<div class="clearfix"></div>
				    	<div class="form-group">
					      	<label for="ten">Tên</label>
					      	<input type="text" name="name" id="" value="{{ $data->name }}"  class="form-control" />
					      	
						</div>
						<div class="form-group">
							<label for="">Email</label>
							<input type="text" name="email" value="{{$data->email}}" class="form-control">
						</div>
						<div class="form-group">
							<label for="">Phone</label>
							<input type="text" name="phone" value="{{$data->phone}}" class="form-control">
						</div>
						<!-- <div class="form-group">
							<label for="">Khóa học</label>
							<input type="text" name="email" value="{{$data->khoahoc}}" class="form-control">
						</div>
						<div class="form-group">
							<label for="">Năm sinh</label>
							<input type="text" name="namsinh" value="{{$data->namsinh}}" class="form-control">
						</div> -->
						<div class="form-group">
							<label for="">Nội dung</label>
							<textarea name="content" class="form-control">{{$data->content}}</textarea>
						</div>				
					</div>					
				</div>
	            <div class="clearfix"></div>
			    <div class="box-footer">
			    	<div class="row">
						<div class="col-md-6">
					    	<button type="submit" class="btn btn-primary">Cập nhật</button>					    	
				    	</div>
			    	</div>
			  	</div>
		    </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
    
</section><!-- /.content -->

@endsection()
