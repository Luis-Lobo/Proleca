import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';

class CotoviaPrincipalPage extends StatefulWidget {
  @override
  _CotoviaPrincipalPageState createState() => _CotoviaPrincipalPageState();
}

class _CotoviaPrincipalPageState extends State<CotoviaPrincipalPage> {
 void _abrirDia1() {
   Navigator.pushNamed(context, "/CotoviaDia1Page");
  }

  void _abrirDia2() {
    Navigator.pushNamed(context, "/CotoviaDia2Page");
  }


void _abrirDia3() {
    Navigator.pushNamed(context, "/CotoviaDia3Page");
  }

void _abrirDia4() {
    Navigator.pushNamed(context, "/CotoviaDia4Page");
  } 

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final GoogleSignIn _gSignIn =  GoogleSignIn();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            onTap: () {
               Navigator.pushNamed(context, "/fase2");
            },
          ),
        title: Text("A Cotovia e seus filhotes",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).textScaleFactor * 28,
          )),
        backgroundColor: Colors.purple[700],
        actions: <Widget>[
        GestureDetector(
          child: PopupMenuButton(
            shape: Border.all(
              color: Colors.blue[700],
              width: 4,
            ),
            itemBuilder: (context) {
              var list = List<PopupMenuEntry<Object>>();
              list.add(
                PopupMenuItem(
                  child: FlatButton(
                    child: Text(
                      'Página principal',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).textScaleFactor * 24),
                    ),
                    onPressed: () {   
                      Navigator.push( context, 
                        MaterialPageRoute(builder: (context) => 
                          HomePage()));                 
                    },
                  ),
        //          value: 1,
                ),
              );
              list.add(
                PopupMenuDivider(
                  height: SizeConfig.safeBlockVertical * 2.0,
                ),
              );
              list.add(
                PopupMenuItem(
                  child: FlatButton(
                    child: Text(
                      'Sair do Proleca',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).textScaleFactor * 24),
                    ),
                    onPressed: (){
                      _gSignIn.disconnect();
                      print('Signed out');
                      Navigator.push( context, 
                        MaterialPageRoute(builder: (context) => 
                          LoginPage()));
                        },
                      ),
          //        value: 1,
                  ),
              );
              return list;
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        ], 
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Escolha um dia",
                style: TextStyle(
                  color: Colors.purple[700],
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).textScaleFactor * 24),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: _abrirDia1,
                      child: Image.asset("imagens/dia1.jpeg",
                        width: SizeConfig.safeBlockHorizontal * 30.0,
                        height: SizeConfig.safeBlockVertical * 30.0),
                    ),
                    GestureDetector(
                       onTap: _abrirDia2,
                      child: Image.asset("imagens/dia2.jpeg",
                        width: SizeConfig.safeBlockHorizontal * 30.0,
                        height: SizeConfig.safeBlockVertical * 30.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: _abrirDia3,
                      child: Image.asset("imagens/dia3.jpeg",
                        width: SizeConfig.safeBlockHorizontal * 30.0,
                        height: SizeConfig.safeBlockVertical * 30.0),
                    ),
                    GestureDetector(
                      onTap: _abrirDia4,
                      child: Image.asset("imagens/dia4.jpeg",
                        width: SizeConfig.safeBlockHorizontal * 30.0,
                        height: SizeConfig.safeBlockVertical * 30.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ), 
    );
  }
}