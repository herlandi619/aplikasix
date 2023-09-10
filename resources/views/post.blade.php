@extends('layouts.main')
@section('container')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">

    <div class="bg-secondary">
        <div class="container">
            <div class="row justify-content-center text-white">
                <div class="col-md-8"> 
                        <div class="mt-5">
                            <h5 class="text-center fs-2 mb-3">{{ $post->title }}</h5>
                            <p>By. <a href="/posts?author={{ $post->author->username }}" class=" text-white">{{ $post->author->name }}</a> in <a href="/posts?category={{ $post->category->slug }}" class=" text-white">{{ $post->category->title }}</a></p>
                            
                            @if ($post->image)
                                <div style="max-height: 350px; overflow:hidden;">
                                    <img src="{{ asset('storage/' . $post->image) }}" class="img-fluid" alt="...">
                                </div>
                            @else
                                 <img src="https://source.unsplash.com/1200x400?{{ $post->category->title }}" class="img-fluid" alt="...">
                            @endif

                          
    
                            <article class="my-3 fs-6">
                                {!! $post->body  !!}
                            </article>
                        </div>
    
                        <div class="my-4 d-flex justify-content-end">
                            <a href="/posts" class="btn btn-dark">Kembali</a>
                        </div>
                    
             
                </div>
            </div>
        </div>
    </div>

   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
@endsection