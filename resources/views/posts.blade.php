@extends('layouts.main')
@section('title','Blog')
@section('container')
    
    <div class="bg-secondary">
        <div class="container">
            <div class="text-center pt-5 pb-3">
                <h1 class="text-white">{{ $title }}</h1>       
            </div>

            <div class="row justify-content-center mb-3">
                <div class="col-md-6">
                    <form action="/posts">
                        @if (request('category'))
                            <input type="hidden" name="category" value="{{ request('category') }}">
                        @endif
                        @if (request('author'))
                            <input type="hidden" name="author" value="{{ request('author') }}">
                        @endif

                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Masukan Keyword .." name="search" value="{{ request('search') }}" autofocus>
                            <button class="btn btn-dark" type="submit">Cari</button>
                        </div>
                    </form>
                </div>
            </div>
    
            @if($posts->count())
                <div class="card mb-3 text-center shadow-sm">

                    @if ($posts[0]->image)
                        <div style="max-height: 350px; overflow:hidden;">
                            <img src="{{ asset('storage/' . $posts[0]->image) }}" class="img-fluid" alt="...">
                        </div>
                    @else
                        <img src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->title }}" class="card-img-top" alt="...">
                    @endif

                   
                    
                    <div class="card-body">
                      <h5 class="card-title"><a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none text-dark">{{ $posts[0]->title }}</a></h5>
                      <p class="">By . <a href="/posts?author={{ $posts[0]->author->username }}" class="text-decoration-none">{{ $posts[0]->author->name }}</a> in <a href="/posts?category={{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->title }}</a> {{ $posts[0]->created_at->diffForHumans() }}</p>

                      <p class="card-text">{{ $posts[0]->excerpt }}</p>

                      <div class="d-flex justify-content-center">
                        <a href="/posts/{{ $posts[0]->slug }}"><p class="btn btn-dark">Read Me</p></a>
                    </div>
                    
                    </div>
                  </div>
        
                <div class="container mt-5">
                    <div class="row">
                        @foreach ($posts->skip(1) as $post)
                        <div class="col-md-4 mb-4">
                            <div class="card shadow-sm">
                                <div class="position-absolute  px-3 py-2 text-white" style="background-color: rgba(0,0,0,0.7)"><a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none text-white">{{ $post->category->title }}</a></div>

                                @if ($post->image) 
                                        <img src="{{ asset('storage/' . $post->image) }}" class="img-fluid" alt="...">
                                @else
                                    <img src="https://source.unsplash.com/500x400?{{ $post->category->title }}" class="card-img-top" alt="...">
                                @endif

                                <div class="card-body">
        
                                <h5><a href="/posts/{{ $post->slug }}" class="text-decoration-none text-dark">{{ $post->title }}</a></h5>
        
                                <p class="">By . <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> {{ $post->created_at->diffForHumans() }}</p>
        
                                <p class="card-text">{{ $post->excerpt }}</p>
        
                                <p class="d-flex justify-content-center"><a href="/posts/{{ $post->slug }}" class="btn btn-dark">Read Me</a></p>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>

            @else 
                <p class="text-center fs-4">Posts Tidak Ditemukan!!</p>
            @endif

            <div class="d-flex justify-content-center py-5">
                {{ $posts->links() }}
            </div>
        </div>    
    </div>  
    
   

@endsection