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
                url({{ $first_blog->featured_image.'?w=1920&h=1080&fit=crop'}}) center/cover no-repeat;
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
    <h1 class="hero-title">{{ $author->name }}</h1>
    <p class="hero-subtitle">{{ $author->bio }}</p>
    </div>
</div>
@endsection


@section('blog-section')
<section class="blog-section">
    <div class="container">
        <div class="row">
            <!-- Main Content -->
            <div class="col-lg-8">
                <!-- First Post (Full Width) -->
                
                <article class="blog-card">
                    <div class="date-badge">
                        <div class="month">{{ $first_blog->created_at->format('M') }}</div>
                        <div class="day">{{ $first_blog->created_at->format('d') }}</div>
                        <div class="year">{{ $first_blog->created_at->format('Y') }}</div>
                    </div>
                    <img src="{{ $first_blog->featured_image }}?w=800&h=400&fit=crop" alt="African Wildlife" class="blog-card-img">
                    <div class="blog-card-body">
                        <h3 class="blog-card-title">{{ $first_blog->title }}</h3>
                        <div class="blog-card-meta">
                            
                            <a href="#">{{ $first_blog->category }} </a>
                         
                        </div>
                        <p class="blog-card-text">
                            {{ Str::limit($first_blog->content_1, 150) }}
                        </p>
                        <a href="{{ route('blogs.show', $first_blog->id)}}" class="read-more">Read More »</a>
                    </div>
                </article>

                <!-- Two Column Layout -->
                <div class="blog-grid">
                    <!-- Post 2 -->
                    @if($author->blogs->count() > 0)

                    @foreach ($author->blogs as $blog)   
                    
                    @switch($first_blog) 
                        @case($first_blog->id == $blog->id)

                            @break
                    
                        @default
                            
                    <article class="blog-card">
                        <div class="date-badge">
                            <div class="month">{{ $blog->created_at->format('M') }}</div>
                            <div class="day">{{ $blog->created_at->format('d') }}</div>
                            <div class="year">{{ $blog->created_at->format('Y') }}</div>
                        </div>
                        <img src="{{ $blog->featured_image }}?w=400&h=300&fit=crop" alt="Pyramids" class="blog-card-img">
                        <div class="blog-card-body">
                            <h3 class="blog-card-title">{{ $blog->title }}</h3>
                            <div class="blog-card-meta">
                              
                                <a href="#">{{ $blog->category }} </a>
                             
                            </div>
                            <p class="blog-card-text">
                                {{ Str::limit($blog->content_1, 150) }}
                            </p>
                            <a href="{{ route('blogs.show', $blog->id)}}" class="read-more">Read More »</a>
                        </div>
                    </article>
                    @endswitch
                    @endforeach
                    @else
                    <p>No blogs found.</p>
                    @endif
                </div>

            </div>

            <!-- Sidebar -->
            <div class="col-lg-4">
                <!-- Search Widget -->
                <div class="sidebar-widget">
                    <div class="search-widget">
                        <input type="text" placeholder="Search...">
                        <button><i class="fas fa-search"></i></button>
                    </div>
                </div>

                <!-- Recent Posts Widget -->
                <div class="sidebar-widget">
                    <h3 class="widget-title">Recent Posts</h3>
                    <ul class="widget-list">
                        @foreach ($recent_blogs as $blog)
                        <li><a href="{{ route('blogs.show', $blog->id) }}">{{ $blog->title }}</a></li>
                        @endforeach
                    </ul>
                </div>

                <!-- Categories Widget -->
                <div class="sidebar-widget">
                    <h3 class="widget-title">Categories</h3>
                    <ul class="widget-list">
                        @foreach ($count_category as $category)
                        @switch($category->name)
                            @case('Africa')
                            <li><a href="{{ route("category.africa", $category->id) }}">{{ $category->name }} <span class="category-count">({{ $category->blog_count }})</span></a></li>
                                @break
                            @case('Asia')
                            <li><a href="{{ route("category.asia", $category->id) }}">{{ $category->name }} <span class="category-count">({{ $category->blog_count }})</span></a></li>
                            @break
                            @case('Europe')
                            <li><a href="{{ route("category.europe", $category->id) }}">{{ $category->name }} <span class="category-count">({{ $category->blog_count }})</span></a></li>
                            @break
                            @case('America')
                            <li><a href="{{ route("category.america", $category->id) }}">{{ $category->name }} <span class="category-count">({{ $category->blog_count }})</span></a></li>
                            @break
                            @case('Wildlife & Nature')
                            <li><a href="{{ route("category.wildlife", $category->id) }}">{{ $category->name }} <span class="category-count">({{ $category->blog_count }})</span></a></li>
                            @break
                            @case('Historical Places')
                            <li><a href="{{ route("category.historical", $category->id) }}">{{ $category->name }} <span class="category-count">({{ $category->blog_count }})</span></a></li>
                            @break
                            @case('Adventure')
                            <li><a href="{{ route("category.adventure", $category->id) }}">{{ $category->name }} <span class="category-count">({{ $category->blog_count }})</span></a></li>
                            @break
                            @default
                              <li><a href="#"></a></li>  
                        @endswitch
                        @endforeach   
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

