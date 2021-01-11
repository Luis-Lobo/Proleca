import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';

class Fase2Page extends StatefulWidget {
  @override
  _Fase2PageState createState() => _Fase2PageState();
}

class _Fase2PageState extends State<Fase2Page> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final GoogleSignIn _gSignIn =  GoogleSignIn();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(SizeConfig.safeBlockVertical * 8),
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
          title: Text("Fase 2",
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
      ),
      body: Container(
             child: ListView(
              children: <Widget>[
                Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text("A árvore de Cíntia",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).textScaleFactor * 24,
                      )),
                    onTap: () {
                      Navigator.pushNamed(context, "/ArvoreCintiaPrincipalPage");
                    },
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text("A Cotovia e seus filhotes",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).textScaleFactor * 24,
                      )),
                    onTap: () {
                      Navigator.pushNamed(context, "/CotoviaPrincipalPage");
                    },
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text("A raposa e a cegonha",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).textScaleFactor * 24,
                      )),
                    onTap: () {
                      Navigator.pushNamed(context, "/RaposaCegonhaPrincipalPage");
                    },
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text("A tartaruga e a lebre",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).textScaleFactor * 24,
                      )),
                    onTap: () {
                      Navigator.pushNamed(context, "/TartarugaLebrePrincipalPage");
                    },
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text("Estegossauro",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).textScaleFactor * 24,
                      )),
                    onTap: () {
                      Navigator.pushNamed(context, "/EstegossauroPrincipalPage");
                    },
                  ),
                ),
               Card(
                 elevation: 5,
                 child: ListTile(
                    title: Text("Um amor de cãozinho",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).textScaleFactor * 24,
                      )),
                    onTap: () {
                      Navigator.pushNamed(context, "/CaozinhoPrincipalPage");
                    },
                  ),
               ),
              ],
            ),
      ),          
    );
  }
}