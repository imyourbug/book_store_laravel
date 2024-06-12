<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminRequestKeyword;
use App\Models\Keyword;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class AdminKeywordController extends Controller
{
    public function index()
    {
        $keywords = Keyword::paginate(10);

        $viewData = [
            'keywords' => $keywords
        ];

        return view('admin.keyword.index', $viewData);
    }

    public function create()
    {
        return view('admin.keyword.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'k_name' => 'required|max:190|min:3',
        ]);
        $data               = $request->except('_token');
        $data['k_slug']     = Str::slug($request->k_name);
        $data['created_at'] = Carbon::now();

        $id = Keyword::insertGetId($data);

        return redirect()->back();
    }

    public function edit($id)
    {
        $keyword = Keyword::find($id);
        return view('admin.keyword.update', compact('keyword'));
    }

    public function update(AdminRequestKeyword $request)
    {
        $keyword            = Keyword::find($request->id);
        $data               = $request->except('_token');
        $data['k_slug']     = Str::slug($request->k_name);
        $data['updated_at'] = Carbon::now();

        $keyword->update($data);
        return redirect()->back();
    }

    public function hot($id)
    {
        $keyword = Keyword::find($id);
        $keyword->k_hot = !$keyword->l_hot;
        $keyword->save();

        return redirect()->back();
    }

    public function delete($id)
    {
        $keyword = Keyword::find($id);
        if ($keyword) $keyword->delete();

        return redirect()->back();
    }
}
