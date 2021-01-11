import 'package:flutter/material.dart';
import 'package:proleca/Fase1/cigarra_formiga/Cigarra_Formiga_Principal_page.dart';
import 'package:proleca/Fase1/cigarra_formiga/Dia1/cigarra_formiga_dia1_page.dart';
import 'package:proleca/Fase1/cigarra_formiga/Dia2/cigarra_formiga_dia2_page.dart';
import 'package:proleca/Fase1/cigarra_formiga/Dia3/cigarra_formiga_dia3_page.dart';
import 'package:proleca/Fase1/cigarra_formiga/Dia4/cigarra_formiga_dia4_page.dart';
import 'package:proleca/Fase1/monstro_cama/Monstro_Cama_Principal_page.dart';
import 'package:proleca/Fase1/monstro_cama/Dia1/monstro_cama_dia1_page.dart';
import 'package:proleca/Fase1/monstro_cama/Dia2/monstro_cama_dia2_page.dart';
import 'package:proleca/Fase1/monstro_cama/Dia3/monstro_cama_dia3_page.dart';
import 'package:proleca/Fase1/monstro_cama/Dia4/monstro_cama_dia4_page.dart';
import 'package:proleca/Fase1/ratos/Ratos_Principal_page.dart';
import 'package:proleca/Fase1/ratos/Dia1/ratos_dia1_page.dart';
import 'package:proleca/Fase1/ratos/Dia2/ratos_dia2_page.dart';
import 'package:proleca/Fase1/ratos/Dia3/ratos_dia3_page.dart';
import 'package:proleca/Fase1/ratos/Dia4/ratos_dia4_page.dart';
import 'package:proleca/Fase2/arvore_cintia/Arvore_Cintia_Principal_page.dart';
import 'package:proleca/Fase2/arvore_cintia/Dia1/arvore_cintia_dia1_page.dart';
import 'package:proleca/Fase2/arvore_cintia/Dia2/arvore_cintia_dia2_page.dart';
import 'package:proleca/Fase2/arvore_cintia/Dia3/arvore_cintia_dia3_page.dart';
import 'package:proleca/Fase2/arvore_cintia/Dia4/arvore_cintia_dia4_page.dart';
import 'package:proleca/Fase2/caozinho/Caozinho_Principal_page.dart';
import 'package:proleca/Fase2/caozinho/Dia1/caozinho_dia1_page.dart';
import 'package:proleca/Fase2/caozinho/Dia2/caozinho_dia2_page.dart';
import 'package:proleca/Fase2/caozinho/Dia3/caozinho_dia3_page.dart';
import 'package:proleca/Fase2/caozinho/Dia4/caozinho_dia4_page.dart';
import 'package:proleca/Fase2/cotovia/Cotovia_Principal_page.dart';
import 'package:proleca/Fase2/cotovia/Dia1/cotovia_dia1_page.dart';
import 'package:proleca/Fase2/cotovia/Dia2/cotovia_dia2_page.dart';
import 'package:proleca/Fase2/cotovia/Dia3/cotovia_dia3_page.dart';
import 'package:proleca/Fase2/cotovia/Dia4/cotovia_dia4_page.dart';
import 'package:proleca/Fase2/estegossauro/Dia1/estegossauro_dia1_page.dart';
import 'package:proleca/Fase2/estegossauro/Dia2/estegossauro_dia2_page.dart';
import 'package:proleca/Fase2/estegossauro/Dia3/estegossauro_dia3_page.dart';
import 'package:proleca/Fase2/estegossauro/Dia4/estegossauro_dia4_page.dart';
import 'package:proleca/Fase2/estegossauro/Estegossauro_Principal_page.dart';
import 'package:proleca/Fase2/raposa_cegonha/Dia1/raposa_cegonha_dia1_page.dart';
import 'package:proleca/Fase2/raposa_cegonha/Dia2/raposa_cegonha_dia2_page.dart';
import 'package:proleca/Fase2/raposa_cegonha/Dia3/raposa_cegonha_dia3_page.dart';
import 'package:proleca/Fase2/raposa_cegonha/Dia4/raposa_cegonha_dia4_page.dart';
import 'package:proleca/Fase2/raposa_cegonha/Raposa_Cegonha_Principal_page.dart';
import 'package:proleca/Fase2/tartaruga_lebre/Dia1/tartaruga_lebre_dia1_page.dart';
import 'package:proleca/Fase2/tartaruga_lebre/Dia2/tartaruga_lebre_dia2_page.dart';
import 'package:proleca/Fase2/tartaruga_lebre/Dia3/tartaruga_lebre_dia3_page.dart';
import 'package:proleca/Fase2/tartaruga_lebre/Dia4/tartaruga_lebre_dia4_page.dart';
import 'package:proleca/Fase2/tartaruga_lebre/Tartaruga_Lebre_Principal_page.dart';
import 'package:proleca/Pages/fase1_page.dart';
import 'package:proleca/Pages/fase2_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
        );
      case "/login":
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
        );
      case "/home":
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case "/fase1":
        return MaterialPageRoute(
          builder: (_) => Fase1Page(),
        );
      case "/fase2":
        return MaterialPageRoute(
          builder: (_) => Fase2Page(),
        );
      case "/CigarraFormigaPrincipalPage":
        return MaterialPageRoute(
          builder: (_) => CigarraFormigaPrincipalPage(),
        );
      case "/CigarraFormigaDia1Page":
        return MaterialPageRoute(
          builder: (_) => CigarraFormigaDia1Page(),
        );
      case "/CigarraFormigaDia2Page":
        return MaterialPageRoute(
          builder: (_) => CigarraFormigaDia2Page(),
        );
      case "/CigarraFormigaDia3Page":
        return MaterialPageRoute(
          builder: (_) => CigarraFormigaDia3Page(),
        );
      case "/CigarraFormigaDia4Page":
        return MaterialPageRoute(
          builder: (_) => CigarraFormigaDia4Page(),
        );
      case "/MonstroCamaPrincipalPage":
        return MaterialPageRoute(
          builder: (_) => MonstroCamaPrincipalPage(),
        );
      case "/MonstroCamaDia1Page":
        return MaterialPageRoute(
          builder: (_) => MonstroCamaDia1Page(),
        );
      case "/MonstroCamaDia2Page":
        return MaterialPageRoute(
          builder: (_) => MonstroCamaDia2Page(),
        );
      case "/MonstroCamaDia3Page":
        return MaterialPageRoute(
          builder: (_) => MonstroCamaDia3Page(),
        );
      case "/MonstroCamaDia4Page":
        return MaterialPageRoute(
          builder: (_) => MonstroCamaDia4Page(),
        );
      case "/RatosPrincipalPage":
        return MaterialPageRoute(
          builder: (_) => RatosPrincipalPage(),
        );
      case "/RatosDia1Page":
        return MaterialPageRoute(
          builder: (_) => RatosDia1Page(),
        );
      case "/RatosDia2Page":
        return MaterialPageRoute(
          builder: (_) => RatosDia2Page(),
        );
      case "/RatosDia3Page":
        return MaterialPageRoute(
          builder: (_) => RatosDia3Page(),
        );
      case "/RatosDia4Page":
        return MaterialPageRoute(
          builder: (_) => RatosDia4Page(),
        );
      case "/ArvoreCintiaPrincipalPage":
        return MaterialPageRoute(
          builder: (_) => ArvoreCintiaPrincipalPage(),
        );
      case "/ArvoreCintiaDia1Page":
        return MaterialPageRoute(
          builder: (_) => ArvoreCintiaDia1Page(),
        );
      case "/ArvoreCintiaDia2Page":
        return MaterialPageRoute(
          builder: (_) => ArvoreCintiaDia2Page(),
        );
      case "/ArvoreCintiaDia3Page":
        return MaterialPageRoute(
          builder: (_) => ArvoreCintiaDia3Page(),
        );
      case "/ArvoreCintiaDia4Page":
        return MaterialPageRoute(
          builder: (_) => ArvoreCintiaDia4Page(),
        );
      case "/CotoviaPrincipalPage":
        return MaterialPageRoute(
          builder: (_) => CotoviaPrincipalPage(),
        );
      case "/CotoviaDia1Page":
        return MaterialPageRoute(
          builder: (_) => CotoviaDia1Page(),
        );
      case "/CotoviaDia2Page":
        return MaterialPageRoute(
          builder: (_) => CotoviaDia2Page(),
        );
      case "/CotoviaDia3Page":
        return MaterialPageRoute(
          builder: (_) => CotoviaDia3Page(),
        );
      case "/CotoviaDia4Page":
        return MaterialPageRoute(
          builder: (_) => CotoviaDia4Page(),
        );
      case "/RaposaCegonhaPrincipalPage":
        return MaterialPageRoute(
          builder: (_) => RaposaCegonhaPrincipalPage(),
        );
      case "/RaposaCegonhaDia1Page":
        return MaterialPageRoute(
          builder: (_) => RaposaCegonhaDia1Page(),
        );
      case "/RaposaCegonhaDia2Page":
        return MaterialPageRoute(
          builder: (_) => RaposaCegonhaDia2Page(),
        );
      case "/RaposaCegonhaDia3Page":
        return MaterialPageRoute(
          builder: (_) => RaposaCegonhaDia3Page(),
        );
      case "/RaposaCegonhaDia4Page":
        return MaterialPageRoute(
          builder: (_) => RaposaCegonhaDia4Page(),
        );
      case "/TartarugaLebrePrincipalPage":
        return MaterialPageRoute(
          builder: (_) => TartarugaLebrePrincipalPage(),
        );
      case "/TartarugaLebreDia1Page":
        return MaterialPageRoute(
          builder: (_) => TartarugaLebreDia1Page(),
        );
      case "/TartarugaLebreDia2Page":
        return MaterialPageRoute(
          builder: (_) => TartarugaLebreDia2Page(),
        );
      case "/TartarugaLebreDia3Page":
        return MaterialPageRoute(
          builder: (_) => TartarugaLebreDia3Page(),
        );
      case "/TartarugaLebreDia4Page":
        return MaterialPageRoute(
          builder: (_) => TartarugaLebreDia4Page(),
        );
      case "/EstegossauroPrincipalPage":
        return MaterialPageRoute(
          builder: (_) => EstegossauroPrincipalPage(),
        );
      case "/EstegossauroDia1Page":
        return MaterialPageRoute(
          builder: (_) => EstegossauroDia1Page(),
        );
      case "/EstegossauroDia2Page":
        return MaterialPageRoute(
          builder: (_) => EstegossauroDia2Page(),
        );
      case "/EstegossauroDia3Page":
        return MaterialPageRoute(
          builder: (_) => EstegossauroDia3Page(),
        );
      case "/EstegossauroDia4Page":
        return MaterialPageRoute(
          builder: (_) => EstegossauroDia4Page(),
        );
      case "/CaozinhoPrincipalPage":
        return MaterialPageRoute(
          builder: (_) => CaozinhoPrincipalPage(),
        );
      case "/CaozinhoDia1Page":
        return MaterialPageRoute(
          builder: (_) => CaozinhoDia1Page(),
        );
      case "/CaozinhoDia2Page":
        return MaterialPageRoute(
          builder: (_) => CaozinhoDia2Page(),
        );
      case "/CaozinhoDia3Page":
        return MaterialPageRoute(
          builder: (_) => CaozinhoDia3Page(),
        );
      case "/CaozinhoDia4Page":
        return MaterialPageRoute(
          builder: (_) => CaozinhoDia4Page(),
        );
      default:
        _erroRota();
    }
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tela não encontrada!"),
        ),
        body: Center(
          child: Text("Tela não encontrada!"),
        ),
      );
    });
  }
}
