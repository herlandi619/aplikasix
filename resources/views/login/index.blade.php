@extends('layouts.main')
@section('container')

<div class="bg-secondary pt-5">

    <main class="form-signin pt-5">
      <div>
          @if(Session::has('message'))
          <div class="alert text-center {{ Session::get('alert-class') }} alert-dismissible fade show" role="alert">
            {{ Session::get('message') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
          @endif
      </div>

      <div>
        @if(session()->has('gagal'))
          <div class="alert alert-danger alert-dismissible fade show text-center" role="alert">
          {{ session('gagal') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
        @endif
      </div>

      {{-- error --}}
      <div>
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
    

        <form action="/login" method="post">
          @csrf
          <h1 class="h3 mb-3 fw-normal text-white text-center">Login Form</h1>
      
          <div class="form-floating">
            <input type="email" name="email" class="form-control" id="floatingInput" placeholder="name@example.com" required autofocus value="{{ old('email') }}">
            <label for="floatingInput">Email address</label>
          </div>
          <div class="form-floating">
            <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password" required>
            <label for="floatingPassword">Password</label>
          </div>
          <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
        </form>
        <div class="mt-5 text-center">
            <small class="my-3 text-white">Belum Memiliki Akun?? <a href="/register" class=" text-dark">daftar disini.</a></small>
            
        </div>
      </main>
</div>
<div class="bg-secondary p-5"></div>
<div class="bg-secondary p-5"></div>
<div class="bg-secondary p-5"></div>
    
@endsection