<div class="wrapper" id="wrapper" style="max-width: 780px;margin: 20px auto;padding: 5px 10px;">
	<div class="" style="display: flex;justify-content: space-between;">
        <a href="">
            <img style="background: #ffffff !important;width: 217px;" src="{{  asset('images/logo.png') }}" alt="Web ban sách">
        </a>
        <div style="text-align: right;width: 50%">
            <p style="margin: 0"><b>BOOK.vn</b></p>
            <p style="margin: 0">Mã số thuế 4382942</p>
            <p style="margin: 0">Địa chỉ: <b> Ninh Kiều, CT </b> STK 9012445854</p>
            <p style="margin: 0">Điện thoại: <b>1900 2312</b></p>
        </div>
    </div>
    <h2 style="    font-size: 34px;
    font-weight: bold;
    text-transform: uppercase;
    color: #fa2424;
    padding: 30px 0;">Hoá đơn</h2>
    <p style="text-align: left; font-size: 16px">Họ tên người mua: <b>{{ $transaction->tst_name }}</b></p>
    <p style="text-align: left;font-size: 16px">Ghi chú: <b>{{ $transaction->tst_note }}</b></p>
	<div class="table-responsive" style="margin-top: 50px;">
		<div class="table table-striped">
			<table style="width: 100%;border: 1px solid #dedede;">
				<tr style="border-bottom: 1px solid #dedede">
					<th style="text-align: center">STT</th>
					<th style="text-align: center">Tên mặt hàng</th>
					<th style="text-align: center">Số tiền</th>
					<th style="text-align: center">Số lượng</th>
					<th style="text-align: center">Thành tiền</th>
				</tr>
				@foreach($orders as $key => $order)
					<tr>
						<td style="text-align: center">{{ ($key + 1) }}</td>
						<td style="text-align: center">{{ $order->product->pro_name ?? "[N\A]"  }}</td>
						<td style="text-align: center">{{ number_format($order->od_price,0,',','.') }}VNĐ</td>
						<td style="text-align: center">{{ $order->od_qty }}</td>
						<td style="text-align: center">{{ number_format($order->od_price * $order->od_qty,0,',','.') }}</td>
					</tr>
				@endforeach
			</table>
		</div>
	</div>
	<p style="margin:25px 0;text-align: right;font-size:16px; font-weight:600; color: red">Tổng tiền thanh toán: <b>{{ number_format($transaction->tst_total_money,0,',','.') }} vnđ</b></p>
	<div style="">
		<div class="col-5" style="padding-bottom: 100px; width: 50%;float: left;text-align: center">
			<h3 style="margin:0">Người mua hàng</h3>
			<p style="margin: 0"><i>(Ký ghi rõ họ tên)</i></p>
			<span style="margin-top: 50px;display: block"><i>{{ $transaction->tst_name }}</i></span>
		</div>
		<div class="col-5" style="padding-bottom: 100px; width: 50%;float: left;text-align: center">
			<h3 style="margin:0">Người bán</h3>
			<p style="margin: 0"><i>(Ký ghi rõ họ tên)</i></p>
			<span style="margin-top: 50px;display: block"><i>BOOK.vn</i></span>
		</div>
		<div style="clear: both"></div>
	</div>
</div>
