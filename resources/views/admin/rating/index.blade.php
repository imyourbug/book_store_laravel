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
                        <li class="breadcrumb-item"><a href="{{ route('admin.rating.index') }}">Danh sách đánh giá</a></li>
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
                            <div class="col-md-4">
                                Lọc theo sao:&emsp13; <a href="{{ route('admin.rating.index') }}">Tất cả</a>&emsp13;
                                <a href="{{ route('admin.rating.index', ['s' => 5]) }}">5 sao</a>&emsp13;
                                <a href="{{ route('admin.rating.index', ['s' => 4]) }}">4 sao</a>&emsp13;
                                <a href="{{ route('admin.rating.index', ['s' => 3]) }}">3 sao</a>&emsp13;
                                <a href="{{ route('admin.rating.index', ['s' => 2]) }}">2 sao</a>&emsp13;
                                <a href="{{ route('admin.rating.index', ['s' => 1]) }}">1 sao</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                    <tr>
                                        <th style="width: 10px">STT</th>
                                        <th>Tên sản phẩm</th>
                                        <th>Tên khách hàng</th>
                                        <th>Rating</th>
                                        <th>Bình luận</th>
                                        <th>Thời gian</th>
                                        <th>Hành động</th>
                                    </tr>
                                    @php
                                        $key_search = Str::slug(Request::get('key', ''));
                                    @endphp
                                    @if (isset($ratings))
                                        @if ($key_search)
                                            @foreach ($ratings as $key => $rating)
                                                @if (str_contains(Str::slug($rating->product->pro_name), $key_search) ||
                                                        str_contains(Str::slug($rating->user->name), $key_search))
                                                    <tr>
                                                        <td>{{ ($ratings->currentPage() - 1) * $ratings->perPage() + ($key + 1) }}
                                                        </td>
                                                        <td>{{ $rating->product->pro_name ?? '[N\A]' }}</td>
                                                        <td>{{ $rating->user->name ?? '[N\A]' }}</td>
                                                        <td>
                                                            <div class="ratings">
                                                                @for ($i = 1; $i <= 5; $i++)
                                                                    <span
                                                                        class="{{ $i <= $rating->r_number ? 'active' : '' }}"><i
                                                                            class="fa fa-star"></i></span>
                                                                @endfor
                                                            </div>
                                                        </td>
                                                        <td>{{ $rating->r_content }}</td>
                                                        <td>{{ $rating->created_at }}</td>

                                                        <td class="text-center">
                                                            <a href="{{ route('admin.rating.delete', $rating->id) }}"
                                                                class="btn btn-danger btn-sm btn-delete btn-confirm-delete"><i
                                                                    class="fa fa-trash"></i></a>
                                                        </td>
                                                    </tr>
                                                @endif
                                            @endforeach
                                        @else
                                            @foreach ($ratings as $key => $rating)
                                                <tr>
                                                    <td>{{ ($ratings->currentPage() - 1) * $ratings->perPage() + ($key + 1) }}
                                                    </td>
                                                    <td>{{ $rating->product->pro_name ?? '[N\A]' }}</td>
                                                    <td>{{ $rating->user->name ?? '[N\A]' }}</td>
                                                    <td>
                                                        <div class="ratings">
                                                            @for ($i = 1; $i <= 5; $i++)
                                                                <span
                                                                    class="{{ $i <= $rating->r_number ? 'active' : '' }}"><i
                                                                        class="fa fa-star"></i></span>
                                                            @endfor
                                                        </div>
                                                    </td>
                                                    <td>{{ $rating->r_content }}</td>
                                                    <td>{{ $rating->created_at }}</td>

                                                    <td class="text-center">
                                                        <a href="{{ route('admin.rating.delete', $rating->id) }}"
                                                            class="btn btn-danger btn-sm btn-delete btn-confirm-delete"><i
                                                                class="fa fa-trash"></i></a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @endif
                                    @endif
                                    </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer">
                        {!! $ratings->links() !!}
                    </div>
                    <!-- /.box-footer-->
                </div>
                <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
