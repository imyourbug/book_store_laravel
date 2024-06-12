@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.event.index') }}">Sự kiện</a></li>
                        <li class="breadcrumb-item active">Cập nhật sự kiện</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <form role="form" action="" method="POST" enctype="multipart/form-data">
                         @csrf
                         <div class="row">
                            <div class="col-md-9">
                                 <div class="card card-primary">
                                      <div class="card-body">
                            <div class="form-group {{ $errors->first('e_name') ? 'has-error' : '' }}">
                                <label for="name">Title <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" name="e_name" value="{{ $event->e_name }}"  placeholder="Name ...">
                                @if ($errors->first('e_name'))
                                    <span class="text-danger">{{ $errors->first('e_name') }}</span>
                                @endif
                            </div>
                 
                      
                            <div class="form-group {{ $errors->first('e_link') ? 'has-error' : '' }}">
                                <label for="name">Link <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" name="e_link"  value="{{ $event->e_link }}" placeholder="Link ...">
                                @if ($errors->first('e_link'))
                                    <span class="text-danger">{{ $errors->first('e_link') }}</span>
                                @endif
                            </div>
                     
                      
                            <div class="row">
                                <div class="col-sm-2">
                                    <div class="form-group ">
                                        <label for="name">Home 1 </label>
                                        <input type="checkbox" name="e_position_1" {{ $event->e_position_1 ?? 0 == 1 ? "checked='checked'" : "" }} value="1">
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <div class="form-group ">
                                        <label for="name">Home 2 </label>
                                        <input type="checkbox" name="e_position_2" {{ $event->e_position_2 ?? 0 == 1 ? "checked='checked'" : "" }} value="1">
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <div class="form-group ">
                                        <label for="name">Home 3 </label>
                                        <input type="checkbox" name="e_position_3" {{ $event->e_position_3 ?? 0 == 1 ? "checked='checked'" : "" }} value="1">
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <div class="form-group ">
                                        <label for="name">Home 4 </label>
                                        <input type="checkbox" name="e_position_4" {{ $event->e_position_4 ?? 0 == 1 ? "checked='checked'" : "" }} value="1">
                                    </div>
                                </div>
                            </div>
                       
                   
                                      </div>
                                 </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title"> Xuất bản</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="btn-set">
                                            <button type="submit" class="btn btn-info">
                                                <i class="fa fa-save"></i> Lưu dữ liệu
                                            </button>
                                            <button type="reset" name="reset" value="reset" class="btn btn-danger">
                                                <i class="fa fa-undo"></i> Reset
                                            </button>
                                        </div>
                                    </div>
                                    <!-- /.card-body -->
                                    <div class="card-header">
                                        <h3 class="card-title">Hình ảnh </h3>
                                    </div>
                                    <div class="card-body" style="min-height: 288px">
                                        <div class="form-group">
                                            <div class="input-group input-file" name="e_banner">
                                                <span class="input-group-btn">
                                                    <button class="btn btn-default btn-choose" type="button">Chọn tệp</button>
                                                </span>
                                                <input type="text" class="form-control" placeholder='Không có tệp nào ...'/>
                                                <span class="input-group-btn"></span>
                                            </div>
                                            <span class="text-danger "><p class="mg-t-5">{{ $errors->first('e_banner') }}</p></span>
                                            @if(isset($event) && !empty($event->e_banner))
                                                <img src="{{ asset(pare_url_file($event->e_banner)) }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 150px; width:100%;">
                                            @else
                                                <img src="{{ asset('admin/dist/img/no-image.png') }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 150px; width:100%;">
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                       
                    </form>  
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop