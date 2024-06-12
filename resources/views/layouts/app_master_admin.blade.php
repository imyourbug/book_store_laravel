<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Trang quản trị hệ thống</title>
    <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet"
        href="{{ asset('admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css') }}">
    <!-- iCheck -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
    <!-- JQVMap -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/jqvmap/jqvmap.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('admin/dist/css/adminlte.min.css') }}">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css') }}">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/daterangepicker/daterangepicker.css') }}">
    <!-- summernote -->
    {{-- <link rel="stylesheet" href="{{ asset('admin/plugins/summernote/summernote-bs4.min.css') }}"> --}}
    <link rel="stylesheet" href="{{ asset('admin/dist/css/styles.css') }}">
    <link rel="stylesheet" href="{{  asset('admin/bower_components/select2/dist/css/select2.min.css') }}">
    <link rel="stylesheet" href="{!! asset('admin/plugins/toastr/toastr.min.css') !!}">
    <!-- Google Font -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

    <script src="{!! asset('admin/ckeditor/ckeditor.js') !!}"></script>
    <script src="{!! asset('admin/ckfinder/ckfinder.js') !!}"></script>
    <script src="{!! asset('admin/dist/js/func_ckfinder.js') !!}"></script>
    <script>
        var baseURL = "{!! url('/') !!}"
    </script>
</head>

<body class="hold-transition skin-blue sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">
        <nav class="main-header navbar navbar-expand navbar-dark navbar-info" style="background-color: rgb(131, 166, 190)">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i
                            class="fas fa-bars"></i></a>
                </li>

            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown user-menu">
                    <a href="{{ route('admin.static.index') }}" class="nav-link dropdown-toggle" data-toggle="dropdown">
                        <img src="/images/logoD.png" class="user-image img-circle elevation-2" alt="User Image">
                        <span class="d-none d-md-inline" style="color:black">{{ get_data_user('admins', 'name') }}</span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <!-- User image -->
                        <li class="user-header bg-primary">
                            <img src="/images/logoD.png" class="img-circle elevation-2" alt="User Image">
                            <p>
                                {{ get_data_user('admins', 'name') }}
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <a href="{{ route('admin.profile.index') }}" class="btn btn-default btn-flat">Profile</a>
                            <a href="{{ route('get.logout.admin') }}" class="btn btn-default btn-flat float-right">Đăng xuất</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- =============================================== -->
        <!-- Left side column. contains the sidebar -->
        <aside class="main-sidebar elevation-4" style="background-color: rgb(20, 40, 54)">
            <!-- Brand Logo -->
            <a href="{{ route('admin.statistical') }}" class="brand-link navbar-info" style="background-color: rgb(135, 164, 177)">
                <img src="{{ asset('images/logoC.png') }}" alt="Home"
                    class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight:600;" style="color:rgb(18, 95, 24)">Admin BOOK</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar" style="background-color: rgb(20, 40, 54)">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="/images/logoD.png" class="img-circle elevation-2"
                            alt="/images/logoD.png">
                    </div>
                    <div class="info">
                        <a href="{{ route('admin.statistical') }}" class="d-block">{{ get_data_user('admins', 'name') }}</a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
                       with font-awesome or any other icon font library -->
                        <li class="nav-item menu-open">

                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{ route('admin.statistical') }}" class="nav-link">
                                        <i class="fas fa-home nav-icon"></i>
                                        <p>Trang chủ</p>
                                    </a>
                                </li>

                            </ul>
                        </li>

                        @foreach (config('sidebar') as $item)
                            @if (isset($item['label']))
                                <li class="header">{{ $item['name'] }}</li>
                                @continue;
                            @endif
                            @php
                                $level = get_data_user('admins', 'level');
                            @endphp
                            @if (in_array($level, $item['level']))
                                <li
                                    class="nav-item {{ isset($item['sub']) ? 'treeview' : '' }}
                  {{ in_array(Request::segment(2), $item['list-check']) ? ' active menu-open' : '' }}">
                                    <a href="{{ isset($item['sub']) ? '#' : route($item['route']) }}" class="nav-link">
                                        <i class="nav-icon fas {{ $item['icon'] }}"></i>
                                        <p>
                                            {{ $item['name'] }}
                                            <i class="fas fa-angle-left right"></i>
                                        </p>
                                    </a>
                                    @if (isset($item['sub']))
                                        <ul class="nav nav-treeview">
                                            @foreach ($item['sub'] as $li)
                                                @if (in_array($level, $li['level']))
                                                    <li
                                                        class="nav-item {{ Request::segment(2) == $li['namespace'] ? 'active' : '' }}">
                                                        <a href="{{ route($li['route']) }}" class="nav-link">
                                                            <i class="far {{ $li['icon'] }} nav-icon"></i>
                                                            <p>{{ $li['name'] }}</p>
                                                        </a>
                                                    </li>
                                                @endif
                                            @endforeach
                                        </ul>
                                    @endif
                                </li>
                            @endif
                        @endforeach
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- =============================================== -->
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            @yield('content')
        </div>
        <!-- /.content-wrapper -->
        <footer class="main-footer">
            <strong>BOOKSHOP BY <a href="#">Author</a></strong>

            <div class="float-right d-none d-sm-inline-block">
                <b>Version</b> 3.2.0
            </div>
        </footer>
        <div class="control-sidebar-bg"></div>
    </div>
    <!-- ./wrapper -->
    <!-- jQuery 3 -->



    <script src="{!! asset('admin/plugins/jquery/jquery.min.js') !!}"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="{{ asset('admin/plugins/jquery-ui/jquery-ui.min.js') }}"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src="{{ asset('admin/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <!-- ChartJS -->
    <script src="{{ asset('admin/plugins/chart.js/Chart.min.js') }}"></script>
    <!-- Sparkline -->
    <script src="{{ asset('admin/plugins/sparklines/sparkline.js') }}"></script>
    <!-- JQVMap -->
    <script src="{{ asset('admin/plugins/jqvmap/jquery.vmap.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/jqvmap/maps/jquery.vmap.usa.js') }}"></script>
    <!-- jQuery Knob Chart -->
    <script src="{{ asset('admin/plugins/jquery-knob/jquery.knob.min.js') }}"></script>
    <!-- daterangepicker -->
    <script src="{{ asset('admin/plugins/moment/moment.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/daterangepicker/daterangepicker.js') }}"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="{{ asset('admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js') }}"></script>
    <!-- Summernote -->
    {{-- <script src="{{ asset('admin/plugins/summernote/summernote-bs4.min.js') }}"></script> --}}
    <!-- overlayScrollbars -->
    <script src="{{ asset('admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js') }}"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset('admin/dist/js/adminlte.js') }}"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="{{ asset('admin/dist/js/demo.js') }}"></script>
    <script src="{!! asset('admin/dist/js/main.js') !!}"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="{{ asset('admin/dist/js/pages/dashboard.js') }}"></script>
    <script src="{!! asset('admin/plugins/toastr/toastr.min.js') !!}"></script>


    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>

    @yield('script')
    <script>
        toastr.options.closeButton = true;
        @if(session('success'))
            var message = "{{ session('success') }}";
            toastr.success(message, {timeOut: 3000});
        @endif
        @if(session('error'))
            var message = "{{ session('error') }}";
            toastr.error(message, {timeOut: 3000});
        @endif
        setTimeout(function(){ toastr.clear() }, 3000);
        $(document).ready(function () {

            $.ajaxSetup({
                headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            //Initialize Select2 Elements
            $('.select2').select2();
        });
    </script>
    <!-- page script -->
    <script type="text/javascript">
        // To make Pace works on Ajax calls
        $(document).ajaxStart(function() {
            Pace.restart()
        })
        $('.ajax').click(function() {
            $.ajax({
                url: '#',
                success: function(result) {
                    $('.ajax-content').html('<hr>Ajax Request Completed !')
                }
            })
        })
        $(function() {
            // run select2
            if ($(".js-select2-keyword").length > 0) {
                $(".js-select2-keyword").select2({
                    placeholder: 'Chọn keyword',
                    maximumSelectionLength: 3
                });
            }
            let $elementSelect = $(".js-select2");
            if ($elementSelect.length > 0) {
                $elementSelect.select2({
                    placeholder: 'Chọn dữ liệu',
                    maximumSelectionLength: 2
                });
            }

            // preview  hình ảnh
            $(".js-upload").change(function() {
                let $this = $(this);
                if (this.files && this.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        $this.parents('.block-images').find('img').attr('src', e.target.result);
                    };
                    reader.readAsDataURL(this.files[0]);
                }
            });

            $(".js-preview-transaction").click(function(event) {
                event.preventDefault();
                let $this = $(this);
                let URL = $this.attr('href');
                let ID = $this.attr('data-id');
                $("#idTransaction").html("#" + ID);
                $.ajax({
                    url: URL
                }).done(function(results) {
                    $("#modal-preview-transaction .content").html(results.html)
                    $("#modal-preview-transaction").modal({
                        show: true
                    })
                });
            });

            $('body').on("click", '.js-delete-order-item', function(event) {
                event.preventDefault();
                let URL = $(this).attr('href');
                let $this = $(this);
                $.ajax({
                    url: URL
                }).done(function(results) {
                    if (results.code == 200) {
                        $this.parents("tr").remove();
                    }
                });
            })

            $(".js-delete-confirm").click(function(event) {
                event.preventDefault();
                let URL = $(this).attr('href');
                $.confirm({
                    title: 'Bạn có muốn xoá dữ liệu không?',
                    content: 'Dữ liệu xoá đi không thể khôi phục',
                    type: 'red',
                    buttons: {
                        ok: {
                            text: "ok!",
                            btnClass: 'btn-primary',
                            keys: ['enter'],
                            action: function() {
                                window.location.href = URL;
                            }
                        },
                        cancel: function() {

                        }
                    }
                });
            })
        })
    </script>
</body>

</html>
