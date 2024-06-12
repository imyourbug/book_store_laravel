<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Log in</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="{!! asset('admin/plugins/fontawesome-free/css/all.min.css') !!}">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- icheck bootstrap -->
        <link rel="stylesheet" href="{!! asset('admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css') !!}">
        <!-- Theme style -->
        <link rel="stylesheet" href="{!! asset('admin/dist/css/adminlte.min.css') !!}">
        <!-- Google Font: Source Sans Pro -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition login-page">


        <div class="login-box">
            <div class="login-logo">
                <a href="#" style="color: rgb(41, 99, 32); font-weight: 600"><b>ĐĂNG NHẬP
                    <br>BOOK SHOP</b></a>
        </div>
            <!-- /.login-logo -->
            <div class="card">
                <div class="card-body login-card-body">
                    <p class="login-box-msg">Đăng nhập admin BOOK</p>
                    @if (session('danger'))
                        <p class="login-box-msg text-danger">{{ session('danger') }}</p>
                    @endif
                    <form action="" method="post">
                        <div class="input-group mb-3">
                            <input name="email" type="email" class="form-control" placeholder="Email">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                            <div class="col-12">
                                @if ($errors->first('email'))
                                    <span class="text-danger">{{ $errors->first('email') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input name="password" type="password" class="form-control" placeholder="Password">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                            <div class="col-12">
                                @if ($errors->first('password'))
                                    <span class="text-danger">{{ $errors->first('password') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="row">
                            <!-- /.col -->
                            <div class="col-12">
                                @csrf
                                <button type="submit" class="btn btn-primary btn-block col-6" style="margin: auto;">Đăng nhập</button>
                            </div>
                            <!-- /.col -->
                        </div>
                    </form>
                </div>
                <!-- /.login-card-body -->
            </div>
        </div>
        <!-- /.login-box -->
        <!-- jQuery 3 -->
        <script src="{{ asset('admin/bower_components/jquery/dist/jquery.min.js') }}"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="{{ asset('admin/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>
    </body>
</html>
