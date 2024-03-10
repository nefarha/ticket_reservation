import 'package:get/get.dart';

import '../modules/Authenticatino/bindings/authenticatino_binding.dart';
import '../modules/Authenticatino/views/authenticatino_view.dart';
import '../modules/BuatPesanan/bindings/buat_pesanan_binding.dart';
import '../modules/BuatPesanan/views/buat_pesanan_view.dart';
import '../modules/DetailPesanan/bindings/detail_pesanan_binding.dart';
import '../modules/DetailPesanan/views/detail_pesanan_view.dart';
import '../modules/Landing/bindings/landing_binding.dart';
import '../modules/Landing/views/landing_view.dart';
import '../modules/TambahRekening/bindings/tambah_rekening_binding.dart';
import '../modules/TambahRekening/views/tambah_rekening_view.dart';
import '../modules/TambahWisata/bindings/tambah_wisata_binding.dart';
import '../modules/TambahWisata/views/tambah_wisata_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BUAT_PESANAN,
      page: () => const BuatPesananView(),
      binding: BuatPesananBinding(),
    ),
    GetPage(
      name: _Paths.LANDING,
      page: () => const LandingView(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: _Paths.TAMBAH_REKENING,
      page: () => const TambahRekeningView(),
      binding: TambahRekeningBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PESANAN,
      page: () => const DetailPesananView(),
      binding: DetailPesananBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATINO,
      page: () => const AuthenticatinoView(),
      binding: AuthenticatinoBinding(),
    ),
    GetPage(
      name: _Paths.TAMBAH_WISATA,
      page: () => const TambahWisataView(),
      binding: TambahWisataBinding(),
    ),
  ];
}
