<section class="top-header desktop" style="background: {{ config('layouts.component.header-top.background') }} ">
    <div class="container">
        <div class="content">
            <div class="left">
{{--                <a href="{{ route('get.static.customer_care') }}" title="Chăm sóc khách hàng" rel="nofollow">Chăm sóc khách hàng</a>--}}
                 <a href="{{ route('get.user.transaction') }}" title="Kiểm tra đơn hàng" rel="nofollow">KIỂM TRA ĐƠN HÀNG</a>
            </div>
            <div class="right">
                @if (Auth::check())
                    <a href="">Xin chào {{ Auth::user()->name }}!</a>
                    <a href="{{  route('get.user.dashboard') }}">Quản lý tài khoản</a>
                    <a href="{{  route('get.logout') }}">Đăng Xuất </a>
                @else
                    <a href="{{  route('get.register') }}">Đăng Ký</a>
                    <a href="{{  route('get.login') }}">Đăng Nhập</a>
                @endif
             </div>
        </div>
    </div>
</section>
<section class="top-header mobile" style="background: {{ config('layouts.component.header-top.background') }} !important ">
    <div class="container">
        <div class="content">
            <div class="left">
{{--                <a href="{{ route('get.static.customer_care') }}" title="Chăm sóc khách hàng" rel="nofollow">Chăm sóc khách hàng</a>--}}
                <a href="{{ route('get.user.transaction') }}" title="Kiểm tra đơn hàng" rel="nofollow">KIỂM TRA ĐƠN HÀNG</a>
                @if (Auth::check())
                    <a href="">Xin chào {{ Auth::user()->name }}</a>
                    <a href="{{  route('get.user.dashboard') }}">Quản lý tài khoản</a>
                    <a href="{{  route('get.logout') }}">Đăng Xuất </a>
                @else
                    <a href="{{  route('get.register') }}">Đăng Ký</a>
                    <a href="{{  route('get.login') }}">Đăng Nhập</a>
                @endif
            </div>
        </div>
    </div>
</section>

<div class="commonTop">
    <div id="headers" style="background: {{ config('layouts.component.menu.background') }} ">
        <div class="container header-wrapper">
            <!--Thay đổi-->
            <div class="logo">
                <a href="/" class="desktop">
                    <img src="{{ url('images/logoD.png') }}" style="height: 55px;background-color:#40966e" alt="Home">
                </a>
                <span class="menu js-menu-cate"><i class="fas fa-bars" style="color: rgb(1, 23, 7)"></i></span>
            </div>
            <div class="search">

                <form action="{{ $link_search ?? route('get.product.list',['k' => Request::get('k')]) }}" role="search" method="GET">
                    <input type="text" name="k" value="{{ Request::get('k') }}" class="form-control" placeholder="Tìm kiếm sản phẩm ..." style="font-style: normal">
                    <button type="submit" class="btnSearch" style="background: #40966e ;border:none;">
                        <i class="fa fa-search"></i>
                        <span>Tìm kiếm</span>
                    </button>
                </form>
            </div>
            <ul class="right">
                <li>
                    <a href="{{ route('get.shopping.list') }}" title="Giỏ hàng">
                        <i class="la la-shopping-cart" style="color: #d83f3f"></i>
                        <span class="text">
                            <span class="">Giỏ Hàng ({{ \Cart::count() }})</span>
                            <span></span>
                        </span>
                    </a>
                </li>
                <li class="desktop">
                    <a href="tel:18006005" title="" class="info-user js-show-dropdown">
                        <img src="{{ asset('images/no-image.jpg') }}" alt="">
                        <span class="fa fa-angle-down"></span>
                    </a>
                    <ul class="header-menu-user">
                        @foreach(config('user') as $item)
                            <li>
                                <a href="{{ route($item['route']) }}" class="{{ \Request::route()->getName() == $item['route'] ? 'active' : '' }}">
                                    <i class="{{ $item['icon'] }}"></i>
                                    <span>{{ $item['name'] }}</span>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </li>
            </ul>

            <div id="menu-main" class="container" style="display: none;">
                <ul class="menu-list">
                    @foreach($categories as $item)
                    <li>
                        <a href="{{  route('get.category.list', $item->c_slug.'-'.$item->id) }}"
                           title="{{  $item->c_name }}" class="js-open-menu">
                            <img src="{{ pare_url_file($item->c_avatar) }}" alt="{{ $item->c_name }}">
                            <span>{{  $item->c_name }}</span>
                            @if (isset($item->children) && count($item->children))
                                <span class="fa fa-angle-right"></span>
                            @else
                                <span></span>
                            @endif
                        </a>
                        @if (isset($item->children) && count($item->children))
                        <div class="submenu">
                            <div class="group">
                                <div class="item">
                                    @foreach($item->children as $children)
                                        <a href="{{  route('get.category.list', $children->c_slug.'-'.$children->id) }}"
                                           title="{{  $children->c_name }}" class="js-open-menu">
                                            <span>{{  $children->c_name }}</span>
                                        </a>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        @endif
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>

    </div>
</div>
