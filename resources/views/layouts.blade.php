<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WanderSphere Travel Blog</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="icon" type="image/svg+xml" href="../../images/favicon.svg">
    @stack('main-style')
    @stack('hero-section')
    @stack('single-blog')
    <style>
        .page-link:focus{
            box-shadow: none !important;
        }
    </style>
</head>
<body>
    <!-- Hero Section -->
    <section class="hero-section">
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="{{ route('home') }}">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{ route('category.africa', 3) }}">Africa</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{ route('category.asia', 1) }}">Asia</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{ route('category.america', 4) }}">Americas</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{ route('category.europe', 2) }}">Europe</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{ route('about') }}">About Us</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Hero Content --> 
        @yield('hero-content')
        
    </section>

    <!-- Info Section -->
    @yield('info-section')

    <!-- Blog Section -->
    @yield('blog-section')

    {{-- about section --}}
    @yield('about-us')

    <!-- Footer Section -->

   <footer class="footer">
    <div class="container">
        <div class="footer-content">
            <div class="row">
                <!-- Logo & Description -->
                <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
                    <div class="footer-logo">
                        <h3><img src="/images/favicon.svg" width="40" alt=""> WanderSphere</h3>
                    </div>
                    <p class="footer-description">
                        Sharing travel experiences, hidden gems, and iconic places.
                        Because every journey has a story.
                    </p>
                </div>

                <!-- Categories -->
                <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
                    <h4 class="footer-heading">Categories</h4>
                    <ul class="footer-list">
                        <li>
                            <a href="{{ route('category.africa', 3) }}">Africa</a>
                        </li>
                        <li>
                            <a href="{{ route('category.asia', 1) }}">Asia</a>
                        </li>
                        <li>
                            <a href="{{ route('category.europe', 2) }}">Europe</a>
                        </li>
                        <li>
                            <a href="{{ route('category.america', 4) }}">America</a>
                        </li>
                        <li>
                            <a href="{{ route('category.wildlife', 5) }}">Wildlife & Nature</a>
                        </li>
                        <li>
                            <a href="{{ route('category.historical', 6) }}">Historical Places</a>
                        </li>
                        <li>
                            <a href="{{ route('category.adventure', 7) }}">Adventure</a>
                        </li>
                    </ul>
                </div>

                <!-- Recent Posts -->
                <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
                    <h4 class="footer-heading">Recent Posts</h4>
                    <ul class="footer-list">
                        @foreach ($recent_blogs as $blog)
                        <li><a href="{{ route('blogs.show', $blog->id) }}">{{ $blog->title }}</a></li>
                        @endforeach
                    </ul>
                </div>

                <!-- Gallery -->
                <div class="col-lg-3 col-md-6">
                    <h4 class="footer-heading">Gallery</h4>
                    <div class="footer-gallery">
                        <div class="gallery-item">
                            <img src="https://images.unsplash.com/photo-1516426122078-c23e76319801?w=150&h=150&fit=crop" alt="Gallery 1">
                        </div>
                        <div class="gallery-item">
                            <img src="https://images.unsplash.com/photo-1512470876302-972faa2aa9a4?w=150&h=150&fit=crop" alt="Gallery 2">
                        </div>
                        <div class="gallery-item">
                            <img src="https://images.unsplash.com/photo-1501594907352-04cda38ebc29?w=150&h=150&fit=crop" alt="Gallery 3">
                        </div>
                        <div class="gallery-item">
                            <img src="https://images.unsplash.com/photo-1635269506785-df52ac6e61ab?w=150&h=150&fit=crop" alt="Gallery 4">
                        </div>
                        <div class="gallery-item">
                            <img src="https://images.unsplash.com/photo-1439725434120-c1b50e0cc329?w=150&h=150&fit=crop" alt="Gallery 5">
                        </div>
                        <div class="gallery-item">
                            <img src="https://images.unsplash.com/photo-1483729558449-99ef09a8c325?w=150&h=150&fit=crop" alt="Gallery 6">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Bottom -->
    <div class="footer-bottom">
        <div class="container">
            <div class="footer-bottom-content">
                <div class="copyright">
                    Copyright © 2025 <a href="#">WanderSphere Travel Blog</a>
                </div>
                <div class="powered-by">
                    Powered by <a href="#">WanderSphere Travel Blog</a>
                </div>
            </div>
        </div>
    </div>
</footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>