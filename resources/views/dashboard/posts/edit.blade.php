@extends('dashboard.layouts.main')
@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit New Post </h1>
</div>

<div class="d-flex justify-content-end">
    <a href="/dashboard/posts" class="btn btn-dark">Kembali</a>
</div>



<div class="row">
    <div class="col-md-6">
      <div class="">
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
      </div>
        <form method="post" action="/dashboard/posts/{{ $post->slug }}" class="mb-5" enctype="multipart/form-data">
            @method('put')
            @csrf
            <div class="mb-3">
              <label for="title" class="form-label">Title</label>
              <input type="text" class="form-control" id="title" name="title" placeholder="input your title.." value="{{ old('title', $post->title) }}" required autofocus >
            
            </div>
            <div class="mb-3">
              <label for="slug" class="form-label">Slug</label>
              <input type="text" class="form-control" id='slug' name="slug" placeholder="input your slug.." value="{{ old('slug', $post->slug) }}" required>
             
            </div>
            <div class="mb-3">
              <label for="category" class="form-label">Category</label>
              <select class="form-select" name="category_id">
                <option selected>Open this select menu</option>
                @foreach ($categories as $item)   
                @if (old('category_id', $post->category_id) == $item->id)
                <option value="{{ $item->id }}" selected>{{ $item->title }}</option>
                @else
                <option value="{{ $item->id }}">{{ $item->title }}</option>
                @endif
                @endforeach
              </select>
            </div>

            <div class="mb-3">
              <label for="image" class="form-label d-block">Image</label>
              <input type="hidden" name="oldImage" value="{{ $post->image }}">
              @if ($post->image)
                <img src="{{ asset('storage/' . $post->image) }}" class="img-preview img-fluid col-sm-5 mb-3"> 
              @else
                <img class="img-preview img-fluid col-sm-5 mb-3">     
              @endif
             
              <input class="form-control" type="file" id="image" name="image" onchange="previewImage()">
            </div>

            <div class="mb-3">
                <label for="body" class="form-label d-block">Body</label>
                <textarea name="body" id="body" cols="84" rows="7" placeholder="input your body..">{{ old('body', $post->body) }}</textarea>
              </div>
            
            <button type="submit" class="btn btn-secondary">Edit Post</button>
        </form>
    </div>
</div>

<script>
    const title = document.querySelector('#title');
    const slug = document.querySelector('#slug');

    title.addEventListener('change', function() {
        fetch('/dashboard/posts/checkSlug?title=' + title.value)
        .then(response => response.json())
        .then(data => slug.value = data.slug)
    });

    function previewImage()
    {
      const image = document.querySelector('#image');
      const imgPreview = document.querySelector('.img-preview');

      imgPreview.style.display = 'block';

      const oFReader = new FileReader();
      oFReader.readAsDataURL(image.files[0]);

      oFReader.onload = function(oFREvent){
        imgPreview.src = oFREvent.target.result;
      }
    }

</script>
@endsection