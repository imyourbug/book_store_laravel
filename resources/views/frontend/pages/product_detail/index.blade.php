@extends('layouts.app_master_frontend')
@section('css')
    <style>
        <?php $style = file_get_contents('css/product_detail_insights.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <div class="container">
        <div class="breadcrumb">
            <ul>
                <li>
                    <b itemprop="url" href="/" title="Home"><span itemprop="title">Trang chủ</span></b>
                </li>
                <li>
                    <a itemprop="url" href="{{ route('get.product.list') }}" title="Sản phẩm"><span
                            itemprop="title">Sản phẩm</span></a>
                </li>

                <li>
                    <a itemprop="url" href="" title="Đăng nhập"><span itemprop="title">{{ $product->pro_name }}</span></a>
                </li>
                <div id="ex1" class="modal container">
                @if(count($images)>0)
                <div class="container">
                    @php
                        $i=0;
                    @endphp
                    @foreach($images as $img)
                    
                    @endforeach

                    <div class="caption-container">
                        <p id="caption"></p>
                    </div>
                    <div class="row">
                        @foreach($images as $img)
                        <div class="column">
                            <img class="demo cursor" src=" {{ pare_url_file($img->pi_slug)  }}" style="width:100%" onclick="currentSlide({{ $i++ }})">
                        </div>
                        @endforeach
                    </div>
                </div>
                @else
                    <h3>Không có ảnh nào </h3>
                @endif
            </div>

            </ul>
        </div>
        <div class="card">
            <div class="card-body info-detail">
                <div class="left">
{{--                    @include('frontend.pages.product_detail.include._inc_album')--}}
                    <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" title=""
                       class="">
                        <img alt="" style="max-width: 100%;width: 100%;height: auto" src="{{ pare_url_file($product->pro_avatar) }}"
                             class="lazyload">
                    </a>
                    <p style="display: flex;align-items: center;justify-content: center;margin-top: 20px"><a href="#ex1" rel="modal:open" class="btn btn-success" style="background-color:#288ad6;">Xem
                            Album ảnh (4)</a></p>
                    
                </div>
                <div class="right" id="product-detail" data-id="{{ $product->id }}">
                    <h1>{{  $product->pro_name }}</h1>
                    <div class="right__content">
                        <div class="info">

                            <div class="prices">
                                @if ($product->pro_sale)
                                    <b>Giá niêm yết:
                                    <span class="value">{{ number_format($product->pro_price,0,',','.') }}đ</span>
                                    </b>
                                    @php
                                        $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                                    @endphp
                                    <p>
                                        <b>Giá bán:<b>
                                        <span
                                            class="value price-new">{{  number_format($price,0,',','.') }}đ</span>
                                        <span class="sale">-{{  $product->pro_sale }}%</span>
                                    </p>
                                @else
                                    <p>
                                        Giá bán: <span class="value price-new">{{  number_format($product->pro_price,0,',','.') }} đ</span>
                                    </p>
                                @endif
                                <p>
                                    <span>View:&nbsp</span>
                                    <span>{{ $product->pro_view }}</span>
                                </p>
                            </div>
                            <div class="btn-cart">
                                <a href="{{ route('get.shopping.add', $product->id) }}" title=""
                                   onclick="add_cart_detail('17617',0);" class="muangay">
                                    <span>Thêm vào</span>
                                    <span>Giỏ hàng</span>
                                </a>
                                <a href="{{ route('ajax_get.user.add_favourite', $product->id) }}"
                                   title="Thêm sản phẩm yêu thích"
                                   class="muatragop  {{ !\Auth::id() ? 'js-show-login' : 'js-add-favourite' }}">
                                    <span>Yêu thích</span>
                                    <span>Sản phẩm</span>
                                </a>
                            </div>
                            <div class="infomation">
                                <h2 class="infomation__title">Thông tin</h2>
                                <div class="infomation__group">

                                    <div class="item">
                                        <p class="text1">Danh mục:</p>
                                        <h3 class="text2">
                                            @if (isset($product->category->c_name))
                                                <a href="{{  route('get.category.list', $product->category->c_slug).'-'.$product->pro_category_id }}">{{ $product->category->c_name }}</a>
                                            @else
                                                "[N\A]"
                                            @endif
                                        </h3>
                                    </div>
                                    @foreach($attribute as $key => $attr)
                                    <div class="item">
                                        @foreach($attr as  $k => $at)
                                            @if (in_array($k, $attributeOld))
                                                <p class="text1">{{ $key }}:</p>
                                                <h3 class="text2">{{ $at['atb_name'] }}</h3>
                                            @endif
                                        @endforeach
                                    </div>
                                    @endforeach
                                </div>
                            </div>
{{--                            @include('frontend.pages.product_detail.include._inc_keyword')--}}
                        </div>
                        @if (isset($event2))
                            <div class="ads">
                                <a href="#" title="Giam giá" target="_blank"><img alt="Hoan tien" style="width: 100%"
                                                                                  src="{{ pare_url_file($event2->e_banner) }}"></a>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
           @if(!empty($product->pro_content))
    <div class="reviews content_text" style="float: left; width: 100%;">
        <h4 class="reviews-title"><b class="product_details_title" style="color: cornflowerblue; font-weight: 700">Chi tiết sản phẩm</b></h4>
        <div class="product_details_content" style="font-weight: 400">
            {!! $product->pro_content !!}
        </div>

    </div>
@endif

            @include('frontend.pages.product_detail.include._inc_ratings')
            <div class="comments">
                <div class="form-comment">
                    <form action="" method="POST">
                        <input type="hidden" name="productId" value="{{ $product->id }}">
                        <div class="form-group">
                            <textarea placeholder="Mời bạn để lại bình luận ..." name="comment" class="form-control" id="" cols="30" rows="5"></textarea>
                        </div>
                        <div class="footer">
                            <p>
{{--                                <a href=""><i class="la la-camera"></i> Gửi ảnh</a>--}}
{{--                                <a href="">Quy định đăng bình luận</a>--}}
                            </p>
                            <button class=" {{ \Auth::id() ? 'js-save-comment' : 'js-show-login' }}">Gửi bình luận</button>
                        </div>
                    </form>
                </div>
                @include('frontend.pages.product_detail.include._inc_list_comments')
            </div>

        </div>
        <div class="card-body product-des">
            <div class="left">
                <div class="tabs">
                    <div class="tabs__content">
                        <div class="product-five">
                            <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
                                @foreach($productsSuggests as $product)
                                    <div class="item">
                                        @include('frontend.components.product_item',['product' => $product])
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right">
                @if (isset($event3))
                <a href="#" title="Giam giá" target="_blank"><img alt="Hoan tien" style="width: 100%"
                                                                  src="{{ pare_url_file($event3->e_banner) }}"></a>
                @endif
            </div>
        </div>
    </div>
    @if ($isPopupCaptcha >= 2)
        @include('frontend.pages.product_detail.include._inc_popup_captcha')
    @endif
@stop
@section('script')
    <script>
		var ROUTE_COMMENT = '{{ route('ajax_post.comment') }}';
		var CSS = "{{ asset('css/product_detail.min.css') }}";
		var URL_CAPTCHA = '{{ route('ajax_post.captcha.resume') }}'
    </script>
    <script src="{{ asset('js/product_detail.js') }}" type="text/javascript"></script>

@stop
