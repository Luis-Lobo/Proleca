import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase1/cigarra_formiga/Dia3/resultado_cigarra_formiga_dia3_page.dart';
import 'package:proleca/Fase1/monstro_cama/Dia3/resultado_monstro_cama_dia3_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class MonstroCamaDia3Page extends StatefulWidget {
  @override
  _MonstroCamaDia3State createState() => _MonstroCamaDia3State();
}

class _MonstroCamaDia3State extends State<MonstroCamaDia3Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Quando estou deitado e de pijama, escuto um barulho, um barulho assustador. Quando estou deitado e de pijama, escuto um barulho, um barulho a...",
    //Pergunta 2
    "O que é isso?",
    //Pergunta 3
    "Para que serve isso?",
    //Pergunta 4
    "Você já ficou sem tomar banho?",
    //Pergunta 5
    "Você lembra como eram as garras afiadas da criatura?",
    //Pergunta 6
    "O que está acontecendo aqui?",
    //Pergunta 7
    "O que pode acontecer com a criatura na estante?",
    //Pergunta 8
    "Como o garoto está se sentindo?",
    //Pergunta 9
    "O que pode acontecer com a criatura após ter engolido o ursinho de pelúcia?",
    //Pergunta 10
    "Você costuma deixar suas roupas no chão?",
    //Pergunta 11
    "Como o monstro estava se sentindo?",
    //Pergunta 12
    "Você é o monstro que fica em cima da cama. Você é o monstro que fica em cima da...",
    //Pergunta 13
    "O que é isso?",
    //Pergunta 14
    "Para que serve isso?",
     //Pergunta 15
    "Você lembra o que o monstro fazia durante as noites?",
    //Pergunta 16
    "O que o menino está fazendo aqui?",      
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Alto", "Assustador", "Baixo", 
    "Pote", "Bola", "Bolsa",
    "Jogar", "Esquiar", "Escalar", 
    "", "", "", 
    "Aberto", "Longas", "Fechado",
    "Arroto", "Dança", "Caminhada", 
    "Dormir", "Viajar", "Cair", 
    "Entusiasmado", "Espantado", "Feliz", 
    "Passear", "Adoecer", "Correr", 
    "", "", "", 
    "Alegre", "Irritado", "Com medo", 
    "Cama", "Mesa", "Armário",  
    "Caneta", "Raquete", "Vassoura", 
    "Assistir TV", "Limpar", "Passar roupa", 
    "Bagunça", "Bebia", "Comia", 
    "Nadando", "Varrendo", "Meditando", 
    ];
  List<String> listaRespostas = [
    "Assustador", 
    "Bola",
    "Jogar",
    "",
    "Longas",
    "Arroto",
    "Cair",
    "Espantado",
    "Adoecer",
    "",
    "Com medo",
    "Cama",
    "Vassoura",
    "Limpar",
    "Bagunça",
    "Varrendo",
    ];
  
  List<Image> listaImagens = [
    Image.asset(
      "imagens/MonstroCama/Dia 03/alto.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/assustador.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/baixo.jpg",
      fit: BoxFit.contain,
    )
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/MonstroCama/Dia 03/alto.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/assustador.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/baixo.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/pote.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/bola.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/bolsa.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/jogar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/esquiar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/escalar.png",
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
      "imagens/MonstroCama/Dia 03/aberto.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/longas.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/fechados.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/arroto.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/dança.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/caminhada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/dormir.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/viajar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/cair.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/entusiasmado.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/espantado.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/feliz.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/passear.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/adoecer.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/correr.png",
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
      "imagens/MonstroCama/Dia 03/alegre.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/irritado.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/com medo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/cama.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/mesa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/armário.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/caneta.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/raquete.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/vassoura.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/assistir tv.png",   
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/limpar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/PASSAR ROUPA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/bagunça.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/bebia.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/comia.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/nadando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/varrendo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 03/meditando.png",
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
            ResultadoMonstroCamaDia3Page(
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
        Navigator.pushNamed(context, "/MonstroCamaPrincipalPage");
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
            child: Text("Há um monstro embaixo da minha cama",
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
