<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminRequestAccount;
use App\Models\Admin;
use App\Models\Supplier;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AdminSupplierController extends Controller
{
	public function index()
	{
		$supplieres = Supplier::get();
		$viewData = [
			'supplieres' => $supplieres
		];
		return view('admin.supplier.index', $viewData);
	}

	public function create()
	{
		return view('admin.supplier.create');
	}

	public function store(Request $request)
	{
		$data = $request->except("_token");
		$data['created_at'] = Carbon::now();
		$supplier = Supplier::insert($data);

		return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
	}

	public function edit($id)
	{
		$supplier = Supplier::find($id);
		return view('admin.supplier.update', compact('supplier'));
	}

	public function update(Request $request)
	{
		$data = $request->except("_token");
        unset($data['id']);
		Supplier::find($request->id)->update($data);
		return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
	}

	public function delete($id)
	{
		Supplier::find($id)->delete();
		return redirect()->back()->with('success', 'Xóa thành công');
	}
}
