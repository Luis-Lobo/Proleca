import 'package:flutter/material.dart';

class DefaultColor {
  //static Color appBackgroudColorBright = Color(0xFFA6A6A6);
  static const Color appBackgroudColorBright = Color(0xFF990000);
  static const Color appBackgroudColorDark = Color(0xFF12124D);
  static const Color appPrimaryColorLight = Color(0xFFFBCC34);
  static const Color appPrimaryColorDark = Color(0xFF12124D);
  static const Color appSecondaryColorLight = Color(0xFFFBC926);
  static const Color appSecondaryColorDark = Color(0xFF6363E5);
  static const Color appDarkColor = Color(0xFF333333);
  static const Color appBrightColor = Color(0xFFf5f8fa);
  static const Color cardColor = Color(0xFF12124D);
  static const Color sombraDrawer = Color(0x731E604E);
  //1E604E
  static Gradient backgroundGradient = LinearGradient(
    colors: [
      appBackgroudColorBright,
      appBackgroudColorBright,
      appBackgroudColorBright,
      appBackgroudColorBright
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static Gradient backgroundGradientNoAppBar = LinearGradient(
    colors: [
      appBackgroudColorDark,
      appBackgroudColorDark,
      appBackgroudColorDark,
      appBackgroudColorDark,
    ],
    //stops: [0.1, 0.4333333333333333, 0.7666666666666666, 1.0],
    begin: Alignment(0.0, -0.75),
    end: Alignment.bottomCenter,
  );

  static Gradient cardGradient = LinearGradient(
      colors: [
        appBrightColor,
        appBackgroudColorBright,
      ],
      begin: Alignment(-0.75, -1.0),
      end: Alignment(0.75, 1.0),
      stops: [0.75, 1]);

  static Color azulEscuro = Color(0xFF0F5881);

  // Degradê login
  static Color inicioDegrade = Color(0xFF00A8FF);
  static Color fimDegrade = Color(0xFF2782BD);

  static Color azulIconAzul = Color(0xFF42B2E4);
  static Color azulLabelLogin = Color(0xFF0E5880);
  static Color azullFillColorInput = Color(0xFF3493CB);
  static Color errorLogin = Colors.red;

  static Color azulLabel = Color(0xFF0A9EED);
  static Color azulBotao = Color(0xFF0296D5);

  static Color azullSubTitle = Color(0xFF3593CB);

  static const MaterialColor azul = MaterialColor(0xFF2196F3, <int, Color>{
    50: Color(0xFFE3F2FD),
    100: Color(0xFFBBDEFB),
    200: Color(0xFF90CAF9),
    300: Color(0xFF64B5F6),
    400: Color(0xFF42A5F5),
    500: Color(0xFF2196F3),
    600: Color(0xFF1E88E5),
    700: Color(0xFF1976D2),
    800: Color(0xFF1565C0),
    900: Color(0xFF0D47A1),
  });

  static const MaterialAccentColor azulAccent = MaterialAccentColor(
    0xFF448AFF,
    <int, Color>{
      100: Color(0xFF82B1FF),
      200: Color(0xFF448AFF),
      400: Color(0xFF2979FF),
      700: Color(0xFF2962FF),
    },
  );
}
