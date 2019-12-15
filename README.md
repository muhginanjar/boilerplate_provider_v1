# Boilerplate Project Provider

A boilerplate project created in flutter using Provider v3.2.0 .

## Getting Started

The Boilerplate contains the minimal implementation required to create a new library or project. The repository code is preloaded with some basic components like basic app architecture, app theme, constants and required dependencies to create a new project. By using boiler plate code as standard initializer, we can have same patterns in all the projects that will inherit it. This will also help in reducing setup & development time by allowing you to use same code pattern and avoid re-writing from scratch.

Boilerplate ini menggunakan arsitektur MVVM dan State Management Provider

Berikut struktur folder project yang digunakan

```
lib/
|- core/
|- ui/
|- main.dart
```

Secara garis besar struktur folder dibagi menjadi 2, yaitu:
 - [core] Berisi function, logic dan mengatur hubungan antara project dengen API
 - [ui] Berisi tampilan 

### Core
Struktur pada folder Core

```
core/
|- constants/
    |- router.dart
|- models/
|- services/
    |- api_services.dart
    |- authentication_services.dart
|- viewmodels/
    |- base_viewmodel.dart
|- provider_setup.dart
```
### constants/
Folder constants terdiri dari variabel fungsi dan variabel router yang seharusnya didefine dari awal project

Folder constants ini juga dapat diisi dengan variabel url API yang bersifat [private] yang nantinya harus dilampirkan pada .gitignore

### models/
models berisi model / POJO (Plain Old Java Object) untuk mendefine variabel json dari REST API.

Agar mempersingkat waktu untuk membuat model, kamu dapat menggunakan converter di bawah ini untuk mengkoversi json menjadi model dart:

```
https://javiercbk.github.io/json_to_dart/

credit to: Javier Lecuona

```
### services/
services berisi berbagai fungsi dan service yang digunakan untuk mengatur data pada project. Untuk saat ini services terdiri dari function api dan function authentication

### viewmodels/
Viewmodels berfungsi sebagai penghubung antara core dengan ui. Viewmodel merupakan ekstensi dari base_model yang terdiri dari state dasar dalam pemanggilan API (busy or !busy) dan state lainnya

### provider_setup.dart
provider berisi hasil define dari service yang ada pada folder services. Jika ada services yang ditambahkan, harus didefine juga pada file ini

### UI
Struktur pada folder UI

```
ui/
|- shared/
    |- styles
        |- app_colors.dart
        |- text_styles.dart
        |- ui_helpers.dart
|- views/
    |- home_view.dart
    |- login_view.dart
|- widgets/
    |- reusable
        |- button_widget.dart
|- base_widget.dart
```


## Cara Menggunakan Boilerplate

**Step 1:**

Clone atau download repo di bawah ini:

```
https://github.com/reyhanjav/boilerplate_provider_v1.git

```

**Step 2:**

Masuk ke dalam folder repo dan jalankan command di bawah ini:

``` 
flutter pub get 

```

``` 
flutter doctor -v

```

``` 
flutter run -v

```

**Step 3:**
Pastikan tidak ada error setelah kamu menjalankan flutter doctor dan flutter run.
Jika terjadi kendala, sesuaikan project ini dengan rule pada versi flutter yang kamu miliki, terutama jika kamu menggunakan flutter channel master

**Step 4:**
Selamat Bersenang Senang


## Kaidah Penamaan

### Bahasa Penamaan
Secara default penaman pada project ini menggunakan bahasa inggris. Jika ingin menggunakan bahasa indonesia, harap pastikan seluruh penamaan pada project ini juga menggunakan bahasa yang sama.

```
Harap Pastikan Seluruh penamaan tidak menggunakan 2 bahasa yang berbeda untuk mempermudah developer lain untuk memahaminya

```
### CamelCase
CamelCase digunakan pada penamaan function ,dan penamaan variabel. Penamaan variabel maksimal terdiri dari 3 kata dengan syarat hanya 1 kata saja yang disingkat (misal : jmlBuahTotal)

penamaan class harus menggunakan UpperCamelCase

### Underscore

Underscore digunakan pada penamaan child folder dan file dengan ketentuan nama_namaparentfolder.

Contoh penggunaan pada child foler: home_view (view merupakan parent folder dari folder home)


## Changelog

Jika ingin melakukan penambahan maupun perubahan pada boilerplate ini , harap mengisi CHANGELOG.MD agara pengguna sebelumnya dapat mengetahui perubahan yang terjadi

## Referensi
Jika kamu baru pertama kali menggunakan flutter, silahkan kunjungi link berikut ini:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)


Beberapa link yang bermanfaat untuk mempelajari tentang flutter, sampel source open source yang dapat dipakai, maupun panduany lainnya:

- [Youtube: Flutter Official](https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw)
- [Youtube: Erico Darmawan](https://www.youtube.com/user/kh3w4nx1ng)
- [FilledStack: Flutter Best Practices](https://www.filledstacks.com/)
- [Medium: FlutterPub](https://medium.com/flutterpub)
- [Medium: FlutterCommunity](https://medium.com/flutter-community)
- [Discord: Official Flutter](https://discordapp.com/invite/N7Yshp4)
- [Telegram: Flutter Indonesia](https://t.me/flutter_id)
- [Facebook: Flutter Indonesia](https://www.facebook.com/groups/1738284952897937/?ref=bookmarks)


## version
- [dio] v3.0.4
- [get_it] v3.0.3
- [package_info] v0.4.0+13
- [pigment] v1.0.3
- [provider] v3.2.0
- [shared_preferences] v0.5.3+5