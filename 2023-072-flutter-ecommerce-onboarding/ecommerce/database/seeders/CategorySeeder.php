<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    public function run(): void
    {
        $data = json_decode(file_get_contents(database_path("seeders/seeds/categories.json")), true);
        Category::insert($data);
    }
}
