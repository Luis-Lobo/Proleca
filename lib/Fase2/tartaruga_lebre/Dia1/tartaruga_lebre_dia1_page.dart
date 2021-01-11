import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase2/tartaruga_lebre/Dia1/resultado_tartaruga_lebre_dia1_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class TartarugaLebreDia1Page extends StatefulWidget {

  @override
  _TartarugaLebreDia1State createState() => _TartarugaLebreDia1State();
}

class _TartarugaLebreDia1State extends State<TartarugaLebreDia1Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Você já viu uma lebre?",   
    //Pergunta 2
    "O que a tartaruga pode fazer para convencer os animais?",
    //Pergunta 3
    "Como a Lebre estava se sentindo?",
    //Pergunta 4
    "Onde a Lebre está encostada?",
    //Pergunta 5
    "Para que serve a árvore?",
    //Pergunta 6
    "A tartaruga e a lebre se apresentaram animadas. A tartaruga e a lebre se apresentaram ... ?",
    //Pergunta 7
    "O que está acontecendo aqui?",
    //Pergunta 8
    "Você lembra quem a lebre estava convidando para ver sua vitória?",
    //Pergunta 9
    "Você já viu uma nuvem de poeira?",
    //Pergunta 10
    "A tartaruga continuou seu percurso concentrada. A tartaruga continuou seu percurso ... ?",
    //Pergunta 11
    "O que é isso?",
    //Pergunta 12
    "Para que serve isso?",
    //Pergunta 13
    "Você lembra com quem a Lebre conversou durante a corrida?",
     //Pergunta 14
    "O que está acontecendo aqui?",
    //Pergunta 15
    "Como a tartaruga está se sentindo?",      
    //Pergunta 16
    "O que a tartaruga pode fazer com esse troféu?"
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "", "", "",
    "Nadar", "Correr", "Dormir",
    "Triste", "Nervosa", "Feliz", 
    "Árvore", "Escada", "Espelho", 
    "Dar sombra", "Viajar", "Escovar", 
    "Cansadas", "Animadas", "Raivosas",
    "Corrida", "Dança", "Pintura", 
    "Crianças", "Bichos", "Adultos", 
    "", "", "", 
    "Nervosa", "Alegre", "Concentrada", 
    "Vaca", "Pássaro", "Jacaré", 
    "Voar", "Trabalhar", "Lutar", 
    "Zebra", "Gato", "Porco", 
    "Voando", "Comendo", "Dormindo", 
    "Animada", "Raivosa", "Cansada", 
    "Comer", "Guardar", "Beber", 
    ];
  List<String> listaRespostas = [
    "", 
    "Correr",
    "Feliz",
    "Árvore",
    "Dar sombra",
    "Animadas",
    "Corrida",
    "Bichos",
    "",
    "Concentrada",
    "Pássaro",
    "Voar",
    "Zebra",
    "Dormindo",
    "Animada",
    "Guardar",
    ];
  
  List<Image> listaImagens = [
    Image.asset(
      "imagens/sim.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/nao.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/talvez.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/sim.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/nao.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/talvez.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/Nadar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/correr.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/dormir.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/triste.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/nervosa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/feliz.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/arvore.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/escada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/espelho.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/dar sombra.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/viajar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/escovar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/cansadas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/animadas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/raivosas.png",
      fit: BoxFit.contain,
    ),Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/corrida.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/dança.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/pintura.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/crianças.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/bichos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/adultos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/sim.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/nao.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/talvez.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/nervosa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/alegre.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/concentrada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/vaca.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/passaro.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/jacare.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/voar.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/trabalhar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/lutar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/zebra.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/gato.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/porco.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/voando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/comendo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/dormindo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/animada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/raivosa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/cansada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/comer.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/guardar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 01 e 04/beber.png",
      fit: BoxFit.contain,
    ),
  ];
  
  Image imagemRemovida = Image.asset(
    "imagens/imagemRemovida.png",
      fit: BoxFit.contain,
    );

  List<String> listaTentativas = [];
  String pergunta;
  String respostaCerta;
  int _indiceQuestao = 0;
  int _indiceTri = 0;
  int pontosTentativa1 = 0;
  int pontosTentativa2 = 0;
  int pontosTentativa3 = 0;
  int contador = 3;
  List<int> pontuacaoAnterior;

  @override
  void initState() {
    pontuacaoAnterior =[];
    pergunta = listaPerguntas[0];
    respostaCerta = listaRespostas[0];

    listaImagens[0] = listaImagensTotal[0];
    listaImagens[1] = listaImagensTotal[1];
    listaImagens[2] = listaImagensTotal[2];

    listaNomes[0] = listaNomesTotal[0];
    listaNomes[1] = listaNomesTotal[1];
    listaNomes[2] = listaNomesTotal[2];
  }

  _proximaPergunta() {
    setState(() {
      contador = 3;
      int ultimoIndice = listaPerguntas.length - 1;
      if ( _indiceQuestao < ultimoIndice ) {

        _indiceQuestao++;
        _indiceTri = _indiceTri + 3; 

        listaImagens[0] = listaImagensTotal[0 + _indiceTri];
        listaImagens[1] = listaImagensTotal[1 + _indiceTri];
        listaImagens[2] = listaImagensTotal[2 + _indiceTri];
        
        listaNomes[0] = listaNomesTotal[0 + _indiceTri];
        listaNomes[1] = listaNomesTotal[1 + _indiceTri];
        listaNomes[2] = listaNomesTotal[2 + _indiceTri];

        pergunta = listaPerguntas[ _indiceQuestao ];
        respostaCerta = listaRespostas[ _indiceQuestao ];

      } else {
        Navigator.push( context, 
          MaterialPageRoute(builder: (context) => 
            ResultadoTartarugaLebreDia1Page(
              pontosTentativa1: pontosTentativa1,
              pontosTentativa2: pontosTentativa2,
              pontosTentativa3: pontosTentativa3,
              listaPerguntas: listaPerguntas,
              listaTentativas: listaTentativas,
            )));
      }
    });
  }

  _anteriorPergunta() {
    setState(() {
      contador = 3;
      int ultimoIndice = listaPerguntas.length - 1;
      if ( _indiceQuestao <= ultimoIndice && _indiceQuestao > 0) {

        _indiceQuestao--;
        _indiceTri = _indiceTri - 3; 

        pergunta = listaPerguntas[ _indiceQuestao  ];
        respostaCerta = listaRespostas[ _indiceQuestao ];

        listaImagens[0] = listaImagensTotal[0 + _indiceTri];
        listaImagens[1] = listaImagensTotal[1 + _indiceTri];
        listaImagens[2] = listaImagensTotal[2 + _indiceTri];
        
        listaNomes[0] = listaNomesTotal[0 + _indiceTri];
        listaNomes[1] = listaNomesTotal[1 + _indiceTri];
        listaNomes[2] = listaNomesTotal[2 + _indiceTri];

        if (pontuacaoAnterior[_indiceQuestao] == 3){
          pontosTentativa1 = pontosTentativa1 - 3;
        }
        if (pontuacaoAnterior[_indiceQuestao] == 2){
          pontosTentativa2 = pontosTentativa2 - 2;
        }
        if (pontuacaoAnterior[_indiceQuestao] == 1){
          pontosTentativa3 = pontosTentativa3 - 1;
        }

        pontuacaoAnterior.removeLast();
        listaTentativas.removeLast();
        
        if (pontosTentativa1 < 0) {
          pontosTentativa1 = 0;
        }
        if (pontosTentativa2 < 0) {
          pontosTentativa2 = 0;
        }
        if (pontosTentativa3 < 0) {
          pontosTentativa3 = 0;
        }
        
        print("lista = ${pontuacaoAnterior.remove(pontuacaoAnterior.length - 1)}");
      } else {
        Navigator.pushNamed(context, "/TartarugaLebrePrincipalPage");
      }
    });
        print('${pergunta}');
        print('${respostaCerta}');     
  }

  @override
  Widget build(BuildContext context) {
    print(listaNomes);
    print("Resposta Certa: ${respostaCerta}");
    print("contador = ${contador}");
    print("indice = ${pontuacaoAnterior}");
    SizeConfig().init(context);
    final GoogleSignIn _gSignIn =  GoogleSignIn();
    return Scaffold(
      backgroundColor: Colors.purple[400],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).textScaleFactor * 64),
        child: AppBar(
          leading: GestureDetector(
            child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            onTap: () {
              _anteriorPergunta();
            },
          ),
          title: Center(
            child: Text("A Tartaruga e a Lebre",
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: SizeConfig.safeBlockVertical * 2),
            Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockVertical),
              child: Center(
                child: Text(pergunta,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.safeBlockVertical * 6)),
              ),
            ),
        //    SizedBox(height: SizeConfig.safeBlockVertical * 4),
            Center(
              child: Container(
                padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                bottom: MediaQuery.of(context).size.width * 0.2),
                height: MediaQuery.of(context).size.height - 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: listaImagens.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Card(
                        color: Colors.purple[700],
                        shadowColor: Colors.blue,
                        elevation: 5,
                        child: ListTile(
                            title: listaImagens[index],
                            subtitle: Text(listaNomes[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: SizeConfig.safeBlockVertical * 5,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                            onTap: () {
                              if (listaNomes[index] == respostaCerta && respostaCerta != "") {
                                if (contador == 3) {
                                  alertaRespostaCerta(context);
                                  listaTentativas.add("Acertou na primeira tentativa. Resposta: ${respostaCerta}.");
                                  setState(() {
                                  pontosTentativa1 = pontosTentativa1 + 3;
                                  _proximaPergunta();
                                  pontuacaoAnterior.add(3);
                                  });
                                }
                                if (contador == 2) {
                                  alertaRespostaCerta(context);
                                  listaTentativas.add("Acertou na segunda tentativa. Resposta: ${respostaCerta}.");
                                  setState(() {
                                  pontosTentativa2 = pontosTentativa2 + 2;
                                  _proximaPergunta();
                                  pontuacaoAnterior.add(2);
                                  });
                                }
                                if (contador == 1) {
                                  alertaRespostaCerta(context);
                                  listaTentativas.add("Acertou na terceira tentativa. Resposta: ${respostaCerta}.");
                                  setState(() {
                                  pontosTentativa3 = pontosTentativa3 + 1;
                                  _proximaPergunta();
                                  pontuacaoAnterior.add(1);
                                });
                                }
                              } else if (respostaCerta == ""){
                                  listaTentativas.add("Não existe resposta certa");
                                  _proximaPergunta();
                                  pontuacaoAnterior.add(0);
                                } else {
                                setState(() {
                                  listaNomes[index] = "";
                                  listaImagens[index] = imagemRemovida;
                                  contador--;
                                  if (contador == 0){
                                    contador = 1;
                                  }
                                });
                              }
                              print(listaTentativas);
                            }),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: SizeConfig.safeBlockHorizontal,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.05),
          child: Row(
            children: <Widget>[
              Text(
                  "Pontuação:   "
                  "Primeira: ${pontosTentativa1}   " 
                  "Segunda: ${pontosTentativa2}    "
                  "Terceira: ${pontosTentativa3}   ",
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.safeBlockVertical * 4
                    )),
            ],
          ),
      ),
    );
  }
}
