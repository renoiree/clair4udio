<?php
// Include konfigurasi database
require_once 'config/database.php';

// Ambil data produk dari database dengan kategori
$products = getAllProducts();
?>

<?php include 'includes/header.php'; ?>

<!-- Hero Section -->
<section class="hero" id="home">
    <div class="container">
        <h1>Tempat Perangkat Audio Terbaik</h1>
        <p>Temukan Berbagai Macam Perangkat Audio Terbaik. 
        <br>Orang Awam Hingga Audiophile Dapat Merasakan Kenikmatannya.</br></p>
        <a href="#products" class="btn">Lihat Produk</a>
    </div>
</section>

<!-- Category Filter Section -->
<section class="category-filter-section">
    <div class="container">
        <h2 class="section-title text-center mb-4">Produk Audio Kami</h2>
        <div class="category-filter text-center mb-5">
            <button class="btn btn-outline-dark mx-2 mb-2 cat-btn active" data-category="all">Semua Produk</button>
            <button class="btn btn-outline-dark mx-2 mb-2 cat-btn" data-category="IEM">IEM</button>
            <button class="btn btn-outline-dark mx-2 mb-2 cat-btn" data-category="DAC">DAC</button>
            <button class="btn btn-outline-dark mx-2 mb-2 cat-btn" data-category="Headphone">Headphone</button>
            <button class="btn btn-outline-dark mx-2 mb-2 cat-btn" data-category="Amplifier">Amplifier</button>
        </div>
    </div>
</section>

<!-- Products Section -->
<section class="products" id="products">
    <div class="container">
        <h2 class="section-title text-center">Katalog Produk</h2>
        <div class="product-grid" id="product-container">
            <?php 
            if (!empty($products)):
                foreach($products as $product):
                    // Determine badge color based on category
                    $badge_class = "badge-secondary";
                    switch($product['category']) {
                        case 'IEM': $badge_class = "badge-primary"; break;
                        case 'DAC': $badge_class = "badge-success"; break;
                        case 'Headphone': $badge_class = "badge-warning"; break;
                        case 'Amplifier': $badge_class = "badge-danger"; break;
                        default: $badge_class = "badge-secondary";
                    }
            ?>
            <div class="product-card product-item" data-category="<?php echo htmlspecialchars($product['category'] ?? 'Other'); ?>">
                <!-- Category Badge -->
                <span class="category-badge <?php echo $badge_class; ?>">
                    <?php echo htmlspecialchars($product['category'] ?? 'Other'); ?>
                </span>
                
                <?php
                $image_url = $product['image_url'];
                ?>
                <img src="<?php echo htmlspecialchars($image_url); ?>" 
                    alt="<?php echo htmlspecialchars($product['name']); ?>" 
                    class="product-image"
                    onerror="this.onerror=null; this.src='https://via.placeholder.com/300x200/cccccc/333333?text=Image+Error'">
                <div class="product-info">
                    <h3 class="product-name"><?php echo htmlspecialchars($product['name']); ?></h3>
                    <p class="product-price">Rp <?php echo number_format($product['price'], 0, ',', '.'); ?></p>
                    <p class="product-description"><?php echo htmlspecialchars($product['description']); ?></p>
                    
                    <!-- E-commerce Buttons -->
                    <div class="ecommerce-buttons">
                        <?php if(!empty($product['shopee_url'])): ?>
                        <a href="<?php echo htmlspecialchars($product['shopee_url']); ?>" 
                           target="_blank" 
                           class="btn btn-shopee btn-ecom" title="Beli di Shopee">
                           <i class="fas fa-shopping-cart"></i> Shopee
                        </a>
                        <?php endif; ?>
                        
                        <?php if(!empty($product['tokopedia_url'])): ?>
                        <a href="<?php echo htmlspecialchars($product['tokopedia_url']); ?>" 
                           target="_blank" 
                           class="btn btn-tokped btn-ecom" title="Beli di Tokopedia">
                           <i class="fas fa-store"></i> Tokopedia
                        </a>
                        <?php endif; ?>
                        
                        <?php if(!empty($product['tiktok_url'])): ?>
                        <a href="<?php echo htmlspecialchars($product['tiktok_url']); ?>" 
                           target="_blank" 
                           class="btn btn-tiktok btn-ecom" title="Beli di TikTok Shop">
                           <i class="fab fa-tiktok"></i> TikTok
                        </a>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            <?php 
                endforeach;
            else: 
            ?>
                <p class="text-center w-100">Tidak ada produk yang tersedia saat ini.</p>
            <?php endif; ?>
        </div>
    </div>
</section>

<!-- About Section -->
<section class="about" id="about">
    <div class="container">
        <div class="about-content">
            <div class="about-text">
                <h2>Tentang clair4UDIO</h2>
                <p>Kami adalah toko spesialis perangkat audio yang berdedikasi untuk menyediakan perangkat audio berkualitas.</p>
                <p>Dengan pengalaman & pengetahuan tentang per-audio-an, kami memahami kebutuhan akan kualitas suara yang jernih, detail, dan akurat.</p>
                <p>Semua produk melalui proses quality control yang ketat untuk memastikan kepuasan pelanggan.</p>
            </div>
            
        </div>
    </div>
</section>

<!-- Contact Section -->
<section class="contact" id="contact">
    <div class="container">
        <h2 class="section-title">Hubungi Kami</h2>
        <div class="contact-content">
            <div class="contact-info">
                <h3>Informasi Kontak</h3>
                <ul class="contact-details">
                    <li>📧 clair4udio@gmail.com</li>
                    <li>📞 +62 877 8633 1248</li>
                    <li>📍 Jl. Cikunir Raya Jl. H. Abas, RT.001/RW.002,<br>Jakamulya, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17146</li>
                    <li>🕒 Senin - Jumat: 09:00 - 17:00</li>
                </ul>
            </div>
            <div class="contact-form">
                <form id="contactForm">
                    <div class="form-group">
                        <input type="text" name="name" placeholder="Nama Lengkap" required>
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" placeholder="Email" required>
                    </div>
                    <div class="form-group">
                        <textarea name="message" placeholder="Pesan Anda" rows="5" required></textarea>
                    </div>
                    <button type="submit" class="btn">Kirim Pesan</button>
                </form>
            </div>
        </div>
    </div>
</section>

<script src="js/script.js"></script>
<?php include 'includes/footer.php'; ?>