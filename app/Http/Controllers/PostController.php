<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $title = '';
        if(request('category')){
            $category = Category::firstWhere('slug' , request('category'));
            $title = 'in ' . $category->title;
        }

        if(request('author')){
            $author = User::firstWhere('username', request('author'));
            $title = 'by ' . $author->name;
        }

        return view('posts', [
            "title" => "All Post " . $title,
            "active" => 'Posts',
            "posts" => Post::latest()->filter(request(['search', 'category' , 'author']))->paginate(7)->withQueryString()
        ]);
    }

    public function show(Post $post)
    {
        return view('post', [
            'title' => 'Posts',
            'post' => $post,
            "active" => 'Posts'
            
        ]);
    }
}
