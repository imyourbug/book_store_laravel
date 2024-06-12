<div class="container-fluid" style="overflow-x: hidden">
    <form role="form" action="{{ route('admin.product.excuteUpdate', ['id' => $product->id]) }}" method="POST"
        enctype="multipart/form-data">
        @method('PUT')
        @csrf
        <div class="row">
            <div class="col-md-9">
                <div class="card card-primary">
                    <div class="card-body">
                        <div class="form-group ">
                            <label for="exampleInputEmail1">Tên sản phẩm</label>
                            <input type="text" class="form-control" name="pro_name" placeholder="Sản phẩm ...."
                                autocomplete="off" value="{{ $product->pro_name ?? old('pro_name') }}">
                            @if ($errors->first('pro_name'))
                                <span class="text-danger">{{ $errors->first('pro_name') }}</span>
                            @endif
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Giá sản phẩm</label>
                                    <input type="text" name="pro_price"
                                        value="{{ $product->pro_price ?? old('pro_price', 0) }}" class="form-control"
                                        data-type="currency" placeholder="15.000.000">
                                    @if ($errors->first('pro_price'))
                                        <span class="text-danger">{{ $errors->first('pro_price') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Giảm giá</label>
                                    <input type="number" name="pro_sale"
                                        value="{{ $product->pro_sale ?? old('pro_sale', 0) }}" class="form-control"
                                        data-type="currency" placeholder="5">
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Số lượng</label>
                                    <input type="number" name="pro_number"
                                        value="{{ $product->pro_number ?? old('pro_number', 0) }}" class="form-control"
                                        placeholder="5">
                                </div>
                            </div>

                        </div>

                        <div class="form-group ">
                            <label class="control-label">Danh mục <b class="col-red">(*)</b></label>
                            <select name="pro_category_id" class="form-control ">
                                <option value="">__Click__</option>
                                @foreach ($categories as $category)
                                    <option value="{{ $category->id }}"
                                        {{ ($product->pro_category_id ?? '') == $category->id ? "selected='selected'" : '' }}>
                                        {{ $category->c_name }}
                                    </option>
                                @endforeach
                            </select>
                            @if ($errors->first('pro_category_id'))
                                <span class="text-danger">{{ $errors->first('pro_category_id') }}</span>
                            @endif
                        </div>

                        <div class="form-group">


                            <label class="control-label">Nhà CC <b class="col-red">(*)</b></label>
                            <select name="pro_supplier_id" class="form-control ">
                                <option value="">__Click__</option>
                                @foreach ($supplier as $item)
                                    <option value="{{ $item->id }}"
                                        {{ ($product->pro_supplier_id ?? 0) == $item->id ? "selected='selected'" : '' }}>
                                        {{ $item->sl_name }}
                                    </option>
                                @endforeach
                            </select>


                            @if ($errors->first('pro_supplier_id'))
                                <span class="text-danger">{{ $errors->first('pro_supplier_id') }}</span>
                            @endif

                        </div>

                        <div class="card">
                            <div class="card-header">
                                <label class="control-label">Thuộc tính sản phẩm</label>
                            </div>
                            <div class="card-header">
                                <div class="row">
                                    @foreach ($attributes as $key => $attribute)
                                        <div class="form-group col-sm-3">
                                            <label for="inputEmail3" class="control-label default">
                                                {{ $key }}</label>
                                            <select name="attribute[]" class="form-control">
                                                <option value="">__Click__</option>
                                                @foreach ($attribute as $item)
                                                    <option value="{{ $item['id'] }}"
                                                        {{ in_array($item['id'], $attributeOld) ? "selected='selected'" : '' }}>
                                                        {{ $item['atb_name'] }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>


                        <div class="box-body">
                            <div class="form-group ">
                                <label for="exampleInputEmail1">Mô tả sản phẩm</label>
                                <textarea name="pro_content" id="content" class="form-control textarea" cols="5" rows="2">{{ $product->pro_content ?? '' }}</textarea>

                                @if ($errors->first('pro_content'))
                                    <span class="text-danger">{{ $errors->first('pro_content') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="box-body">
                            <label for="exampleInputEmail1">Album Ảnh</label>
                            @if (isset($images))
                                <div class="row" style="margin-bottom: 15px;">
                                    @foreach ($images as $item)
                                        <div class="col-sm-2">
                                            <a href="{{ route('admin.product.delete_image', $item->id) }}"
                                                style="display: block;">
                                                <img src="{{ pare_url_file($item->pi_slug) }}"
                                                    style="width: 70%;height: auto">
                                            </a>
                                        </div>
                                    @endforeach
                                </div>
                            @endif
                            <div class="form-group">
                                <div class="file-loading">
                                    <input id="images" type="file" name="file[]" multiple class="file"
                                        data-overwrite-initial="false" data-min-file-count="0">
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title"> Xuất bản</h3>
                    </div>
                    <div class="card-body">
                        <div class="btn-set">
                            <button type="submit" class="btn btn-info">
                                <i class="fa fa-save"></i> Lưu dữ liệu
                            </button>
                            <button type="reset" value="reset" class="btn btn-danger">
                                <i class="fa fa-undo"></i> Reset
                            </button>
                        </div>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-header">
                        <h3 class="card-title">Hình ảnh </h3>
                    </div>
                    <div class="card-body" style="min-height: 288px">
                        <div class="form-group">
                            <div class="input-group input-file" name="pro_avatar">
                                <span class="input-group-btn">
                                    <button class="btn btn-default btn-choose" type="button">Chọn tệp</button>
                                </span>
                                <input type="text" class="form-control" placeholder='Không có tệp nào ...' />
                                <span class="input-group-btn"></span>
                            </div>
                            <span class="text-danger ">
                                <p class="mg-t-5">{{ $errors->first('images') }}</p>
                            </span>
                            @if (isset($product) && !empty($product->pro_avatar))
                                <img src="{{ asset(pare_url_file($product->pro_avatar)) }}" alt=""
                                    class="margin-auto-div img-rounded" id="image_render"
                                    style="height: 150px; width:100%;">
                            @else
                                <img src="{{ asset('admin/dist/img/no-image.png') }}" alt=""
                                    class="margin-auto-div img-rounded" id="image_render"
                                    style="height: 150px; width:100%;">
                            @endif
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>
</div>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/css/fileinput.css" media="all"
    rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/js/fileinput.js" type="text/javascript">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/themes/fa/theme.js"
    type="text/javascript"></script>

