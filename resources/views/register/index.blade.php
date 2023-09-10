@extends('layouts.main')
@section('title','Register')
@section('container')

<div class="bg-secondary pt-5">
    <main class="form-signin pt-4">

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

      

        <form method="post" action="/register">
          @csrf
          <h1 class="h3 mb-4 fw-normal text-white text-center">Register Form</h1>
      
          <div class="form-floating">
            <input type="text" name="name" class="form-control" id="floatingInput" placeholder="name.." required value="{{ old('name') }}">
            <label for="floatingInput">Name</label>
            @error('name')
              <div class="invalid-feedback">
                {{ $message }}
              </div>
            @enderror
          </div>
          <div class="form-floating">
            <input type="text" name="username" class="form-control" id="floatingInput" placeholder="username.." required value="{{ old('name') }}">
            <label for="floatingInput">Username</label>
          </div>
          <div class="form-floating">
            <input type="email" name="email" class="form-control" id="floatingInput" placeholder="name@example.com" required value="{{ old('email') }}">
            <label for="floatingInput">Email</label>
          </div>
          <div class="form-floating">
            <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password" required>
            <label for="floatingPassword">Password</label>
          </div>
          <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">Register</button>
        </form>


        <div class="mt-5 text-center">
            <small class="my-3 text-white">Sudah Punya Akun ?? <a href="/login" class=" text-dark"> Masuk Ke Login.</a></small>
            
        </div>
      </main>
</div>
<div class="bg-secondary p-5"></div>
<div class="bg-secondary p-5"></div>

    
@endsection