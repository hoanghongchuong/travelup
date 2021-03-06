@extends('admin.master')
@section('content')
@section('controller','Đăng ký tour')
@section('action','List')
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
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        @include('admin.messages_error')
        <!--<div class="box-header">
          <h3 class="box-title">Data Table With Full Features</h3>
        </div>-->
        <div class="box-body">
          <table id="example2" class="table table-bordered table-hover">
            <thead>
              <tr>
                <th class="text-center with_dieuhuong">Stt</th>
                <th>Tên</th>
                <!-- <th>Năm sinh</th> -->
                <th>Email</th>
                <th>Số điện thoại</th>
                <!-- <th>Khóa học</th> -->
                <th>Nội dung</th>
                <!-- <th class="text-center with_dieuhuong">Hoạt động</th> -->
                <th class="text-center with_dieuhuong">Sửa</th>
                <th class="text-center with_dieuhuong">Xóa</th>
              </tr>
            </thead>
            <tbody>
              @foreach($data as $k=>$item)
              <tr>
                <td class="text-center with_dieuhuong">{{$k+1}}</td>
                <td>{{$item->name}}</td>
                <!-- <td>{{$item->namsinh}}</td> -->
                <td>{{$item->email}}</td>
                <td>{{$item->phone}}</td>
                <!-- <td>{{$item->khoahoc}}</td> -->
                <td>{{$item->content}}</td>
                
                </td>
                <td class="text-center with_dieuhuong">
                  <i class="fa fa-pencil fa-fw"></i><a href="backend/dangkykhoahoc/edit/{{$item->id}}">Edit</a>
                </td>
                <td class="text-center">
                  <i class="fa fa-trash-o fa-fw"></i><a onClick="if(!confirm('Xác nhận xóa')) return false;" href="backend/dangkykhoahoc/delete/{{$item->id}}">Delete</a>
                </td>
              </tr>
              @endforeach
            </tbody>
          </table>
        </div><!-- /.box-body -->
        <div class="box-footer col-md-12">
          <div class="row">
            <div class="col-md-6">
             
             
              <input type="button" value="Thoát" onclick="javascript:window.location='backend'" class="btn btn-danger" />

            </div>
          </div>
        </div>
      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->
@endsection()
