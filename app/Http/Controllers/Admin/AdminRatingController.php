<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Rating;
use Illuminate\Http\Request;

class AdminRatingController extends Controller
{
    public function index(Request $request)
    {
        $ratings = Rating::with('product:id,pro_name,pro_slug', 'user:id,name');
        if ($request->s) {
            $ratings->where('r_number', $request->s);
        }
        $ratings = $ratings->orderByDesc('id')
            ->paginate(10);

        return view('admin.rating.index', compact('ratings'));
    }

    public function delete($id)
    {
        $rating = Rating::find(($id));
        if ($rating) {
            $product =  Product::find($rating->r_product_id);
            $product->pro_review_total--;
            $product->pro_review_star -= $rating->r_number;
            $product->save();
            $rating->delete();
        }

        return redirect()->back()->with('success', 'Xóa thành công');
    }
}
