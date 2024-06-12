@extends('layouts.app_master_admin')
@section('content')
    <style type="text/css">
        .ratings span i {
            color: #eff0f5;
        }

        .ratings span.active i {
            color: #faca51;
        }
    </style>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.comment.index') }}">Bình Luận</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h3 class="card-title">Tìm kiếm</h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                class="fas fa-minus"></i></button>
                    </div>
                </div>
                <div class="card-body">
                    <form>
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" class="form-control" value="{{ Request::get('key', '') }}"
                                        name="key" placeholder="Từ khóa tìm kiếm">
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <button type="submit" class="btn btn-danger"><i class="fa fa-search"></i>
                                        Search</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>

                                    <th style="width: 10px">STT</th>
                                    <th>Tên khách hàng</th>
                                    <th>Sản phẩm</th>
                                    <th>Bình luận </th>
                                    <th>Thời gian</th>
                                    <th>Hành động</th>
                                </tr>
                                @php
                                    $key_search = str()->slug(Request::get('key', ''));
                                @endphp
                                @if (isset($comments))
                                    @foreach ($comments as $key => $comment)
                                        @if (
                                            $key_search &&
                                                (str_contains(str()->slug($comment->user->name), $key_search) ||
                                                    str_contains(str()->slug($comment->product->pro_name), $key_search)))
                                            <tr>
                                                <td>{{ ($comments->currentPage() - 1) * $comments->perPage() + ($key + 1) }}
                                                </td>
                                                <td>{{ $comment->user->name ?? '[N\A]' }}</td>
                                                <td>{{ $comment->product->pro_name ?? '[N\A]' }}</td>
                                                <td>{{ $comment->cmt_content ?? '[N\A]' }}</td>
                                                <td>{{ $comment->created_at }}</td>
                                                <td>
                                                    <a href="{{ route('admin.comment.delete', $comment->id) }}"
                                                        class="btn btn-sm btn-danger js-delete-confirm"><i
                                                            class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                        @elseif($key_search)
                                        @else
                                            <tr>
                                                <td>{{ ($comments->currentPage() - 1) * $comments->perPage() + ($key + 1) }}
                                                </td>
                                                <td>{{ $comment->user->name ?? '[N\A]' }}</td>
                                                <td>{{ $comment->product->pro_name ?? '[N\A]' }}</td>
                                                <td>{{ $comment->cmt_content ?? '[N\A]' }}</td>
                                                <td>{{ $comment->created_at }}</td>
                                                <td>
                                                    <a href="{{ route('admin.comment.delete', $comment->id) }}"
                                                        class="btn btn-sm btn-danger js-delete-confirm"><i
                                                            class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                        @endif
                                    @endforeach
                                @endif
                                </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
            {!! $comments->links() !!}
        </div>
        <!-- /.box-footer-->
    </div>
    <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
