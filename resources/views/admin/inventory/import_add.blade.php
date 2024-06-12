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
                        <li class="breadcrumb-item"><a href="{{ route('admin.inventory.warehousing') }}">Nhập kho</a></li>
                        <li class="breadcrumb-item active">Tạo mới</li>
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
                            <div class="form-group">
                                <label for="name">Số lượng <span class="text-danger">(*)</span></label>
                                <input type="number" class="form-control" name="w_qty"  placeholder="">
                            </div>
                     
                   
                            <div class="form-group">
                                <label for="name">Giá <span class="text-danger">(*)</span></label>
                                <input type="number" class="form-control" name="w_price"  placeholder="">
                            </div>
                     
                     
                            <div class="form-group">
                                <label for="name">Sản phẩm <span class="text-danger">(*)</span></label>
                                <select name="w_product_id" class="form-control" id="">
                                    <option value="0">__ROOT__</option>
                                    @foreach($products as $item)
                                        <option value="{{ $item->id }}">{{ $item->pro_name }}</option>
                                    @endforeach
                                </select>
                          
                        </div>
                        <div class="col-sm-12">
                            <div class="box-footer text-center">
                                <button type="submit" class="btn btn-success">Lưu dữ liệu <i class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
