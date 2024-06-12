@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.user.index') }}">Người dùng</a></li>
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
                <div class="box-body">
                    <div class="card-body table-responsive p-0">
                        <table class="table table-hover text-nowrap table-bordered">
                            <thead>
                                <tr>
                                    <th style="width: 10px">Stt</th>
                                    <th style="width: 10px">ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Time</th>
                                    <th>Hành động</th>
                                </tr>
                                @if (isset($users))
                                    @foreach($users as $key => $user)
                                        <tr>
                                            <td>{{ ($key + 1) }}</td>
                                            <td>{{ $user->id }}</td>
                                            <td>{{ $user->name }}</td>
                                            <td>{{ $user->email }}</td>
                                            <td>{{ $user->phone }}</td>
                                            <td>{{ $user->created_at }}</td>
                                            <td>
                                                <a href="{{ route('admin.user.transaction', $user->id) }}" class="btn btn-xs btn-primary js-show-transaction"> Nợ cần thu</a>
                                                <a href="{{  route('admin.user.delete', $user->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
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
                    {!! $users->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
    <div class="modal fade" id="modal-transaction" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                    <h4 class="modal-title">Nợ cần thu từ khách hàng</h4>
                </div>
                <div class="modal-body" id="content-transaction">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary pull-right" data-dismiss="modal">Đóng</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
@stop

@section('script')
    <script>
        $(function () {
            $(".js-show-transaction").click(function (event) {
                event.preventDefault();
                let URL = $(this).attr('href');
                $.ajax({
                    url: URL,
                }).done(function( results ) {
                    $("#modal-transaction").modal({show: true});
                    $("#content-transaction").html(results.html)
                });
            })
            $("body").on("click","table .js-success-transaction", function(event){
                let URL = $(this).attr('href');
                let $this = $(this);
                event.preventDefault();
                $.ajax({
                    url: URL,
                }).done(function( results ) {
                    if (results.code)
                    {
                        $this.parents('tr').remove();
                    }
                });
            });
        })
    </script>
@stop