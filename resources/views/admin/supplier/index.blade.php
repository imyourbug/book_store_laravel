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
                        <li class="breadcrumb-item"><a href="{{ route('admin.ncc.index') }}">Nhà cung cấp</a></li>
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
                                    <a href="{{ route('admin.ncc.create') }}"><button type="button"
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

                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>SDT</th>
                                        <th>Time</th>
                                        <th>Action</th>
                                    </tr>
                                    </tbody>
                                    @if (isset($supplieres))
                                        @foreach ($supplieres as $key => $item)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>

                                                <td>{{ $item->sl_name }}</td>
                                                <td>{{ $item->sl_email }}</td>
                                                <td>{{ $item->sl_phone }}</td>
                                                <td>{{ $item->created_at }}</td>
                                                <td>
                                                    <form action="{{ route('admin.ncc.delete', $item->id) }}"
                                                        method="post">
                                                        @csrf
                                                        @method('DELETE')
                                                        <a href="{{ route('admin.ncc.update', $item->id) }}"
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
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
