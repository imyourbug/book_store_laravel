<div class="top">
    <b href="#" class="main-title">SẢN PHẨM VỪA XEM</b>
</div>
<div class="bot">
    @if (isset($products))
        @foreach($products as $product)
            <div class="item">
                @include('frontend.components.product_item',['product' => $product])
            </div>
        @endforeach
    @endif
</div>
