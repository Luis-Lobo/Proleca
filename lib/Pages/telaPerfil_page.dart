import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/models/usuarioDetalhes.dart';

class TelaPerfilPage extends StatefulWidget {
  final UsuarioDetalhes usuarioDetalhes;

  TelaPerfilPage({Key key, @required this.usuarioDetalhes}) : super(key: key); 

  @override
  _TelaPerfilPageState createState() => _TelaPerfilPageState();
}

class _TelaPerfilPageState extends State<TelaPerfilPage> {
  @override
  Widget build(BuildContext context) {
    final GoogleSignIn _gSignIn =  GoogleSignIn();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple[700],
      //    title:  Text(widget.usuarioDetalhes.nomeUsuario),
          title: Center(
            child: Text(
                  "${widget.usuarioDetalhes.nomeUsuario}, seja bem vindo(a) ao Proleca + !",
                  style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 22.0),
                ),
          ),
          automaticallyImplyLeading: false,
          actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.signOutAlt,
              size: 20.0,
              color: Colors.white,
            ),
            onPressed: (){
               _gSignIn.signOut();
              print('Signed out');
               Navigator.pop(context);
            },
          ),
        ],
        ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                //backgroundImage:NetworkImage(widget.usuarioDetalhes.fotoUrl),
                radius: 70.0,
                backgroundImage: AssetImage("imagens/proleca_mais.jpg"),
              ),
              SizedBox(height:10.0),
        /*       Text(
                "Nome : " + widget.usuarioDetalhes.nomeUsuario,
                style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20.0),
              ),
              SizedBox(height:10.0),
               Text(
                "Email : " + widget.usuarioDetalhes.emailUsuario,
                style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20.0),
              ),
              SizedBox(height:10.0),
              Text(
                "Provider : " + widget.usuarioDetalhes.fornecerDetalhes,
                style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20.0),
              ),*/
              RaisedButton(
                color: Colors.purple[700],
                child: Text("Próximo", 
                style:  TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: Colors.white, 
                  fontSize: 22.0),
                ),
                onPressed: () {
                   Navigator.pushNamedAndRemoveUntil(context, "/home", (_)=>false);
                }
              )
            ],
          ),
        ),
    );
  }
}
