<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminRequestSlide;
use App\Models\Slide;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AdminSlideController extends Controller
{
    public function index()
    {
        if (!check_admin()) return redirect()->route('get.admin.index');
        $slides = Slide::paginate(20);
        return view('admin.slide.index', compact('slides'));
    }

    public function create()
    {
        return view('admin.slide.create');
    }

    public function store(AdminRequestSlide $request)
    {
        $data               = $request->except('_token', 'sd_avatar');
        $data['created_at'] = Carbon::now();

        if ($request->sd_avatar) {
            $image = upload_image('sd_avatar');
            if ($image['code'] == 1)
                $data['sd_image'] = $image['name'];
        }

        $id = Slide::insertGetId($data);
        return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
    }

    public function edit($id)
    {
        $slide = Slide::find($id);
        return view('admin.slide.update', compact('slide'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'id'         => 'required',
            'sd_title'         => 'required',
            'sd_link'          => 'required',
        ]);
        $slide              = Slide::find($request->id);
        $data               = $request->except('_token', 'sd_avatar');
        $data['created_at'] = Carbon::now();

        if ($request->sd_avatar) {
            $image = upload_image('sd_avatar');
            if ($image['code'] == 1)
                $data['sd_image'] = $image['name'];
        }

        $slide->update($data);
        return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
    }


    public function active($id)
    {
        $slide              = Slide::find($id);
        $slide->sd_active = !$slide->sd_active;
        $slide->save();

        return redirect()->back();
    }

    public function delete($id)
    {
        $slide              = Slide::find($id);
        if ($slide) $slide->delete();

        return redirect()->back()->with('success', 'Xóa thành công');
    }
}
