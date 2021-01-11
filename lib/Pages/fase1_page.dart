import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/Fase1/cigarra_formiga/Cigarra_Formiga_Principal_page.dart';
import 'package:proleca/util/size_config.dart';

class Fase1Page extends StatefulWidget {
  @override
  _Fase1PageState createState() => _Fase1PageState();
}

class _Fase1PageState extends State<Fase1Page> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final GoogleSignIn _gSignIn =  GoogleSignIn();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).textScaleFactor * 64),
        child: AppBar(
          leading: GestureDetector(
            child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            onTap: () {
               Navigator.pushNamedAndRemoveUntil(context, "/home", (_)=>false);
            },
          ),
          title: Center(
            child: Text("Lista de histórias da fase 1",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).textScaleFactor * 28,
              )),
          ),
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
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 24),
                      ),
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, "/home", (_)=>false);
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
                        'Sobre o Proleca +',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 24),
                      ),
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, "/sobre", (_)=>false);
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
                        'Sair do Proleca +',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 24),
                      ),
                      onPressed: () {
                        _gSignIn.disconnect();
                        print('Signed out');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
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
      ),
      body: Container(
             child: ListView(
              children: <Widget>[
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Image.asset('imagens/leitura.png'),
                    title: Text("História 1",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).textScaleFactor * 24,
                      )),
                    onTap: () {
                    Navigator.pushNamed(context, "/CigarraFormigaPrincipalPage");
                    },
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Image.asset('imagens/leitura.png'),
                    title: Text("História 2",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).textScaleFactor * 24,
                      )),
                    onTap: () {
                      Navigator.pushNamed(context, "/MonstroCamaPrincipalPage");
                    },
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Image.asset('imagens/leitura.png'),
                    title: Text("História 3",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).textScaleFactor * 24,
                      )),
                    onTap: () {
                      Navigator.pushNamed(context, "/RatosPrincipalPage");
                    },
                  ),
                ),
              ],
            ),
      ),      
    );
  }
}