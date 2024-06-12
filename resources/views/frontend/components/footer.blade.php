<div id="footer" style="background: ##75a0ad !important">
    <div class="container footer">
        <div class="footer__left">
            <div class="top">
                <div class="item">
                    <div class="title"><b>Về chúng tôi</b></div>
                    <ul>
                        <li>
                            <a href="{{ route('get.blog.home') }}">Bài viết</a>
                        </li>
                        <li>
                            <a href="{{ route('get.product.list') }}">Sản phẩm</a>
                        </li>
                        <li>
                            <a href="{{ route('get.register') }}">Đăng ký</a>
                        </li>
                        <li>
                            <a href="{{ route('get.login') }}">Đăng nhập</a>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title"><b>Tin tức</b></div>
                    <ul>
                        @if (isset($menus))
                            @foreach($menus as $menu)
                                <li>
                                    <a title="{{ $menu->mn_name }}"
                                        href="{{ route('get.article.by_menu',$menu->mn_slug.'-'.$menu->id) }}">
                                        {{ $menu->mn_name }}
                                    </a>
                                </li>
                            @endforeach
                        @endif
                        <li><a href="{{ route('get.contact') }}">Liên hệ</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title"><b>Chính sách</b></div>
                    <ul>
                        <li><a href="{{ route('get.static.shopping_guide') }}">Hướng dẫn mua hàng</a></li>
                        <li><a href="{{  route('get.static.return_policy') }}">Chính sách đổi trả</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title"><b>Danh mục nổi bật</b></div>
                    @if (isset($categoriesHot))
                        <ul>
                            @foreach($categoriesHot as $item)
                                <li>
                                    <a href="{{  route('get.category.list', $item->c_slug.'-'.$item->id) }}" title="{{ $item->c_name }}">{{ $item->c_name }}</a>
                                </li>
                            @endforeach
                        </ul>
                    @endif
                </div>
            </div>
            <div class="bot">
                <div class="social">
                    <div class="title"><b>KẾT NỐI VỚI CHÚNG TÔI</b></div>
                    <p>
                        <a href="3" class="fa fa fa-youtube"></a>
                        <a href="" class="fa fa-facebook-official"></a>
                        <a href="" class="fa fa-twitter"></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

