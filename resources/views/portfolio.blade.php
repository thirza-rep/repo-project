<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portofolio - M. Thirza Salendra</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
    <style>
        body {
            font-family: 'Figtree', sans-serif;
        }

        .container {
            max-width: 900px;
        }

        .section-title {
            border-bottom: 2px solid #000;
            padding-bottom: 5px;
            margin-bottom: 15px;
        }

        .btn-custom {
            background-color: #343a40;
            color: white;
            border-radius: 20px;
            padding: 10px 20px;
        }

        .btn-custom:hover {
            background-color: #495057;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">M. Thirza Salendra</a>
        </div>
    </nav>

    <div class="container mt-5">
        <h1 class="text-center mb-4">Portofolio</h1>

        <section>
            <h2 class="section-title">Tentang Saya</h2>
            <p>Saya adalah seorang profesional di bidang jasa servis elektronik, khususnya <strong>smartphone, laptop,
                    dan komputer</strong>. Dengan pengalaman bertahun-tahun, saya telah membantu banyak pelanggan
                memperbaiki perangkat mereka dengan solusi berkualitas.</p>
        </section>

        <section>
            <h2 class="section-title">Keahlian</h2>
            <ul>
                <li>Servis dan perbaikan hardware</li>
                <li>Instalasi dan optimasi sistem operasi</li>
                <li>Perbaikan software dan troubleshooting</li>
                <li>Upgrade perangkat keras</li>
                <li>Data recovery dan backup</li>
            </ul>
        </section>

        <section>
            <h2 class="section-title">Pengalaman</h2>
            <h3>Teknisi Servis Independen (2018 - Sekarang)</h3>
            <p>Melayani perbaikan berbagai merek dan jenis perangkat, dari kerusakan ringan hingga berat.</p>
        </section>

        <section>
            <h2 class="section-title">Proyek Terbaru</h2>
            <ul>
                <li><strong>Penggantian Layar Laptop MacBook Pro 2021</strong> - Mengganti layar yang retak dengan layar
                    original.</li>
                <li><strong>Upgrade PC Gaming High-End</strong> - Peningkatan RAM dan pemasangan SSD NVMe.</li>
                <li><strong>Pemulihan Data dari Hard Drive Rusak</strong> - Berhasil mengembalikan data dari HDD bad
                    sector.</li>
            </ul>
        </section>

        <section>
            <h2 class="section-title">Testimoni Klien</h2>
            <blockquote>"Pelayanan cepat dan hasil servis sangat memuaskan! Laptop saya kembali seperti baru." -
                <strong>Andi S.</strong></blockquote>
            <blockquote>"Sangat profesional dan komunikatif dalam menjelaskan permasalahan perangkat saya." -
                <strong>Dina R.</strong></blockquote>
        </section>

        <section>
            <h2 class="section-title">Kontak</h2>
            <p>
                📍 Lokasi: [Kota/Daerah Anda] <br>
                📞 WhatsApp: [Nomor Anda] <br>
                📧 Email: [Email Anda] <br>
                🌐 Website: [Jika ada]
            </p>
        </section>
    </div>

    <div class="text-center mt-4">
        <a href="{{ route('home') }}" class="btn btn-custom">Kembali ke Home</a>
    </div>

    <footer class="bg-dark text-white text-center py-3 mt-5">
        &copy; 2025 M. Thirza Salendra. Semua Hak Dilindungi.
    </footer>
</body>

</html>