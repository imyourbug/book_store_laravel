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
                                    <a href="{{ route('admin.slide.create') }}"><button type="button"
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
                                        <th>Status</th>
                                        <th>Sort</th>
                                        <th>Target</th>
                                        <th>Time</th>
                                        <th>Hành động</th>
                                    </tr>
                                    @if (isset($slides))
                                        @foreach ($slides as $key => $slide)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>

                                                <td>{{ $slide->sd_title }}</td>
                                                <td>
                                                    @if ($slide->sd_active == 1)
                                                        <a href="{{ route('admin.slide.active', $slide->id) }}"
                                                            class="btn-sm btn-info">Show</a>
                                                    @else
                                                        <a href="{{ route('admin.slide.active', $slide->id) }}"
                                                            class="btn-sm btn-default">Hide</a>
                                                    @endif
                                                </td>
                                                <td>{{ $slide->sd_sort }}</td>
                                                <td>{{ $slide->sd_target }}</td>
                                                <td>{{ $slide->created_at }}</td>
                                                <td>
                                                    <form action="{{ route('admin.slide.delete', $slide->id) }}"
                                                        method="post">
                                                        @csrf
                                                        @method('DELETE')
                                                        <a href="{{ route('admin.slide.update', $slide->id) }}"
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
                        {{-- {!! $slides->links() !!} --}}
                    </div>
                    <!-- /.box-footer-->
                </div>
                <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
