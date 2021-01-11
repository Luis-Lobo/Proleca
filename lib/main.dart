import 'package:flutter/material.dart';
import 'package:proleca/Pages/login_page.dart'; 
import 'package:flutter/services.dart';
import 'RouteGenerator.dart';
import 'package:flutter/material.dart';
import 'package:proleca/Fase1/cigarra_formiga/Cigarra_Formiga_Principal_page.dart';
import 'package:proleca/Fase1/cigarra_formiga/Dia1/cigarra_formiga_dia1_page.dart';
import 'package:proleca/Fase1/cigarra_formiga/Dia2/cigarra_formiga_dia2_page.dart';
import 'package:proleca/Fase1/cigarra_formiga/Dia3/cigarra_formiga_dia3_page.dart';
import 'package:proleca/Pages/fase1_page.dart';
import 'package:proleca/Pages/fase2_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();   
   SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]).then((_){
  runApp(MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    onGenerateRoute: RouteGenerator.generateRoute,
    routes: {
      "/login" : (context) => LoginPage(),
      "/home" : (context) => HomePage(),
      "/fase1" : (context) => Fase1Page(),
      "/fase2" : (context) => Fase2Page(),
      "/CigarraFormigaPrincipal" : (context) => CigarraFormigaPrincipalPage(),
      "/CigarraFormigaDia1e4Page" : (context) => CigarraFormigaDia1Page(),
      "/CigarraFormigaDia2Page" : (context) => CigarraFormigaDia2Page(),
      "/CigarraFormigaDia3Page" : (context) => CigarraFormigaDia3Page(),
      },
    ));
   }
  );
}

