<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    public function index()
    {
        return response()->json(Post::paginate());
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'title' => 'required',
            'body' => 'required',
            'slug' => 'required|unique:posts',
        ]);

        $data['slug'] = str($data['slug'])->slug();

        $post = Post::create($data);

        return response()->json($post);
    }

    public function show(Post $post)
    {
        return response()->json($post);
    }

    public function update(Request $request, Post $post)
    {
        $data = $request->validate([
            'title' => 'required',
            'body' => 'required',
            'slug' => 'required|unique:posts,slug,' . $post->id,
        ]);

        if ($data['slug'] ?? false) {
            $data['slug'] = str($data['slug'])->slug();
        }

        $post->update($data);

        return response()->json($post);
    }

    public function destroy(Post $post)
    {
        $post->delete();

        return response()->json(null, 204);
    }
}
