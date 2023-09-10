@extends('layouts.main')
@section('title', 'About')
@section('container')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">

<!-- About-->
<section class="page-section bg-secondary" id="about">
    <div class="container px-4 px-lg-5 mb-5 pt-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-lg-6 text-center">
                <h2 class="text-white mt-0">Tentang saya ??</h2>
                <hr class="divider divider-light" />
                <p class="text-white-75 mb-4">Nama Saya Renold Herlandi dan saya seorang lulusan SMK yang memiliki kemampuan dalam mendesain atau mengedit sebuah gambar, dan membuat aplikasi dengan bantuan Laravel.</p>
            </div>
            <div class="col-lg-6 text-center">
                <img src="img/{{ $img }}" alt="{{ $name }}" width="350" class="img-thumbnail rounded-circle">
            </div>
        </div>
    </div>
    <div class="p-5"></div>
</section>
   

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
@endsection

