<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $category = $request->query('category');

        if ($category) {
            return Category::where('code', $category)->firstOrFail()->products;
        }

        return Product::paginate(10);
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => ['required'],
            'title' => ['required'],
            'description' => ['required'],
            'image' => ['required'],
        ]);

        return Product::create($data);
    }

    public function show(Product $product)
    {
        return $product;
    }

    public function update(Request $request, Product $product)
    {
        $request->validate([
            'name' => ['required'],
            'title' => ['required'],
            'description' => ['required'],
            'image' => ['required'],
        ]);

        $product->update($request->validated());

        return $product;
    }

    public function destroy(Product $product)
    {
        $product->delete();

        return response()->json();
    }
}
