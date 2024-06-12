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
                        <li class="breadcrumb-item"><a href="{{ route('admin.transaction.index') }}">Đơn hàng</a></li>
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
                                    <input type="text" class="form-control" value="{{ Request::get('tst_phone') }}"
                                        name="tst_phone" placeholder="Số điện thoại">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" class="form-control" value="{{ Request::get('tst_name') }}"
                                        name="tst_name" placeholder="Tên ...">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <select name="type" class="form-control">
                                        <option value="0">Phân loại khách</option>
                                        <option value="1" {{ Request::get('type') == 1 ? "selected='selected'" : '' }}>
                                            Thành viên
                                        </option>
                                        <option value="2" {{ Request::get('type') == 2 ? "selected='selected'" : '' }}>
                                            Khách
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <select name="status" class="form-control">
                                        <option value="">Trạng thái</option>
                                        <option value="1"
                                            {{ Request::get('status') == 1 ? "selected='selected'" : '' }}>Tiếp nhận
                                        </option>
                                        <option value="2"
                                            {{ Request::get('status') == 2 ? "selected='selected'" : '' }}>Đang vận
                                            chuyển</option>
                                        <option value="3"
                                            {{ Request::get('status') == 3 ? "selected='selected'" : '' }}>Đã bàn
                                            giao</option>
                                        <option value="-1"
                                            {{ Request::get('status') == -1 ? "selected='selected'" : '' }}>Huỷ bỏ
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <button type="submit" class="btn btn-danger"><i class="fa fa-search"></i>
                                        Search</button>
                                </div>
                            </div>
                            {{-- <div class="col-md-3">
                                <div class="form-group">
                                    <button type="submit" name="export" value="true" class="btn btn-info">
                                        <i class="fa fa-save"></i> Export
                                    </button>
                                </div>
                            </div> --}}
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
                    <div class="card-body table-responsive p-0">
                        <table class="table table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th style="width: 10px">STT</th>
                                    <th style="width: 30%">Thông tin</th>
                                    <th>Tổng tiền</th>
                                    <th>Tài khoản</th>
                                    <th>Trạng thái</th>
                                    <th>Thời gian</th>
                                    <th>Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if (isset($transactions))
                                    @foreach ($transactions as $key => $transaction)
                                        <tr>
                                            <td>{{ ($transactions->currentPage() - 1) * $transactions->perPage() + ($key + 1) }}
                                            </td>
                                            <td>
                                                <ul>
                                                    <li>Tên: {{ $transaction->tst_name }}</li>
                                                    <li>Email: {{ $transaction->tst_email }}</li>
                                                    <li>SĐT: {{ $transaction->tst_phone }}</li>
                                                    <li>Địa chỉ: {{ $transaction->tst_address }}</li>
                                                </ul>
                                            </td>
                                            <td>{{ number_format($transaction->tst_total_money, 0, ',', '.') }} đ</td>
                                            <td>
                                                @if ($transaction->tst_user_id)
                                                    <span class="btn-sm btn-success">Thành viên</span>
                                                @else
                                                    <span class="btn-sm btn-default">Khách</span>
                                                @endif
                                            </td>
                                            <td>
                                                <span
                                                    class="btn-sm btn-{{ $transaction->getStatus($transaction->tst_status)['class'] }}">
                                                    {{ $transaction->getStatus($transaction->tst_status)['name'] }}
                                                </span>
                                            </td>
                                            <td>{{ $transaction->created_at }}</td>
                                            <td>
                                                <a data-id="{{ $transaction->id }}"
                                                    href="{{ route('ajax.admin.transaction.detail', $transaction->id) }}"
                                                    class="btn btn-xs btn-info js-preview-transaction"><i
                                                        class="fa fa-eye"></i> View</a>
                                                @if ($transaction->tst_status != 3 && $transaction->tst_status != -1)
                                                    <div class="btn-group">
                                                        <button type="button"
                                                            class="btn btn-success btn-xs">Action</button>
                                                        <button type="button"
                                                            class="btn btn-success btn-xs dropdown-toggle"
                                                            data-toggle="dropdown" aria-expanded="false">
                                                            <span class="caret"></span>
                                                            <span class="sr-only">Toggle Dropdown</span>
                                                        </button>
                                                        <ul class="dropdown-menu action-transaction" role="menu">

                                                            <li>
                                                                <a href="{{ route('admin.transaction.delete', $transaction->id) }}"
                                                                    class="btn-confirm-delete"><i
                                                                        class="fa fa-trash"></i></i> Delete</a>
                                                            </li>

                                                            <li>
                                                                <a
                                                                    href="{{ route('admin.action.transaction', ['process', $transaction->id]) }}"><i
                                                                        class="fa fa-tint"></i> Đang bàn giao</a>
                                                            </li>
                                                            <li>
                                                                <a
                                                                    href="{{ route('admin.action.transaction', ['success', $transaction->id]) }}"><i
                                                                        class="fa fa-check-circle"></i> Đã bàn giao</a>
                                                            </li>
                                                            <li>
                                                                <a
                                                                    href="{{ route('admin.action.transaction', ['cancel', $transaction->id]) }}"><i
                                                                        class="fa fa-ban"></i> Huỷ</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                {!! $transactions->appends($query)->links() !!}
            </div>
            <!-- /.box-footer-->
        </div>
    </div>
    <!-- /.box -->


    <div class="modal fade" id="modal-preview-transaction">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">

                    <h4 class="modal-title"> Chi tiết đơn hàng <b id="idTransaction">#1</b></h4>
                </div>
                <div class="modal-body">
                    <div class="content">

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-primary">Lưu</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.content -->
@stop
