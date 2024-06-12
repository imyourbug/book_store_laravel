@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.ncc.index') }}">Nhà cung cấp</a></li>
                        <li class="breadcrumb-item active">Thêm mới</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
     
                    <form role="form" action="" method="POST">
                         @csrf
                         <div class="row">
                            <div class="col-md-9">
                                 <div class="card card-primary">
                                      <div class="card-body">
                            <div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
                                <label for="name">Name <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" value="{{ old('sl_name') }}" name="sl_name"  placeholder="Name ...">
                                @if ($errors->first('sl_name'))
                                    <span class="text-danger">{{ $errors->first('sl_name') }}</span>
                                @endif
                            </div>
                      
                       
                            <div class="form-group {{ $errors->first('sl_phone') ? 'has-error' : '' }}">
                                <label for="name">Phone <span class="text-danger">(*)</span></label>
                                <input type="number" class="form-control" value="{{ old('sl_phone') }}"  name="sl_phone"  placeholder="Phone ...">
                                @if ($errors->first('sl_phone'))
                                    <span class="text-danger">{{ $errors->first('sl_phone') }}</span>
                                @endif
                            </div>
                      
                      
                            <div class="form-group {{ $errors->first('sl_email') ? 'has-error' : '' }}">
                                <label for="name">Email <span class="text-danger">(*)</span></label>
                                <input type="email" class="form-control" value="{{ old('sl_email') }}"  name="sl_email"  placeholder="Email ...">
                                @if ($errors->first('sl_email'))
                                    <span class="text-danger">{{ $errors->first('sl_email') }}</span>
                                @endif
                            </div>
                   
                  
                            <div class="form-group {{ $errors->first('sl_address') ? 'has-error' : '' }}">
                                <label for="name">Address <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" value="{{ old('sl_address') }}"  name="sl_address"  placeholder="Address ...">
                                @if ($errors->first('sl_address'))
                                    <span class="text-danger">{{ $errors->first('sl_address') }}</span>
                                @endif
                            </div>
                     

                      
                            <div class="box-footer text-center">
                                <a href="{{ route('admin.ncc.index') }}" class="btn btn-danger">
                                Quay lại <i class="fa fa-undo"></i></a>
                                <button type="submit" class="btn btn-success">Lưu dữ liệu <i class="fa fa-save"></i></button>
                            </div>
                       
                    </form>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
