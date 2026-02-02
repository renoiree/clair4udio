// Smooth scrolling untuk navigasi
document.addEventListener('DOMContentLoaded', function() {
    // Smooth scroll untuk link anchor
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href');
            if(targetId === '#') return;
            
            const targetElement = document.querySelector(targetId);
            if(targetElement) {
                window.scrollTo({
                    top: targetElement.offsetTop - 80,
                    behavior: 'smooth'
                });
            }
        });
    });
    
    // Animasi navbar saat scroll
    window.addEventListener('scroll', function() {
        const navbar = document.querySelector('header');
        if (window.scrollY > 50) {
            navbar.style.boxShadow = '0 2px 10px rgba(0, 0, 0, 0.15)';
        } else {
            navbar.style.boxShadow = '0 2px 10px rgba(0, 0, 0, 0.1)';
        }
    });
    
    // Animasi fade in untuk product cards
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };
    
    const observer = new IntersectionObserver(function(entries) {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
            }
        });
    }, observerOptions);
    
    // Terapkan animasi ke semua product cards
    document.querySelectorAll('.product-card').forEach(card => {
        card.style.opacity = '0';
        card.style.transform = 'translateY(20px)';
        card.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        observer.observe(card);
    });
    
    // Form submission handler
    const contactForm = document.getElementById('contactForm');
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Terima kasih! Pesan Anda telah dikirim. Kami akan menghubungi Anda segera.');
            contactForm.reset();
        });
    }
    
    // ====== CATEGORY FILTERING FUNCTIONALITY (NEW CODE) ======
    
    // Category Filtering
    const categoryButtons = document.querySelectorAll('.cat-btn');
    const productItems = document.querySelectorAll('.product-item');
    
    // Only run if category buttons exist (for backwards compatibility)
    if (categoryButtons.length > 0) {
        categoryButtons.forEach(button => {
            button.addEventListener('click', function() {
                // Remove active class from all buttons
                categoryButtons.forEach(btn => {
                    btn.classList.remove('active');
                    btn.classList.remove('btn-dark');
                    btn.classList.add('btn-outline-dark');
                });
                
                // Add active class to clicked button
                this.classList.add('active');
                this.classList.add('btn-dark');
                this.classList.remove('btn-outline-dark');
                
                const selectedCategory = this.getAttribute('data-category');
                
                // Filter products
                productItems.forEach(item => {
                    if (selectedCategory === 'all') {
                        item.style.display = 'block';
                        // Trigger animation
                        setTimeout(() => {
                            item.style.opacity = '1';
                            item.style.transform = 'translateY(0)';
                        }, 10);
                    } else if (item.getAttribute('data-category') === selectedCategory) {
                        item.style.display = 'block';
                        // Trigger animation
                        setTimeout(() => {
                            item.style.opacity = '1';
                            item.style.transform = 'translateY(0)';
                        }, 10);
                    } else {
                        item.style.display = 'none';
                    }
                });
                
                // Update product count display
                updateProductCount(selectedCategory);
            });
        });
        
        // Function to update product count
        function updateProductCount(category) {
            const visibleProducts = category === 'all' 
                ? productItems.length 
                : document.querySelectorAll(`.product-item[data-category="${category}"]`).length;
            
            // Optional: Update a counter element if you add one
            const counterElement = document.getElementById('product-count');
            if (counterElement) {
                counterElement.textContent = `${visibleProducts} produk ditemukan`;
            }
        }
        
        // Add CSS for fade animation for category filtering
        const style = document.createElement('style');
        style.textContent = `
            @keyframes fadeIn {
                from { opacity: 0; transform: translateY(10px); }
                to { opacity: 1; transform: translateY(0); }
            }
            .product-item {
                transition: opacity 0.3s ease, transform 0.3s ease;
            }
        `;
        document.head.appendChild(style);
        
        // Initialize product count
        updateProductCount('all');
    }
    
    // ====== END OF NEW CATEGORY FILTERING CODE ======
});