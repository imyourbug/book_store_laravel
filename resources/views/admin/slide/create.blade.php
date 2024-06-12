@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.slide.index') }}">Quản lý slide</a></li>
                        <li class="breadcrumb-item active">Thêm mới slide</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">

        <div class="container-fluid">
            <form role="form" action="" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-md-9">
                        <div class="card card-primary">
                            <div class="card-body">

                                <div class="form-group {{ $errors->first('sd_title') ? 'has-error' : '' }}">
                                    <label for="name">Title <span class="text-danger">(*)</span></label>
                                    <input type="text" class="form-control" name="sd_title" placeholder="Name ...">
                                    @if ($errors->first('sd_title'))
                                        <span class="text-danger">{{ $errors->first('sd_title') }}</span>
                                    @endif
                                </div>
                     
                          
                                <div class="form-group {{ $errors->first('sd_link') ? 'has-error' : '' }}">
                                    <label for="name">Link <span class="text-danger">(*)</span></label>
                                    <input type="text" class="form-control" name="sd_link" placeholder="Link ...">
                                    @if ($errors->first('sd_link'))
                                        <span class="text-danger">{{ $errors->first('sd_link') }}</span>
                                    @endif
                                </div>
                           
                         
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="form-group ">
                                            <label for="name">Target </label>
                                            <select class="form-control" name="sd_target">
                                                <option value="1">_blank</option>
                                                <option value="2">_self</option>
                                                <option value="3">_parent</option>
                                                <option value="4">_top</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group ">
                                            <label for="name">Sort </label>
                                            <input type="text" class="form-control" name="sd_sort"
                                                value="{{ old('sd_sort', 0) }}" placeholder="0">
                                            @if ($errors->first('sd_sort'))
                                                <span class="text-danger">{{ $errors->first('sd_sort') }}</span>
                                            @endif
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
                                    <button type="reset" value="reset" class="btn btn-danger">
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
                                    <div class="input-group input-file" name="sd_avatar">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default btn-choose" type="button">Chọn tệp</button>
                                        </span>
                                        <input type="text" class="form-control" placeholder='Không có tệp nào ...' />
                                        <span class="input-group-btn"></span>
                                    </div>
                                    <span class="text-danger ">
                                        <p class="mg-t-5">{{ $errors->first('images') }}</p>
                                    </span>
                                    @if (isset($product) && !empty($product->pro_avatar))
                                        <img src="{{ asset(pare_url_file($product->pro_avatar)) }}" alt=""
                                            class="margin-auto-div img-rounded" id="image_render"
                                            style="height: 150px; width:100%;">
                                    @else
                                        <img src="{{ asset('admin/dist/img/no-image.png') }}" alt=""
                                            class="margin-auto-div img-rounded" id="image_render"
                                            style="height: 150px; width:100%;">
                                    @endif
                                </div>
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
