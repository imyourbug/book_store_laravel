<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
        <title>{{ ($title_page ?? "BOOK")   }}</title>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link rel="icon" sizes="32x32" type="image/png" href="{{ asset('ico.png') }}" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <link rel="stylesheet" href="{!! asset('admin/plugins/toastr/toastr.min.css') !!}">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/botman-web-widget@0/build/assets/css/chat.min.css">
        @yield('css')

        {{-- Thông báo --}}
        @if(session('toastr'))
            <script>
                var TYPE_MESSAGE = "{{session('toastr.type')}}";
                var MESSAGE = "{{session('toastr.message')}}";
            </script>
        @endif
        <style>
            .main-title {
                color: rgb(255, 0, 21);
            }
            .product-item a h3 {
                font-size: 14px !important;
            }
        </style>
    </head>
    <body>
        @include('frontend.components.header')
        @yield('content')
        @include('frontend.components.footer')

        <script>
            var DEVICE = '{{  device_agent() }}'
        </script>
        <script>
            var botmanWidget = {
                aboutText: 'Start the conversation with Hi',
                introMessage: "Chào bạn đến với tư vấn sản phẩm của DC BOOK"
            };
        </script>

        <script src='https://cdn.jsdelivr.net/npm/botman-web-widget@0/build/js/widget.js'></script>
        @yield('script')
    </body>
</html>
