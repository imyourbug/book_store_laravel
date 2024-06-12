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
                        <li class="breadcrumb-item"><a href="{{ route('admin.category.index') }}">Nhóm sản phẩm</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-tools">
                                <div class="btn-group">
                                    <a href="{{ route('admin.category.create') }}"><button type="button"
                                            class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                    <tr>
                                        <th style="width: 10px">STT</th>
                                        <th>Tên danh mục</th>
                                        <th>Hình ảnh</th>
                                        <th>Trạng thái</th>
                                        <th>Nổi bật</th>
                                        <th>Time</th>
                                        <th>Hành động</th>
                                    </tr>
                                    @if ($categories)
                                        @foreach ($categories as $key => $category)
                                            <tr>
                                                <td>{{ ($categories->currentPage() - 1) * $categories->perPage() + ($key + 1) }}
                                                </td>
                                                <td>{{ $category->c_name }}</td>
                                                <td>
                                                    @if (isset($category) && !empty($category->c_avatar))
                                                        <img src="{{ asset(pare_url_file($category->c_avatar)) }}"
                                                            alt="" class="margin-auto-div img-rounded"
                                                            id="image_render" style="height: 80px; width:80%;">
                                                    @else
                                                        <img src="{{ asset('admin/dist/img/no-image.png') }}" alt=""
                                                            class="margin-auto-div img-rounded" id="image_render"
                                                            style="height: 80px; width:80%;">
                                                    @endif
                                                </td>
                                                <td>
                                                    @if ($category->c_status == 1)
                                                        <a href="{{ route('admin.category.active', $category->id) }}"
                                                            class="btn-sm btn-success">Hiển thị</a>
                                                    @else
                                                        <a href="{{ route('admin.category.active', $category->id) }}"
                                                            class="btn-sm btn-warning">Ẩn</a>
                                                    @endif
                                                </td>
                                                <td>
                                                    @if ($category->c_hot == 1)
                                                        <a href="{{ route('admin.category.hot', $category->id) }}"
                                                            class="btn-sm btn-info">Yes</a>
                                                    @else
                                                        <a href="{{ route('admin.category.hot', $category->id) }}"
                                                            class="btn-sm btn-secondary">No</a>
                                                    @endif
                                                </td>
                                                <td>{{ $category->created_at }}</td>
                                                <td class="text-center">
                                                    <form action="{{ route('admin.category.delete', $category->id) }}"
                                                        method="post">
                                                        @csrf
                                                        @method('DELETE')
                                                        <a href="{{ route('admin.category.update', $category->id) }}"
                                                            class="btn btn-primary btn-sm"><i
                                                                class="fas fa-pencil-alt"></i></i></a>
                                                        <button class="btn btn-danger btn-sm btn-delete"
                                                            onclick="return confirm('Bạn có chăc chắn muốn xóa dữ liệu ?')"><i
                                                                class="fa fa-trash"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @endif
                                    </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer">
                        {!! $categories->links() !!}
                    </div>
                    <!-- /.box-footer-->
                </div>
                <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
