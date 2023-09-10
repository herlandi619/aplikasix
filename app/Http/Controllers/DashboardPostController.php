<?php

namespace App\Http\Controllers;
use App\Models\Post;

use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Facades\Storage;

class DashboardPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        $posts = Post::where('user_id', auth()->user()->id)->get();
        return view('dashboard.posts.index', [
            'posts' => $posts
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {   
    
        $categories = Category::all();
        return view('dashboard.posts.create',[
            'categories' => $categories
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   

        $validated = $request->validate([
            'title' => 'required|max:255',
            'slug' => 'required|unique:posts',
            'category_id' => 'required',
            'image' => 'image|file|max:3024',
            'body' => 'required'
        ]);

        if($request->file('image'))
        {
            $validated['image'] = $request->file('image')->store('post-images');
        }

        $validated['user_id'] = auth()->user()->id;
        $validated['excerpt'] = Str::limit(strip_tags($request->body), 30);

        Post::create($validated);

        Session::flash('message', 'Data Berhasil disimpan.'); 
        Session::flash('alert-class', 'alert-success'); 

        return redirect('/dashboard/posts');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        return view('dashboard.posts.show',[
            'post' => $post
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {   
        $categories = Category::all();
        return view('dashboard.posts.edit',[
            'post' => $post,
            'categories' => $categories
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        $rules = [
            'title' => 'required|max:255',
            'category_id' => 'required',
            'image' => 'image|file|max:3024',
            'body' => 'required'
        ];

        if($request->slug != $post->slug)
        {
            $rules['slug'] = 'required|unique:posts';
        } 

        $validated = $request->validate($rules);

        if($request->file('image'))
        {   
            if($request->file('image'))
            {
                if($request->oldImage){
                    storage::delete($request->oldImage);
                }
                $validated['image'] = $request->file('image')->store('post-images');
            }
        }

        $validated['user_id'] = auth()->user()->id;
        $validated['excerpt'] = Str::limit(strip_tags($request->body), 30);

        Post::where('id', $post->id)->update($validated);

        Session::flash('message', 'Data Berhasil diubah.'); 
        Session::flash('alert-class', 'alert-success'); 

        return redirect('/dashboard/posts');


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {   
        if($post->image){
            storage::delete($post->image);
        }
        Post::destroy($post->id);
       
        Session::flash('message', 'Data Berhasil dihapus..'); 
        Session::flash('alert-class', 'alert-success'); 

        return redirect('/dashboard/posts');
    }

    public function checkSlug(Request $request)
    {   
       
        $slug = SlugService::createSlug(Post::class, 'slug', $request->title);
        return response()->json(['slug' => $slug]);
    }
}


