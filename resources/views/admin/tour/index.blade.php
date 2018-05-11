@extends('admin.master')
@section('content')
@section('controller','Tour')
@section('action','List')
<!-- Content Header (Page header) -->

<section class="content-header">
  <h1>
    @yield('controller')
    <small>@yield('action')</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="backend"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="javascript:">@yield('controller')</a></li>
    <li class="active">@yield('action')</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        @include('admin.messages_error')
        <!--<div class="box-header">
          <h3 class="box-title">Data Table With Full Features</h3>
        </div>-->
        <div class="box-footer col-md-12">
          <div class="row">
            <div class="col-md-6">
            	<a href="{{ route('admin.tour.create') }}" class="btn btn-primary">Thêm</a>
              
            </div>
          </div>
        </div>
        <div class="box-body">
          <script type="text/javascript">
            $(document).ready( function () {
                $('#example2xy').DataTable();
            } );
          </script>
          <table id="example2xy" class="table table-bordered table-hover">
            <thead>
              <tr>
                <td>Stt</td>
                <td>Danh mục</td>
                <td>Tên</td>
                <td>Hình ảnh</td>
                <td>Giá</td>
                <td>Số lượng</td>
                <td>Thời gian</td>
                <td>Hành động</td>
              </tr>
            </thead>
            <tbody>
            @foreach($data as $k => $item)
              <tr>
              	<td>{{ $k+1 }}</td>
              	<td>{{ @$item->category->name }}</td>
              	<td>{{ $item->name }}</td>
              	<td><img src="{{ asset('upload/tour/'.$item->image) }}" style="width: 150px;" alt=""></td>
              	<td>{{ number_format($item->price) }}</td>
              	<td>{{ $item->numb }}</td>
              	<td>{{ $item->time }}</td>
              	<td>
              		<a class="btn btn-warning" style="margin-right: 5px;" href="{{ route('admin.tour.edit', $item->id) }}">
                        <i class="fa fa-edit"> Sửa</i>
                    </a>
                    <a class="btn btn-danger" href="{{route('admin.tour.delete', $item->id)}}">
                        <i class="fa fa-trash-o"> Xóa</i>
                    </a>
              	</td>
              </tr>
            @endforeach
            </tbody>
          </table>
        </div><!-- /.box-body -->
        <div class="box-footer col-md-12">
          <div class="row">
            <div class="col-md-6">
            	<a href="{{ route('admin.tour.create') }}" class="btn btn-primary">Thêm</a>
            </div>
          </div>
        </div>
      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->
@endsection()
