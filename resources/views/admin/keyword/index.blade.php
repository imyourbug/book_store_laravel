@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý từ khoá</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{ route('admin.keyword.index') }}"> Keyword</a></li>
            <li class="active"> List </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-header">
                    <h3 class="box-title"><a href="{{ route('admin.keyword.create') }}" class="btn btn-primary">Thêm mới <i
                                class="fa fa-plus"></i></a></h3>
                </div>
                <div class="box-body">
                    <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">STT</th>
                                    <th style="width: 10px">ID</th>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>Hot</th>
                                    <th>Time</th>
                                    <th>Action</th>
                                </tr>
                                @if (isset($keywords))
                                    @foreach ($keywords as $key => $keyword)
                                        <tr>
                                            <td>{{ ($keywords->currentPage() - 1) * $keywords->perPage() + ($key + 1) }}
                                            </td>
                                            <td>{{ $keyword->id }}</td>
                                            <td>{{ $keyword->k_name }}</td>
                                            <td>{{ $keyword->k_description }}</td>
                                            <td>
                                                @if ($keyword->k_hot == 1)
                                                    <a href="{{ route('admin.keyword.hot', $keyword->id) }}"
                                                        class="label label-info">Hot</a>
                                                @else
                                                    <a href="{{ route('admin.keyword.hot', $keyword->id) }}"
                                                        class="label label-default">None</a>
                                                @endif
                                            </td>
                                            <td>{{ $keyword->created_at }}</td>
                                            <td>
                                                <form action="{{ route('admin.keyword.delete', $keyword->id) }}"
                                                    method="post">
                                                    @csrf
                                                    @method('DELETE')
                                                    <a href="{{ route('admin.keyword.update', $keyword->id) }}"
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
                    {!! $keywords->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
