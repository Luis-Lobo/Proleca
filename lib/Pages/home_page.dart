import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/Pages/sobre_page.dart';
import 'package:proleca/util/size_config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  void _fase1() {
     Navigator.pushNamed(context, "/fase1");
  } 
  void _fase2() {
    Navigator.pushNamed(context, "/fase2");
  } 

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final GoogleSignIn _gSignIn =  GoogleSignIn();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Sobre o Proleca +",
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
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: SizeConfig.safeBlockHorizontal * 30.0,
                    height: SizeConfig.safeBlockVertical * 50.0,
                    color: Colors.black,
                    child: Card(
                      color: Colors.green[700],
                      elevation: 10,
                      child: GestureDetector(
                        child: Align(
                            alignment: Alignment.center,
                            child: Text("Fase1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.safeBlockHorizontal * 3.0,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        onTap: _fase1,
                      ),
                    ),
                  ),
                  Container(
                    width: SizeConfig.safeBlockHorizontal * 30.0,
                    height: SizeConfig.safeBlockVertical * 50.0,
                    color: Colors.black,
                    child: Card(
                      color: Colors.red[700],
                      elevation: 10,
                      child: GestureDetector(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Fase2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.safeBlockHorizontal * 3.0,
                            letterSpacing: 2,
                            ),
                          ),
                        ),
                        onTap: _fase2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}