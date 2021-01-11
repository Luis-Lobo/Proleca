

import 'package:flutter/material.dart';
import 'package:proleca/util/app_pallete.dart';
import 'package:proleca/util/size_config.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

  alertaRespostaCerta(context) {
    var _alertStyleCerto= AlertStyle(
      titleStyle: TextStyle(
          color: Colors.purple[700],
          fontSize: SizeConfig.safeBlockHorizontal * 8,
          fontWeight: FontWeight.bold),
      descStyle: TextStyle(
          color: Colors.green, fontSize: SizeConfig.safeBlockHorizontal * 5),
      isCloseButton: false,
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          width: 4,
          color: Colors.purple[700],
        ),
      ),
    );

      Alert(
        context: context,
      //  style: _alertStyleCerto,
        title: "",
        image: Image.asset(
          "imagens/muitobem.png",
     //     scale: 0.8,
        ),
        buttons: [
          DialogButton(
            child: Text(
              "Continue",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.safeBlockVertical * 5),
            ),
            onPressed: () => Navigator.pop(context),
            color: Colors.purple[700],
            radius: BorderRadius.circular(32.0),
          ),
        ],
      ).show();
  }


