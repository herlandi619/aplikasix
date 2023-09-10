@extends('dashboard.layouts.main')
@section('container')



<div>
    <div class="container">
        <div class="row">
            <div class="col-md-10 pb-5"> 
                    <div class="mt-5">
                        <h5 class=" fs-2 mb-3 border-bottom">{{ $post->title }}</h5>

                        <div class=" d-flex justify-content-end gap-1">
                            <a href="/dashboard/posts" class="btn btn-dark">Back</a>
                            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-success">Edit</a>
                            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                                @method('delete')
                                @csrf
                                <button class="btn btn-danger" onclick="return confirm('Anda Yakin ingin menghapus {{ $post->title }}??')">Delete</button>
                            </form>
                        </div>

                        <p>By. <a href="/posts?author={{ $post->author->username }}" class=" ">{{ $post->author->name }}</a> in <a href="/posts?category={{ $post->category->slug }}" class=" ">{{ $post->category->title }}</a></p>

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
            </div>
        </div>
    </div>
</div>
@endsection