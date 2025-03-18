<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Jasa Servis</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
    <style>
        .logo {
            position: absolute;
            top: 20px;
            right: 20px;
            width: 125px;
            /* Sesuaikan ukuran */
            height: auto;
        }

        .box {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .box img {
            width: 20%;
            height: 20%;
        }
    </style>
</head>

<body>
    <div class="container mt-5 text-center">
        <h2>Selamat Datang di <strong>Apinext&Co</strong></h2>
        <div class="box" alt="Logo1">
            <p mx-auto my-auto>
                <span class="text-primary">Apinext&Co</span>
                <span class="text-muted">Jasa Servis</span>
            </p>
            <img src="{{ asset('images/image2.png') }}">
        </div>
        <i>Kami melayani servis smartphone, laptop, dan komputer dengan profesional.</i>
        <div>
            <!-- Tombol Menuju Portfolio -->
            <a href="{{ route('portfolio') }}" class="btn btn-primary mt-3">Lihat Portfolio</a>
        </div>
    </div>
    <!-- Gambar di pojok kanan atas -->
    <img src="{{ asset('images/logo.png') }}" alt="Logo" class="logo">
</body>

</html>