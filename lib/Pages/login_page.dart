import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Pages/telaPerfil_page.dart';
import 'package:proleca/models/usuarioDetalhes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googlSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signIn(BuildContext context) async {
  
   Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text('Sign in'),
        ));

    final GoogleSignInAccount googleUser = await _googlSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =await googleUser.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

  FirebaseUser usuarioDetalhes = await _firebaseAuth.signInWithCredential(credential);
  FornecerDetalhes providerInfo = new FornecerDetalhes(usuarioDetalhes.providerId);

List<FornecerDetalhes> providerData = new List<FornecerDetalhes>();
    providerData.add(providerInfo);

    UsuarioDetalhes details = new UsuarioDetalhes(
       usuarioDetalhes.providerId,
       usuarioDetalhes.displayName,
       usuarioDetalhes.photoUrl,
       usuarioDetalhes.email,
      providerData,
);
    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => new TelaPerfilPage(usuarioDetalhes: details),
      ),
    );
    return usuarioDetalhes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset('imagens/proleca_mais.jpg',
                fit: BoxFit.fill,
                color: Color.fromRGBO(255,255, 255, 0.6),
                colorBlendMode: BlendMode.modulate,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height * 0.60),
                Container(
                  width: 250,
                  child: Align(
                    alignment: Alignment.center,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    color: Color(0xffffffff),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                      Icon(FontAwesomeIcons.google,color: Color(0xffCE107C),),
                      SizedBox(width:10.0),
                      Text(
                      'Sign in with Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                          ),
                        ]
                      ),
                      onPressed: () => _signIn(context)
                                        .then((FirebaseUser user) => print(user))
                                        .catchError((e) => print(e)),
                    ),
                  ),
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}