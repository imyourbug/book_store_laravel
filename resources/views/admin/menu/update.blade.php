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
                        <li class="breadcrumb-item"><a href="{{ route('admin.menu.index') }}">Menu</a></li>
                        <li class="breadcrumb-item active">Cập nhật menu</li>
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
                    <form role="form" action="{{ route('admin.menu.excuteUpdate', ['id' => $menu->id]) }}"
                        method="POST">
                        @method('PUT')
                        @csrf
                        <div class="row">
                            <div class="col-md-9">
                                <div class="card card-primary">
                                    <div class="card-body">
                                        <div class="form-group {{ $errors->first('mn_name') ? 'has-error' : '' }}">
                                            <label for="name">Name <span class="text-danger">(*)</span></label>
                                            <input type="text" class="form-control" value="{{ $menu->mn_name }}"
                                                name="mn_name" placeholder="Name ...">
                                            @if ($errors->first('mn_name'))
                                                <span class="text-danger">{{ $errors->first('mn_name') }}</span>
                                            @endif
                                        </div>

                                        <div class="col-sm-4">

                                        </div>
                                        <div class="box-footer text-center">
                                            <a href="{{ route('admin.menu.index') }}" class="btn btn-danger">
                                                Quay lại <i class="fa fa-undo"></i></a>
                                            <button type="submit" class="btn btn-success">Cập nhật <i
                                                    class="fa fa-save"></i></button>
                                        </div>

                    </form>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
