<div class="container-fluid">
    <form role="form" action="" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="row">
            <div class="col-md-9">
                <div class="card card-primary">
                    <div class="card-body">
                        <div class="form-group ">
                            <label for="exampleInputEmail1">Name</label>
                            <input type="text" class="form-control" name="a_name" placeholder="" autocomplete="off"
                                value="{{ $article->a_name ?? old('a_name') }}">
                            @if ($errors->first('a_name'))
                                <span class="text-danger">{{ $errors->first('a_name') }}</span>
                            @endif
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="a_position_1"
                                            {{ $article->a_position_1 ?? 0 == 1 ? 'checked' : '' }} value="1">
                                        Trung tâm
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="a_position_2"
                                            {{ $article->a_position_2 ?? 0 == 1 ? 'checked' : '' }} value="1">
                                        Sidebar
                                    </label>
                                </div>
                            </div>
                        </div>
                        {{-- <div class="form-group "> 
                    <label for="exampleInputEmail1">Description</label> 
                    <textarea name="a_description" class="form-control" cols="5" rows="2" autocomplete="off">{{  $article->a_description ?? old('a_description') }}</textarea> 
                    @if ($errors->first('a_description'))
                        <span class="text-danger">{{ $errors->first('a_description') }}</span>
                    @endif
                </div> --}}
                        <div class="form-group ">
                            <label class="control-label">Danh mục <b class="col-red">(*)</b></label>
                            <select name="a_menu_id" class="form-control ">
                                <option value="">__Click__</option>
                                @foreach ($menus as $menu)
                                    <option value="{{ $menu->id }}"
                                        {{ $article->a_menu_id ?? 0 == $menu->id ? "selected='selected'" : '' }}>
                                        {{ $menu->mn_name }}
                                    </option>
                                @endforeach
                            </select>
                            @if ($errors->first('a_menu_id'))
                                <span class="text-danger">{{ $errors->first('a_menu_id') }}</span>
                            @endif
                        </div>

                    </div>

                    <div class="card-body">
                        <div class="box-header with-border">
                            <h3 class="box-title">Nội dung</h3>
                        </div>

                        <div class="form-group ">
                            <label for="exampleInputEmail1">Content</label>
                            <textarea name="a_content" id="content" class="form-control textarea" cols="5" rows="2">{{ $article->a_content ?? '' }}</textarea>
                            @if ($errors->first('a_content'))
                                <span class="text-danger">{{ $errors->first('a_content') }}</span>
                            @endif
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
                            <div class="input-group input-file" name="a_avatar">
                                <span class="input-group-btn">
                                    <button class="btn btn-default btn-choose" type="button">Chọn tệp</button>
                                </span>
                                <input type="text" class="form-control" placeholder='Không có tệp nào ...' />
                                <span class="input-group-btn"></span>
                            </div>
                            <span class="text-danger ">
                                <p class="mg-t-5">{{ $errors->first('images') }}</p>
                            </span>
                            @if (isset($article) && !empty($article->a_avatar))
                                <img src="{{ asset(pare_url_file($article->a_avatar)) }}" alt=""
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
<script src="{{ asset('admin/bower_components/jquery/dist/jquery.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('admin/ckeditor/ckeditor.js') }}"></script>
<script type="text/javascript">
    var options = {
        filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
        filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
        filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
        filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
    };

    CKEDITOR.replace('content', options);
</script>
