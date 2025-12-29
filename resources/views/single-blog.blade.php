@extends('layouts')


@push('main-style')
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/footer.css">
@endpush



@push('hero-section')
    <style>
        /* Hero Section */
.hero-section {
    position: relative;
    height: 80vh;
    background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.5)), 
                url({{$blog->featured_image.'?w=1920&h=1080&fit=crop'}}) center/cover no-repeat;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    color: white;
}
    </style>
@endpush

@section('hero-content')
    <div class="hero-content text-center">
    <h1 class="hero-title">{{ $blog->title }}</h1>
    </div>
</div>
@endsection

@push('single-blog')
<style>
  /* Blog Content Section */
  .blog-content-section {
            background: white;
            padding: 60px 0;
        }

        .blog-post-content {
            max-width: 800px;
            margin: 0 auto;
        }

        /* Featured Image */
        .featured-image {
            width: 100%;
            height: auto;
            margin-bottom: 30px;
            border-radius: 0;
        }

        /* Blog Text */
        .blog-text {
            font-size: 16px;
            line-height: 1.9;
            color: #666;
            margin-bottom: 25px;
            text-align: justify;
        }

        .blog-text:first-of-type {
            margin-top: 0;
        }

        /* Author Section */
        .author-section {
            background: #f9f9f9;
            padding: 60px 0;
        }

        .author-box {
            max-width: 800px;
            margin: 0 auto;
            background: white;
            padding: 40px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.05);
        }

        .author-title {
            font-size: 2rem;
            font-weight: 400;
            color: #333;
            margin-bottom: 40px;
            padding-bottom: 20px;
            border-bottom: 1px solid #eee;
        }

        .author-info {
            display: flex;
            gap: 30px;
            align-items: flex-start;
        }

        .author-avatar {
            flex-shrink: 0;
        }

        .author-avatar img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid #f0f0f0;
        }

        .author-details {
            flex: 1;
        }

        .author-name {
            font-size: 1.5rem;
            font-weight: 600;
            color: #333;
            margin-bottom: 15px;
        }

        .author-bio {
            font-size: 15px;
            line-height: 1.8;
            color: #666;
            margin: 0;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .blog-post-content,
            .author-box {
                padding: 20px;
            }

            .author-info {
                flex-direction: column;
                align-items: center;
                text-align: center;
            }

            .author-avatar img {
                width: 80px;
                height: 80px;
            }

            .author-title {
                font-size: 1.5rem;
            }

            .author-name {
                font-size: 1.2rem;
            }

            .blog-text {
                font-size: 15px;
            }
        }

        /* Container adjustments */
        .container-custom {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }
</style>    
@endpush


@section('blog-section')
  <!-- Blog Content Section -->
  <section class="blog-content-section">
    <div class="container-custom">
        <div class="blog-post-content">
                        <!-- Blog Content -->
                        <p class="blog-text">
                            {{ $blog->content_1 }}
                        </p>
        
            <!-- Featured Image -->
            <img src="{{ $blog->featured_image }}?w=800&h=400&fit=crop" 
                 alt="Desert Safari" 
                 class="featured-image">

                 <p class="blog-text">
                    {{ $blog->content_2 }}
                </p>

        </div>
    </div>
</section>

<!-- Author Section -->
<section class="author-section">
    <div class="container-custom">
        <div class="author-box">
            <h2 class="author-title">About The Author</h2>
            
            <div class="author-info">
                <div class="author-avatar">
                    <img src="../images/{{ $blog->author->photo }}" alt="harshadd">
                </div>
                
                <div class="author-details">
                    <a style="text-decoration: none;" href="{{ route('authors.show', $blog->author->id) }}"><h3 class="author-name">{{ $blog->author->name }}</h3></a>
                    <p class="author-bio">
                        {{ $blog->author->bio }}
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

