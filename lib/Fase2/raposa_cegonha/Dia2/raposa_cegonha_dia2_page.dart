import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase2/raposa_cegonha/Dia2/resultado_raposa_cegonha_Dia2_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class RaposaCegonhaDia2Page extends StatefulWidget {

  @override
  _RaposaCegonhaDia2State createState() => _RaposaCegonhaDia2State();
}

class _RaposaCegonhaDia2State extends State<RaposaCegonhaDia2Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Quem vive na floresta?",   
    //Pergunta 2
    "Para que eles servem?",
    //Pergunta 3
    "Você lembra quem é Dora?",
    //Pergunta 4
    "A raposa Dora se mostrou muito simpática e fez um convite. A raposa Dora se mostrou muito simpática e fez um ...",
    //Pergunta 5
    "Qual prato especial você gosta de comer?",
    //Pergunta 6
    "O que a raposa faz para deixar a casa organizada?",
    //Pergunta 7
    "O que está acontecendo aqui?",
    //Pergunta 8
    "Além de faminta, como a Lila se sentiu?",
    //Pergunta 9
    "Onde a raposa levou a cegonha?",
    //Pergunta 10
    "Para que serve a porta?",
    //Pergunta 11
    "Você já recebeu um convite?",
    //Pergunta 12
     "O que a raposa pode fazer para o jantar?",
    //Pergunta 13
    "Como a raposa se sentiu ao ver a refeição dentro de um vaso comprido?",
     //Pergunta 14
    "Você lembra o que Dora tentou colocar no fundo do jarro?",
    //Pergunta 15
    "No dia seguinte, Dora chegou faminta a casa. No dia seguinte, Dora chegou faminta a ...",      
    //Pergunta 16
    "O que está acontecendo aqui?"
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Robô", "Animais", "Pessoas",
    "Escrever", "Dirigir", "Caçar",
    "Rato", "Cegonha", "Raposa", 
    "Convite", "Sol", "Lápis", 
    "", "", "", 
    "Come", "Suja", "Limpa",
    "Ligação", "Refeição", "Lâmpada", 
    "Triste", "Preocupado", "Feliz", 
    "Escola", "Parque", "Porta", 
    "Fechar", "Alimentar", "Igreja", 
    "", "", "", 
    "Macarronada", "Pão", "Peixe", 
    "Desesperado", "Irritado", "Feliz", 
    "Pata", "Focinho", "Rato", 
    "Prédio", "Circo", "Casa", 
    "Preocupação", "Despedida", "Contente", 
    ];
  List<String> listaRespostas = [
    "Animais", 
    "Caçar",
    "Raposa",
    "Convite",
    "",
    "Limpa",
    "Refeição",
    "Triste",
    "Porta",
    "Fechar",
    "",
    "Pão",
    "Desesperado",
    "Focinho",
    "Casa",
    "Despedida",
    ];
  
  List<Image> listaImagens = [
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/ROBO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/ANIMAIS.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/PESSOAS.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/ROBO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/ANIMAIS.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/PESSOAS.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/ESCREVER.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/DIRIGIR.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/CAÇAR.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/RATO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/CEGONHA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/RAPOSA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/CONVITE.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/SOL.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/LAPIS.png",
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
      "imagens/RaposaCegonha/Dia 02/COME.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/SUJA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/LIMPA.png",
      fit: BoxFit.contain,
    ),Image.asset(
      "imagens/RaposaCegonha/Dia 02/LIGACAO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/REFEICAO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/LAMPADA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/TRISTE.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/PREOCUPADO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/FELIZ.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/ESCOLA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/PARQUE.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/PORTA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/FECHAR.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/ALIMENTAR.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/IGREJA.png",
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
      "imagens/RaposaCegonha/Dia 02/MACARRONADA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/PAO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/PEIXE.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/DESESPERADO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/IRRITADO1.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/FELIZ1.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/PATA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/FOUCINHO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/RABO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/PREDIO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/CIRCO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/CASA1.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/PREOCUPACAO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/DESPEDIDA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 02/CONTENTE.png",
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
            ResultadoRaposaCegonhaDia2Page(
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
        Navigator.pushNamed(context, "/RaposaCegonhaPrincipalPage");
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
            child: Text("A Raposa e a Cegonha",
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
