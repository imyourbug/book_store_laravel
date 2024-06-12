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
                        <li class="breadcrumb-item"><a href="{{ route('admin.product.index') }}">Sản phẩm</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
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
                        <form class="">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" class="form-control" value="{{ Request::get('id') }}"
                                            name="id" placeholder="ID">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" class="form-control" value="{{ Request::get('name') }}"
                                            name="name" placeholder="Tên ...">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <select name="category" class="form-control">
                                            <option value="0">Danh mục</option>
                                            @foreach ($categories as $item)
                                                <option value="{{ $item->id }}"
                                                    {{ Request::get('category') == $item->id ? "selected='selected'" : '' }}>
                                                    {{ $item->c_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success"><i class="fa fa-search"></i>
                                            Tìm</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="card-tools">
                                    <div class="btn-group">
                                        <a href="{{ route('admin.product.create') }}"><button type="button"
                                                class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo
                                                mới</button></a>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body table-responsive p-0">
                                <table class="table table-hover text-nowrap table-bordered">
                                    <thead>
                                        <tr>
                                            <th style="width: 10px">STT</th>
                                            <th>Tên</th>
                                            <th>Danh mục</th>
                                            <th>Hình đại diện</th>
                                            <th>Giá</th>
                                            <th>Hot</th>
                                            <th>Trạng thái</th>
                                            <th>Hành động</th>
                                        </tr>

                                        </tbody>
                                        @if (isset($products))
                                            @foreach ($products as $key => $product)
                                                <tr>
                                                    <td>{{ ($products->currentPage() - 1) * $products->perPage() + ($key + 1) }}
                                                    </td>
                                                    <td style="width: 30%" class="title-content">
                                                        <p>{{ $product->pro_name }}</p>
                                                    </td>
                                                    <td>
                                                        <span
                                                            class="label label-success">{{ $product->category->c_name ?? '[N\A]' }}</span>
                                                    </td>
                                                    <td>
                                                        <img src="{{ pare_url_file($product->pro_avatar) }}"
                                                            style="width: 80px;height: 100px">
                                                    </td>
                                                    <td>
                                                        @if ($product->pro_sale)
                                                            <span
                                                                style="text-decoration: line-through;">{{ number_format($product->pro_price, 0, ',', '.') }}
                                                                vnđ</span><br>
                                                            @php
                                                                $price =
                                                                    ((100 - $product->pro_sale) * $product->pro_price) /
                                                                    100;
                                                            @endphp
                                                            <span>{{ number_format($price, 0, ',', '.') }} vnđ</span>
                                                        @else
                                                            {{ number_format($product->pro_price, 0, ',', '.') }} vnđ
                                                        @endif

                                                    </td>
                                                    <td>
                                                        @if ($product->pro_hot == 1)
                                                            <a href="{{ route('admin.product.hot', $product->id) }}"
                                                                class="btn btn-success btn-xs">Nổi bật</a>
                                                        @else
                                                            <a href="{{ route('admin.product.hot', $product->id) }}"
                                                                class="btn btn-danger btn-xs">Không</a>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($product->pro_active == 1)
                                                            <a href="{{ route('admin.product.active', $product->id) }}"
                                                                class="btn btn-info btn-xs">Hiển thị</a>
                                                        @else
                                                            <a href="{{ route('admin.product.active', $product->id) }}"
                                                                class="btn btn-danger btn-xs">Ẩn</a>
                                                        @endif
                                                    </td>
                                                    <td class="text-center">
                                                        <form action="{{ route('admin.product.delete', $product->id) }}"
                                                            method="post">
                                                            @csrf
                                                            @method('DELETE')
                                                            <a href="{{ route('admin.product.update', $product->id) }}"
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
                        <!-- /.box-body -->
                        <div class="box-footer">
                            {!! $products->appends($query)->links() !!}
                        </div>
                        <!-- /.box-footer-->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
        </section>
        <!-- /.content -->
    @stop
