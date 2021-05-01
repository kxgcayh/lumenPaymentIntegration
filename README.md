## Instalasi

1. Buka Command Prompt atau Terminal
2. Clone Repository `git clone https://github.com/kxgcayh/lumenPaymentIntegration.git`
3. Buka Webserver dan Buatlah Database Baru melalu gui ataupun mysql
4. Masuk ke Dalam Folder Aplikasi `cd lumenPaymentIntegration`
5. Install Composer `composer install`
6. Konfigurasi Aplikasi
    1. Buat file .env `cp .env.example .env`
    2. Buat key dalam .env `php artisan key:generate`
    3. Buka file .env dan edit file tersebut
    4. Buatlah akun stripe dan rubah STRIPE_KEY juga STRIPE_SECRET dalam file .env agar dapat melihat bukti transaksi
    ```sh
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE='NAMA DATABASE'
    DB_USERNAME='USERNAME ANDA'
    DB_PASSWORD='PASSWORD ANDA'

    STRIPE_KEY=pk_test_51Im00MFThhqhD22mQEkl0k8k2LkqH9N23qajDtXFu8URuUoa8SwVN99hAxTPOXgQ43035euyveLYazHklkSJW4zX00a4ciBH0r
    STRIPE_SECRET=sk_test_51Im00MFThhqhD22m4jZePrNHZskXq10dtGmzpjx1XDlCTs3WnFlKmZO4WxwiMTK1BdGjVi19heSUZkq1HnBGJ8LT00jeyPzSQF
    JWT_SECRET=l17dcLUkc4LOdM5huwdnSbJpGy53fLxDYVKKMtgYyruh9AAfudK6TkP3D7t3F1mo
    ```
    
7. Migrate dan Seed Data ke Database `php artisan migrate:fresh --seed`

---

<!-- MENJALANKAN APLIKASI -->

## Menjalankan Aplikasi

```shell
php -S localhost:8000 -t public
```

* Buka Postman dan Import file `LumenPaymentGateway.postman_collection.json`. Happy Testing!

# Lumen PHP Framework

[![Build Status](https://travis-ci.org/laravel/lumen-framework.svg)](https://travis-ci.org/laravel/lumen-framework)
[![Total Downloads](https://img.shields.io/packagist/dt/laravel/framework)](https://packagist.org/packages/laravel/lumen-framework)
[![Latest Stable Version](https://img.shields.io/packagist/v/laravel/framework)](https://packagist.org/packages/laravel/lumen-framework)
[![License](https://img.shields.io/packagist/l/laravel/framework)](https://packagist.org/packages/laravel/lumen-framework)

Laravel Lumen is a stunningly fast PHP micro-framework for building web applications with expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Lumen attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as routing, database abstraction, queueing, and caching.

## License

The Lumen framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
