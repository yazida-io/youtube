<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    public function run(): void
    {
        $data = json_decode(file_get_contents(database_path('seeders/seeds/products.json')), true);
        collect($data)->each(function (array $products, string $category) {
            $categoryId = Category::where('code', $category)->firstOrFail()->id;
            collect($products)->each(function (array $product) use ($categoryId) {
                Product::create(
                    array_merge(
                        $product,
                        ['category_id' => $categoryId, 'code' => uniqid()]
                    )
                );
            });
        });
    }
}
