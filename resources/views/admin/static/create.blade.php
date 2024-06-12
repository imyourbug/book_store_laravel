@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.static.index') }}">Chính sách</a></li>
                        <li class="breadcrumb-item active">Thêm mới chính sách</li>
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
                                <div class="form-group {{ $errors->first('s_title') ? 'has-error' : '' }}">
                                    <label for="name">Đầu đề <span class="text-danger">(*)</span></label>
                                    <input type="text" class="form-control" name="s_title" placeholder="">
                                    @if ($errors->first('s_title'))
                                        <span class="text-danger">{{ $errors->first('s_title') }}</span>
                                    @endif
                                </div>


                                <div class="form-group {{ $errors->first('e_link') ? 'has-error' : '' }}">
                                    <label for="name">Loại chính sách <span class="text-danger">(*)</span></label>
                                    <select class="form-control" name="s_type">
                                        @foreach ($type as $key => $item)
                                            <option value="{{ $key }}">{{ $item }}</option>
                                        @endforeach
                                    </select>
                                </div>


                                <div class="form-group {{ $errors->first('e_link') ? 'has-error' : '' }}">
                                    <label for="name">Nội dung <span class="text-danger">(*)</span></label>
                                    <textarea class="form-control textarea" id="content" name="s_content"></textarea>
                                </div>




                                <div class="box-footer text-center">
                                    <a href="{{ route('admin.static.index') }}" class="btn btn-danger">
                                        Quay lại <i class="fa fa-undo"></i></a>
                                    <button type="submit" class="btn btn-success">Lưu dữ liệu <i
                                            class="fa fa-save"></i></button>
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
@section('script')
    <script src="{{ asset('admin/bower_components/jquery/dist/jquery.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('admin/ckeditor/ckeditor.js') }}"></script>
    <script type="text/javascript">
        var options = {
            filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
            filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
            filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
            filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
        };

        CKEDITOR.replace('content', options);
    </script>
@stop
