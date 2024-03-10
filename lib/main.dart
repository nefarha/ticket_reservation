import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reza_reservation/app/controllers/auth_controller.dart';
import 'package:reza_reservation/app/controllers/storage_controller.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:reza_reservation/app/data/addon/color_paletter.dart';
import 'package:reza_reservation/firebase_options.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AuthController());
    Get.put(StorageController());
    return GetMaterialApp(
      title: "Reservation",
      initialRoute: Routes.AUTHENTICATINO,
      getPages: AppPages.routes,
      theme: ReservationThemeData.defaultTheme(),
    );
  }
}

class ReservationThemeData {
  static ThemeData defaultTheme() => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorPalette.backgroundColor,
          background: ColorPalette.backgroundColor,
          surfaceTint: Colors.transparent,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorPalette.backgroundColor,
        ),
        textTheme: GoogleFonts.kanitTextTheme(),
      );
}
