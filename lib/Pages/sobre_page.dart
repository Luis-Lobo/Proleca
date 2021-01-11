import 'package:flutter/material.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SobrePage extends StatefulWidget {
  @override
  _SobrePageState createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final GoogleSignIn _gSignIn = GoogleSignIn();
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
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.04, 
          left: MediaQuery.of(context).size.width * 0.08),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Idealizado por:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.purple[700]
            )),
            Text("Stefhanny Paulimineytrick Nascimento Silva",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text("Programado por:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.purple[700]
            )),
            Text("Luis Otávio Guedes Lobo e Silva",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text("Agradecimentos Especiais:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.purple[700]
            )),
            Text("Glaydsane Peres Carrilho de Souza Araújo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
            Text("Leila Regina d'Oliveira de Paula Nunes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
            Text("Maria Gabriela Lopes Araújo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
            Text("Ao www.arasaac.org pela liberação das imagens.",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
            Text("A Coordenação de Aperfeiçoamento de Pessoal de Nível Superior (CAPES) ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text("Email para contato:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.purple[700]
            )),
            Text("prolecamais.gmail.com",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
          ],
        ),
      ),
    );
  }
}
