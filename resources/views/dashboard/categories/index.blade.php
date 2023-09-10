@extends('dashboard.layouts.main')
@section('container')


    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Post Category</h1>
    </div>

    <div class="d-flex justify-content-end my-2">
        <a href="/dashboard/categories/create" class="btn btn-secondary">Create Category</a>
    </div>

    <div>
        @if(Session::has('message'))
        <div class="alert text-center {{ Session::get('alert-class') }} alert-dismissible fade show" role="alert">
          {{ Session::get('message') }}
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif
    </div>
   
    <div class="table-responsive">
        <table class="table table-striped table-sm">
           
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Category Name</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($category as $item)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $item->title }}</td>
                        <td>
                            <a href="/dashboard/categories/{{ $item->slug }}" class="btn btn-primary">Show</a>

                            <a href="/dashboard/categories/{{ $item->slug }}/edit" class="btn btn-success">Edit</a>

                            <form action="/dashboard/categories/{{ $item->slug }}" method="post" class="d-inline">
                                @method('delete')
                                @csrf
                                <button class="btn btn-danger" onclick="return confirm('Anda Yakin ingin menghapus {{ $item->title }}??')">Delete</button>
                            </form>
                        </td>
                    </tr>       
                    @endforeach
                </tbody>
        </table>
      </div>
    
    
@endsection