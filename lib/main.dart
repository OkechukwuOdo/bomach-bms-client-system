import 'package:bms_front_end/views/app_routes/app_router.dart';
import 'package:bms_front_end/views/styles/colors_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'BMS System',
      theme: ThemeData(
        dataTableTheme: const DataTableThemeData(
          decoration: BoxDecoration(color: Colors.transparent)
          // dataRowColor: WidgetStatePropertyAll<Color>()
        ),
        scaffoldBackgroundColor:  AppColors.backgroundColor,
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
        // pageTransitionsTheme: 
      ),
      routerConfig: goRoute,
    );
  }
}


