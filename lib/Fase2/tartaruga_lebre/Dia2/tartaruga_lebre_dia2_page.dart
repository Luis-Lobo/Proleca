import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase2/tartaruga_lebre/Dia2/resultado_tartaruga_lebre_dia2_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class TartarugaLebreDia2Page extends StatefulWidget {

  @override
  _TartarugaLebreDia2State createState() => _TartarugaLebreDia2State();
}

class _TartarugaLebreDia2State extends State<TartarugaLebreDia2Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Ninguém é páreo para mim! Eu sou a mais rápida da floresta! Ninguém é páreo para mim! Eu sou a mais rápida da ... ?",   
    //Pergunta 2
    "O que é isso?",
    //Pergunta 3
    "Para que serve o óculos?",
    //Pergunta 4
    "O que está acontecendo aqui?",
    //Pergunta 5
    "Como a Lebre estava se sentindo?",
    //Pergunta 6
    "Você costuma apostar corrida com algum amigo?",
    //Pergunta 7
    "O que a tartaruga pode fazer para ganhar a corrida da Lebre?",
    //Pergunta 8
    "Você lembra o que o esquilo falou no momento da largada da corrida?",
    //Pergunta 9
    "Onde o casco da tartaruga ficou grudado?",
    //Pergunta 10
    "Para que serve o chão?",
    //Pergunta 11
    "A lebre, quando viu que a concorrente já tinha tomado certa distância, despediu-se da zebra. A lebre, quando viu que a concorrente já tinha tomado certa distância, despediu-se da ... ?",
    //Pergunta 12
    "O que você vê nessa página?",
    //Pergunta 13
    "Você costuma ter sono profundo?",
     //Pergunta 14
    "Como a Lebre se sentiu ao ver a tartaruga chegando primeiro?",
    //Pergunta 15
    "Você lembra o que a Lebre estava fazendo encostada na árvore?",      
    //Pergunta 16
    "O que a tartaruga pode fazer após a sua vitória?"
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Floresta", "Corrida", "Natação",
    "Relógio", "Bolo", "Óculos",
    "Enxergar", "Beber", "Ensaboar", 
    "Limpeza", "Conversa", "Concerto", 
    "Medo", "Zangada", "Confiante", 
    "", "", "",
    "Ir ao mercado", "Ir de carro", "Ir de barco", 
    "Comer poeira", "Adeus", "Olá", 
    "Mar", "Chão", "Montanha", 
    "Limpar", "Comer", "Lamber", 
    "Macaco", "Vaca", "Zebra", 
    "Cavalo", "Lobo", "Tartaruga", 
    "", "", "", 
    "Cansada", "Assustada", "Triste", 
    "Dormindo", "Comendo", "Bebendo", 
    "Bolo", "Sabão", "Comemorar", 
    ];
  List<String> listaRespostas = [
    "Floresta", 
    "Óculos",
    "Enxergar",
    "Conversa",
    "Confiante",
    "",
    "Ir de carro",
    "Comer poeira",
    "Chão",
    "Limpar",
    "Zebra",
    "Tartaruga",
    "",
    "Assustada",
    "Dormindo",
    "Comemorar",
    ];
  
  List<Image> listaImagens = [
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/floresta.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/corrida.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/natacao.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/floresta.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/corrida.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/natacao.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/relogio.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/bolo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/oculos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/enxergar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/beber.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/ensaboar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/limpeza.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/conversa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/concerto.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/medo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/zangada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/confiante.png",
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
    ),Image.asset(
      "imagens/TartarugaLebre/Dia 02/iraomercado.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/irdecarro.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/irdebarco.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/comerpoeira.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/adeus.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/ola.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/mar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/chao.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/montanha.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/limpar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/comer.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/lamber.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/macaco.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/vaca.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/zebra.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/cavalo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/lobo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/tartaruga.png",
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
      "imagens/TartarugaLebre/Dia 02/cansada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/assustada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/triste.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/dormindo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/comendo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/bebendo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/bolo2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/sabao.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 02/comemorar.png",
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
            ResultadoTartarugaLebreDia2Page(
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
