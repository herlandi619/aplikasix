@extends('layouts.main')
@section('title','Blog')
@section('container')

    <div class="bg-secondary">

        <div class="container">
            <h3 class="text-center p-5 text-white">Category</h3>

            <div class="row justify-content-center">
                @foreach($categories as $category)
                <div class="col-md-4">
                    <a href="/posts?category={{ $category->slug }}">
                        <div class="card bg-dark text-white">
                            <img src="https://source.unsplash.com/500x500?{{ $category->title }}" class="card-img" alt="{{ $category->title }}">
                            <div class="card-img-overlay d-flex align-items-center p-0">
                            <h5 class="card-title flex-fill p-4 fs-3 text-center" style="background-color: rgba(0,0,0,0.7)">{{ $category->title }}</h5>
                            </div>
                        </div>
                    </a>
                </div>
                
                @endforeach
            </div>
            <div class="pb-5"></div>
            <div class="pb-5"></div>
            <div class="pb-4"></div>
        </div>
    </div>
@endsection