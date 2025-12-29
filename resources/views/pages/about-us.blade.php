@extends('layouts')

@push('main-style')
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/about.css">
@endpush

@push('hero-section')
    <style>
        /* Hero Section */
.hero-section {
    position: relative;
    height: 80vh;
    background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.5)), 
                url('https://images.unsplash.com/photo-1539635278303-d4002c07eae3?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') center/cover no-repeat;
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
    <h1 class="hero-title">About Us</h1>
    <p class="hero-subtitle">Discover destinations, cultures, and travel stories that inspire your next journey.</p>
    </div>
</div>
@endsection



@section('about-us')
 <!-- About Content -->
 <section class="about-content">
    <div class="container">
        <p class="about-text">
            WanderSphere is a global travel blog featuring destination guides, travel tips, cultural insights, and inspiring stories from around the world. From famous landmarks and natural wonders to hidden travel destinations, we help travelers plan smarter trips and discover new experiences.        </p>
        <!-- Author 1 -->
        <div class="author-section">
            <div class="author-card">
                <div class="row g-0">
                    <div class="col-md-6">
                        <img src="images/harshed.jpeg" alt="Mr. Harshed" class="author-image">
                    </div>
                    <div class="col-md-6">
                        <div class="author-info">
                            <p class="author-label">Meet our co-author</p>
                            <h2 class="author-name">Mr. Harshed</h2>
                            <p class="author-title">Photographer, Wanderer, Blogger</p>
                            <p class="author-bio">
                                A passionate travel writer who documents real-world journeys, local cultures, and hidden destinations. Focused on practical travel tips, authentic experiences, and inspiring readers to explore beyond the usual routes.                            </p>
                            <a href="{{ route('authors.show', 1) }}" class="btn-view-posts">View all posts</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Author 2 -->
        <div class="author-section alternate">
            <div class="author-card">
                <div class="row g-0">
                    <div class="col-md-6">
                        <img src="images/willian.jpg" alt="Willian" class="author-image">
                    </div>
                    <div class="col-md-6">
                        <div class="author-info">
                            <p class="author-label">Meet our co-author</p>
                            <h2 class="author-name">Willian</h2>
                            <p class="author-title">Designer, Wanderer, Blogger</p>
                            <p class="author-bio">
                                An explorer at heart, sharing stories about travel, food, and culture from different regions. Writes experience-based content to help travelers plan smarter trips and understand destinations more deeply.                            </p>
                            <a href="{{ route('authors.show', 3) }}" class="btn-view-posts">View all posts</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Bottom Section -->
<section class="bottom-content">
    <div class="container">
        <p class="bottom-text">
            Through our content, we aim to motivate travelers to explore responsibly, experience new cultures, and create unforgettable memories wherever their journey leads.
        </p>

        <!-- Social Links -->
        <div class="social-links">
            <a href="#" class="facebook">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a href="#" class="twitter">
                <i class="fab fa-twitter"></i>
            </a>
            <a href="#" class="instagram">
                <i class="fab fa-instagram"></i>
            </a>
            <a href="#" class="youtube">
                <i class="fab fa-youtube"></i>
            </a>
        </div>
    </div>
</section>

<script>
    // Navbar scroll effect
    window.addEventListener('scroll', function() {
        const navbar = document.querySelector('.navbar');
        if (window.scrollY > 50) {
            navbar.style.background = 'rgba(0, 0, 0, 0.95)';
        } else {
            navbar.style.background = 'rgba(0, 0, 0, 0.8)';
        }
    });

    // Smooth scroll for navigation links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });
</script>
@endsection