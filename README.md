# BookStore E-money App - Flutter Application

<div align="center">
<url>
  <img width="300" height="301" alt="Institut Teknologi dan Bisnis Bina Sarana Global" src="https://github.com/user-attachments/assets/1e84f66a-135b-4cf2-b07a-b2a9098ce119" width="200"/>
</url>
</div>
<div align="center">
Institut Teknologi dan Bisnis Bina Sarana Global <br>
FAKULTAS TEKNOLOGI INFORMASI & KOMUNIKASI <br>
https://global.ac.id/
</div>

## Project UAS
- Nim : 1123150114
- Nama : Muhamad Yajid Rizky
- Mata Kuliah : Aplikasi Mobile
- Kelas : TI-SE 23 SH

## Demo Video

Lihat video demo aplikasi untuk melihat semua fitur dalam aksi!

**[Watch Full Demo on YouTube]()**

Alternative link: **[Google Drive Demo]()**

## Built With

- **[Flutter](https://flutter.dev/)** - UI Framework
- **[Dart](https://dart.dev/)** - Programming Language
- **[Firebase](https://firebase.google.com/)** - Authentication & Cloud Services
- **[Golang](https://go.dev/)** - Backend Service
- **[MySql](http://mysql.com/)** - Backend Database
- **[Provider](https://pub.dev/packages/provider)** - State Management

## Getting Started

### Prerequisites

Pastikan Anda sudah menginstall:
- Flutter SDK (3.16.0 or higher)
- Go (Golang) untuk backend service
- MySQL sebagai database relasional
- Dart SDK (3.2.0 or higher)
- Android Studio / VS Code
- Git

### Installation Flutter

1. Clone repository
```bash
git clone https://github.com/Frientia/e-money_bookstore.git
cd e-money_bookstore
```

2. Install dependencies
```bash
flutter pub get
```

3. Setup Firebase
```bash
# Download google-services.json dari Firebase Console
# Place in android/app/
cp path/to/google-services.json android/app/
```

4. Run aplikasi
```bash
flutter run
```

### Installation Golang (Backend)

0. Link Backend Repo
```bash
https://github.com/Frientia/be-emoney-bookstore.git
```
1. Clone repository
```bash
git clone https://github.com/Frientia/be-emoney-bookstore.git
cd be-emoney-bookstore
```

2. Install dependencies
```bash
go mod tidy
```

3. Setup Firebase
```bash
# Download adminSDK dari Firebase
# Place in root project
cp path/to/firebase-service-account.json .
```

4. Setup local server
```bash
# Copy .env.example secara manual, atau
cp .env.example .env
```

### Build APK

```bash
# Debug APK
flutter build apk --debug

# Release APK
flutter build apk --release

# Split APK by ABI
flutter build apk --split-per-abi
```

## Project Structure

```
lib/
├── core/
│   ├── constants/
│   │   ├── api_endpoints.dart
│   │   └── app_constants.dart
│   ├── error/
│   │   ├── exceptions.dart
│   │   └── failures.dart
│   ├── network/
│   │   └── api_client.dart
│   ├── router/
│   │   └── app_router.dart
│   ├── services/
│   │   ├── deeplink_callback_service.dart
│   │   └── deeplink_service.dart
│   ├── theme/
│   │   ├── app_colors.dart
│   │   ├── app_text_styles.dart
│   │   ├── app_theme.dart
│   │   └── gradient_app_bar.dart
│   └── utils/
│       ├── app_bloc_observer.dart
│       ├── currency_formatter.dart
│       └── date_formatter.dart
├── data/
│   ├── datasources/
│   │   ├── local/
│   │   │   └── secure_storage_datasource.dart
│   │   └── remote/
│   │       ├── account_remote_datasource.dart
│   │       ├── auth_remote_datasource.dart
│   │       ├── otp_remote_datasource.dart
│   │       └── payment_remote_datasource.dart
│   ├── models/
│   │   ├── account_model.dart
│   │   ├── transaction_model.dart
│   │   └── user_model.dart
│   └── repositories/
│       ├── account_repository_impl.dart
│       ├── auth_repository_impl.dart
│       ├── otp_repository_impl.dart
│       └── payment_repository_impl.dart
├── domain/
│   ├── entities/
│   │   ├── account_entity.dart
│   │   ├── otp_entity.dart
│   │   ├── payment_result_entity.dart
│   │   ├── transaction_entity.dart
│   │   └── user_entity.dart
│   ├── repositories/
│   │   ├── account_repository.dart
│   │   ├── auth_repository.dart
│   │   ├── otp_repository.dart
│   │   └── payment_repository.dart
│   └── usecases/
│       ├── account/
│       │   └── get_account_usecase.dart
│       ├── auth/
│       │   ├── get_me_usecase.dart
│       │   ├── logout_usecase.dart
│       │   ├── register_with_otp_usecase.dart
│       │   ├── send_otp_usecase.dart
│       │   ├── verify_email_otp_usecase.dart
│       │   └── verify_firebase_token_usecase.dart
│       └── payment/
│           └── payment_usecases.dart
├── injection/
│   └── injection_container.dart
├── presentation/
│   ├── blocs/
│   │   ├── account/
│   │   │   └── account_bloc.dart
│   │   ├── auth/
│   │   │   ├── auth_bloc.dart
│   │   │   └── otp_bloc.dart
│   │   ├── home/
│   │   └── payment/
│   │       └── payment_bloc.dart
│   ├── pages/
│   │   ├── account/
│   │   │   └── account_page.dart
│   │   ├── auth/
│   │   │   ├── login_page.dart
│   │   │   ├── register_page.dart
│   │   │   ├── setup_2fa_page.dart
│   │   │   ├── twofa_notif_page.dart
│   │   │   ├── twofa_smtp_page.dart
│   │   │   ├── twofa_totp_page.dart
│   │   │   └── verify_email_page.dart
│   │   ├── history/
│   │   │   └── history_page.dart
│   │   ├── home/
│   │   │   └── home_page.dart
│   │   ├── merchant/
│   │   │   └── merchant_checkout_page.dart
│   │   ├── payment/
│   │   │   ├── payment_deeplink_page.dart
│   │   │   ├── payment_qr_page.dart
│   │   │   └── pin_page.dart
│   │   ├── promo/
│   │   │   └── promo_page.dart
│   │   ├── splash/
│   │   │   └── splash_page.dart
│   │   ├── success/
│   │   │   └── success_page.dart
│   │   ├── topup/
│   │   │   └── topup_page.dart
│   │   └── transfer/
│   │       ├── transfer_amount_page.dart
│   │       ├── transfer_confirm_page.dart
│   │       └── transfer_page.dart
│   └── widgets/
│       ├── app_avatar.dart
│       ├── app_badge.dart
│       ├── app_button.dart
│       ├── app_field.dart
│       ├── app_logo.dart
│       ├── app_tab_bar.dart
│       ├── app_top_bar.dart
│       ├── code_input.dart
│       ├── feature_icon.dart
│       ├── num_pad.dart
│       ├── pin_pad.dart
│       ├── success_check.dart
│       └── transaction_row.dart
├── firebase_options.dart
└── main.dart
```

## App Flow

### 1. Authentication Flow (Akses Masuk & Keamanan)

Alur ini memastikan pengguna masuk dengan token sah dan status akun valid.

```
1. Splash Screen
   (Sistem membaca memori HP untuk mencari sesi login sebelumnya)
   ↓
2. Auth Guard / BLoC Checker
   (Memvalidasi apakah pengguna sudah login, token masih aktif, dan email sudah terverifikasi)
   ↓
   ├─ Jika Kosong/Tidak Valid ➔ 3a. Login / Register Screen
   ├─ Jika Belum Verifikasi   ➔ 3b. Verify Email Screen
   └─ Jika Valid & Sukses     ➔ 3c. Home Screen (Dashboard)
```

### 2. Main Navigation Flow

Pengguna menavigasi aplikasi dengan tab utama dan opsi cepat scan QR.

```
1. Home Screen
   (Dashboard utama menampilkan saldo, shortcut top-up, transfer, dan promo)
   ↓
2. Bottom Tab Bar
   (Home / History / Promo / Account)
   ↓
3. Pilih fitur:
   ├─ History Screen
   ├─ Promo Screen
   ├─ Account Screen
   └─ Scan QR / Payment
```

### 3. Top-up Flow (Isi Saldo)

```
1. Home Screen
   (Pengguna memilih Top-up dari shortcut atau menu akun)
   ↓
2. TopUp Page
   (Memilih nominal top-up dan metode pembayaran)
   ↓
3. Payment PIN / Konfirmasi
   (Memasukkan PIN untuk otorisasi top-up)
   ↓
4. Success Page
   (Menampilkan ringkasan top-up berhasil)
```

### 4. Transfer Flow (Kirim Saldo)

```
1. Home Screen / Account Screen
   (Pengguna memilih Transfer)
   ↓
2. Transfer Page
   (Memasukkan nomor tujuan dan nominal transfer)
   ↓
3. Transfer Amount Page
   (Meninjau detail penerima, jumlah, dan channel transfer)
   ↓
4. Transfer Confirm Page
   (Konfirmasi transaksi sebelum proses)
   ↓
5. Payment PIN / Konfirmasi
   (Memasukkan PIN untuk mengotorisasi transfer)
   ↓
6. Success Page
   (Transfer selesai dan tampil bukti transaksi)
```

### 5. QR / Merchant Payment Flow

```
1. Home Screen
   (Pengguna memilih scan QR atau pergi ke Payment)
   ↓
2. Payment QR Page
   (Menampilkan scanner QR untuk pembayaran merchant)
   ↓
3. Merchant Checkout Page / Deeplink Payment
   (Jika dari merchant, proses checkout dan konfirmasi nominal)
   ↓
4. Payment PIN / Konfirmasi
   (Otorisasi pembayaran dengan PIN aplikasi)
   ↓
5. Success Page
   (Transaksi berhasil dan user kembali ke dashboard atau merchant)
```

### 6. Logout Flow (Penutupan Sesi)

```
1. Account Screen
   (Pengguna memilih opsi Logout)
   ↓
2. Auth Bloc / Storage
   (Menghapus token dan data sesi lokal)
   ↓
3. Auth Guard Listener
   (State berubah menjadi unauthenticated)
   ↓
4. Login Screen
   (Pengguna kembali ke titik awal akses aplikasi)
```

## 📝 API Documentation

### Health Endpoint

* `GET /api/v1/health` - Pengecekan status (health check) server/API.

### Authentication Endpoints

* `POST /api/v1/auth/verify-token` - Verifikasi validitas token sesi pengguna saat ini.
* `POST /api/v1/auth/register` - Register user baru.
* `POST /api/v1/auth/verify-email-otp` - Verifikasi pendaftaran/login menggunakan OTP email.
* `GET /api/v1/auth/me` - Mengambil data profil user yang sedang login.
* `POST /api/v1/auth/fcm-token` - Menyimpan atau memperbarui Firebase Cloud Messaging (FCM) token untuk push notifikasi.

### OTP (One Time Password) Endpoints

* `POST /api/v1/otp/send-firebase` - Mengirimkan OTP melalui layanan Firebase (umumnya untuk SMS).
* `POST /api/v1/otp/send-email` - Mengirimkan kode OTP melalui Email.
* `POST /api/v1/otp/confirm` - Validasi atau konfirmasi kode OTP yang telah dikirim.
* `POST /api/v1/otp/totp/register` - Setup awal atau mendaftarkan TOTP (Time-based OTP seperti Google Authenticator).
* `POST /api/v1/otp/totp/verify` - Verifikasi kode dari aplikasi TOTP.

### Account Endpoints

* `GET /api/v1/account` - Mengambil informasi detail akun (misalnya status akun, limit, atau saldo).
* `GET /api/v1/account/transactions` - Mengambil daftar riwayat transaksi pengguna.

### Payment Endpoints

* `POST /api/v1/payment/topup` - Memproses permintaan top-up saldo akun.
* `POST /api/v1/payment/transfer` - Memproses transfer saldo ke pengguna lain.

## Features

- Login & Register dengan OTP email
- Dashboard akun dengan saldo dan ringkasan transaksi
- Top-up saldo dan transfer antar pengguna
- Riwayat transaksi lengkap
- Pembayaran QR dan deeplink merchant
- Otentikasi 2FA dengan TOTP dan notifikasi
- Tutorial dan layanan aplikasi mobile modern

---

## Preview Tampilan Aplikasi

### Autentikasi
| Register | Login | Verifikasi Email |
|:---:|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/6dda3c06-ea83-4104-a8ea-213f75aec058" width="220"/> | <img src="https://github.com/user-attachments/assets/9109941f-59df-424c-becf-828c7940c4ef" width="220"/> | <img src="https://github.com/user-attachments/assets/f8607c0e-ad77-4494-8978-d929ecf61623" width="220"/> |
| Daftar akun baru | Masuk dengan email / Google | Konfirmasi email |

### Keamanan Akun
| Amankan Akun | About |
|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/6fb21093-611d-4aa8-ac06-d20bb795cfb9" width="220"/> | <img src="https://github.com/user-attachments/assets/363b2066-f012-4214-b8f6-91a9506739d5" width="220"/> |
| Setup 2FA | Info & versi aplikasi |

### Dashboard & Fitur Utama
| Beranda | Promo | Riwayat |
|:---:|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/200ef9eb-1bd8-420d-ad41-183297f85b04" width="220"/> | <img src="https://github.com/user-attachments/assets/54518e57-2ac0-4284-8f9a-244e93064244" width="220"/> | <img src="https://github.com/user-attachments/assets/66e34256-7e0f-4b78-9022-4cee4e9e402b" width="220"/> |
| Dashboard utama | Daftar promo aktif | Riwayat transaksi |

### Transaksi
| Isi Saldo | Transfer | Berhasil |
|:---:|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/381867cb-916b-44c8-ac96-60d1717cf134" width="220"/> | <img src="https://github.com/user-attachments/assets/33a37b31-dbe9-4b3a-8add-3e529ad4cb87" width="220"/> | <img src="https://github.com/user-attachments/assets/26084473-5348-43ee-a2cb-6cafaaf59955" width="220"/> |
| Top up saldo | Kirim ke pengguna lain | Konfirmasi sukses |

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Flutter Community](https://flutter.dev/community) - For amazing packages
- [Firebase](https://firebase.google.com/) - For backend services
- [Flaticon](https://www.flaticon.com/) - For app icons
- [Unsplash](https://unsplash.com/) - For placeholder images

---
<div align="center">
  <p>© 2026 BookStore E-money App. All rights reserved.</p>
</div>
