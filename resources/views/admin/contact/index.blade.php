@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="#">Liên hệ</a></li>
                    
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
                       
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                <tr>
                                    <th style="width: 10px">STT</th>
                                    <th>ID</th>
                                    <th>Họ tên</th>
                                    <th>Tiêu đề</th>
                                    <th>Email</th>
                                    <th>SĐT</th>
                                    <th>Nội dung</th>
                                    <th>Ngày gửi</th>
                                </tr>
                                @if (isset($contacts))
                                    @foreach($contacts as $key => $item)
                                        <tr>
                                            <td>{{ (($contacts->currentPage() - 1) * $contacts->perPage()) + ( $key + 1)  }}</td>
                                            <td>{{ $item->id }}</td>
                                            <td>{{ $item->c_name }}</td>
                                            <td>{{ $item->c_title }}</td>
                                            <td>{{ $item->c_email }}</td>
                                            <td>{{ $item->c_phone }}</td>
                                            <td>{{ $item->c_content }}</td>
                                            <td>{{ $item->created_at }}</td>
                                            <td>
                                                <a href="{{  route('admin.contact.delete', $item->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
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
                    {!! $contacts->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
