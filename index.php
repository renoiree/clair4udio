<?php
// Include konfigurasi database
require_once 'config/database.php';

// Ambil data produk dari database
$products = getAllProducts();
?>

<?php include 'includes/header.php'; ?>

<!-- Hero Section -->
<section class="hero" id="home">
    <div class="container">
        <h1>Tempat Per-Audio-an Terbaik</h1>
        <p>Temukan berbagai macam In-Ear Monitor & Digital Audio Converter Terbaik. <br>Orang Awam Hingga Audiophile dapat merasakan kenikmatannya.</br></p>
        <a href="#products" class="btn">Lihat Produk</a>
    </div>
</section>

<!-- Products Section -->
<section class="products" id="products">
    <div class="container">
        <h2 class="section-title">In-Ear Monitor</h2>
        <div class="product-grid">
            <?php if (!empty($products)): ?>
                <?php foreach ($products as $product): ?>
                    <div class="product-card">
                        <?php
                        $image_url = $product['image_url'];
                        $full_path = $_SERVER['DOCUMENT_ROOT'] . '/beatsID/' . $image_url;
                        ?>
                        <img src="<?php echo htmlspecialchars($image_url); ?>" 
                            alt="<?php echo htmlspecialchars($product['name']); ?>" 
                            class="product-image"
                            onerror="this.onerror=null; this.src='https://via.placeholder.com/300x200/cccccc/333333?text=Image+Error'">
                        <div class="product-info">
                            <h3 class="product-name"><?php echo htmlspecialchars($product['name']); ?></h3>
                            <p class="product-price">Rp <?php echo number_format($product['price'], 0, ',', '.'); ?></p>
                            <p class="product-description"><?php echo htmlspecialchars($product['description']); ?></p>
                            <a href="<?php echo htmlspecialchars($product['shopee_url']); ?>" 
                            target="_blank" 
                            class="btn btn-shopee">Beli di Shopee</a>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <p>Tidak ada produk yang tersedia saat ini.</p>
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
                <p>Kami adalah toko spesialis perangkat audio yang berdedikasi untuk menyediakan perangkat audio berkualitas tinggi bagi para musisi, sound engineer, dan audiophile.</p>
                <p>Dengan pengalaman & pengetahuan tentang per-audio-an, kami memahami kebutuhan akan kualitas suara yang jernih, detail, dan akurat.</p>
                <p>Semua produk kami melalui proses quality control yang ketat untuk memastikan kepuasan pelanggan.</p>
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
                    <li>📧 info@clair4udio.com</li>
                    <li>📞 +62 812 3456 789</li>
                    <li>📍 Jl. Audio No. 123, Jakarta</li>
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


<?php include 'includes/footer.php'; ?>