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
                        <li class="breadcrumb-item"><a href="{{ route('admin.attribute.index') }}">Quản lý thông tin</a></li>
                        <li class="breadcrumb-item active">Cập nhật</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <form role="form" action="{{ route('admin.attribute.excuteUpdate', ['id' => $attribute->id]) }}" method="POST">
                @method('PUT')
                @csrf
                <div class="row">
                    <div class="col-md-9">
                        <div class="card card-primary">
                            <div class="card-body">
                                <div class="form-group {{ $errors->first('atb_name') ? 'has-error' : '' }}">
                                    <label for="name">Tên thông tin <span class="text-danger">(*)</span></label>
                                    <input type="text" class="form-control" value="{{ $attribute->atb_name }}"
                                        name="atb_name" placeholder="Name ...">
                                    @if ($errors->first('atb_name'))
                                        <span class="text-danger">{{ $errors->first('atb_name') }}</span>
                                    @endif
                                </div>

                                <div class="form-group {{ $errors->first('atb_type') ? 'has-error' : '' }}">
                                    <label for="name">Nhóm thông tin <span class="text-danger">(*)</span></label>
                                    <select class="form-control" name="atb_type">
                                        @foreach ($attribute_type as $key => $type)
                                            <option value="{{ $key }}"
                                                {{ $attribute->atb_type == $key ? "selected='selected'" : '' }}>
                                                {{ $type['name'] }}</option>
                                        @endforeach
                                    </select>
                                    @if ($errors->first('atb_type'))
                                        <span class="text-danger">{{ $errors->first('atb_type') }}</span>
                                    @endif
                                </div>


                                <div class="form-group  {{ $errors->first('atb_category_id') ? 'has-error' : '' }}">
                                    <label for="name">Danh mục <span class="text-danger">(*)</span></label>
                                    <select class="form-control" name="atb_category_id">
                                        @foreach ($categories as $item)
                                            <option value="{{ $item->id }}"
                                                {{ $attribute->atb_category_id == $item->id ? "selected='selected'" : '' }}>
                                                {{ $item->c_name }}</option>
                                        @endforeach
                                    </select>
                                    @if ($errors->first('atb_category_id'))
                                        <span class="text-danger">{{ $errors->first('atb_category_id') }}</span>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Thao tác</h3>
                            </div>
                            <div class="card-header">
                                <button type="submit" class="btn btn-success"><i
                                        class="fa fa-save"></i> Cập nhật</button>
                                <button type="reset" value="reset" class="btn btn-danger">
                                    <i class="fa fa-undo"></i> Reset
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        </form>
        </div>

    </section>
    <!-- /.content -->
@stop
