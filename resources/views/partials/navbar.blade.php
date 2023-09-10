<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
    <div class="container">
      <a class="navbar-brand" href="/"><i class="bi bi-android2 fw-1"></i></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link {{ $active === 'Home' ? 'active' : '' }}"  href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ $active === 'About' ? 'active' : '' }}" href="/about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ $active === 'Posts' ? 'active' : '' }}" href="/posts">Post</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ $active === 'Categories' ? 'active' : '' }}" href="/categories">Category</a>
          </li>
        </ul>

        <ul class="navbar-nav ms-auto">

          @auth
            <li class="nav-item">
              <a class="nav-link {{ $active === 'Dashboard' ? 'active' : '' }}" href="/dashboard"></i>My Dashboard, {{ Auth::user()->name }}</a>
            </li>
            <li class="nav-item">
              <form action="/logout" method="post">
                @csrf
                <button class="nav-link" type="submit"><i class="bi bi-box-arrow-in-right"></i> Logout</button>
              </form>
            </li>
          @else
            <li class="nav-item">
              <a class="nav-link {{ $active === 'Login' ? 'active' : '' }}" href="/login"><i class="bi bi-box-arrow-in-right"></i> Login</a>
            </li>
          @endauth  
        </ul>

      </div>
    </div>
  </nav>