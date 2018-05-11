@extends('admin.master')
@section('content')
@section('controller','Hỏi đáp')
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
          
          <form name="frmAdd" method="post" action="{{ route('admin.hoidap.update', $data->id) }}" >
            <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
                        
            <div class="clearfix"></div>
            
            <div class="col-md-6">
              <div class="form-group">
                    <label for="ten">Danh mục cha</label>
                    <select name="cateFaq" class="form-control">
                      <option value="0">Chọn danh mục</option>
                        <?php cate_parent($parent,0,"--",$data->category_id) ?>
                    </select>
              </div>
              <div class="form-group">
                <label for="">Câu hỏi</label>
                <input type="text" name="question" class="form-control" value="{{ $data->question }}">
              </div>
              <div class="form-group">
                <label for="">Câu trả lời</label>
                <textarea name="answer" class="form-control" style="min-height: 200px;">{{ $data->answer }}</textarea>
              </div>
            </div>
            
          <div class="clearfix"></div>
          <div class="box-footer">
            <div class="row">
            <div class="col-md-6">
                <button type="submit" class="btn btn-primary">Lưu</button>
                <!-- <button type="button" onclick="javascript:window.location=''" class="btn btn-danger">Thoát</button> -->
              </div>
            </div>
          </div>
        </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
    
</section><!-- /.content -->

@endsection()
