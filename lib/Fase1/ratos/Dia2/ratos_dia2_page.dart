import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase1/ratos/Dia2/resultado_ratos_dia_2_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class RatosDia2Page extends StatefulWidget {
  @override
  _RatosDia2State createState() => _RatosDia2State();
}

class _RatosDia2State extends State<RatosDia2Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Onde o ratinho Zé vivia?",   
    //Pergunta 2
    "Para que serve o campo?",
    //Pergunta 3
    "Como o Zé está se sentindo?",
    //Pergunta 4
    "Você já recebeu um convite para ir na casa de um amigo?",
    //Pergunta 5
    "Como o ratinho do campo se sentiu?",
    //Pergunta 6
    "O que você vê nessa página?",
    //Pergunta 7
    "Os dois partiram em direção a cidade. Os dois partiram em direção a...?",
    //Pergunta 8
    "O que você acha que tem na dispensa?",
    //Pergunta 9
    "O que tá acontecendo nessa página?",
    //Pergunta 10
    "Você lembra quem abriu a porta e entrou na dispensa acompanhado do seu gato?",
    //Pergunta 11
    "Para onde o ratinho Dom arrastou o ratinho Zé?",
    //Pergunta 12
    "Para que serve um buraco?",
    //Pergunta 13
    "O que o gato queria fazer com os ratinhos?",
    //Pergunta 14
    "Você costuma arrumar os alimentos na dispensa da sua casa?",
    //Pergunta 15
    "Depois que entraram em casa, você lembra pra onde os ratinhos foram?",
    //Pergunta 16
    "Desculpe Dom, mas eu vou voltar para a minha casinha caipira. Desculpe Dom, mas eu vou voltar para a minha casinha...",      
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Trem", "Campo", "Sol", 
    "Fogo", "Pirulito", "Plantar",
    "Feliz", "Cansado", "Irritado", 
    "", "", "", 
    "Bravo", "Contente", "Triste", 
    "Caminhão", "Mala", "Baú", 
    "Lápis", "Galinha", "Cidade",
    "Comida", "Árvore", "Lâmpada", 
    "Nadando", "Correndo", "Comendo", 
    "Homem", "Leão", "Mulher", 
    "Banana", "Bicicleta", "Buraco",
    "Dormir", "Cair", "Voar",
    "Pulseira", "Balão", "Comer", 
    "", "", "", 
    "Dispensa", "Maçã", "Cadeira", 
    "Urso", "Caipira", "Avião", 
    ];
  List<String> listaRespostas = [
    "Campo", 
    "Plantar",
    "Feliz",
    "",
    "Triste",
    "Mala",
    "Cidade",
    "Comida",
    "Correndo",
    "Homem",
    "Buraco",
    "Cair",
    "Comer",
    "",
    "Dispensa",
    "Caipira",
    ];

    List<Image> listaImagens = [
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem44.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem45.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem46.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem44.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem45.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem46.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem47.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem48.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem49.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem50.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem51.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem52.png",
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
      "imagens/Ratos/Dia 02/Imagem53.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem54.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem55.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem56.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem57.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem58.png",
      fit: BoxFit.contain,
    ),Image.asset(
      "imagens/Ratos/Dia 02/Imagem59.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem60.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem61.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem62.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem63.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem64.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem65.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem66.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem67.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem68.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem69png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem70.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem71.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem72.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem73.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem74.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem75.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem76.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem77.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem78.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem79.png",
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
      "imagens/Ratos/Dia 02/Imagem80.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem81.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem82.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem83.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem84.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 02/Imagem85.png",
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
        print("indice + ${_indiceTri}");

        listaImagens[0] = listaImagensTotal[0 + _indiceTri];
        listaImagens[1] = listaImagensTotal[1 + _indiceTri];
        listaImagens[2] = listaImagensTotal[2 + _indiceTri];
        
        listaNomes[0] = listaNomesTotal[0 + _indiceTri];
        listaNomes[1] = listaNomesTotal[1 + _indiceTri];
        listaNomes[2] = listaNomesTotal[2 + _indiceTri];

        pergunta = listaPerguntas[ _indiceQuestao  ];
        respostaCerta = listaRespostas[ _indiceQuestao ];

      } else {
        Navigator.push( context, 
          MaterialPageRoute(builder: (context) => 
            ResultadoRatosDia2Page(
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
        Navigator.pushNamed(context, "/RatosPrincipalPage");
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
            child: Text("O rato do campo e o rato da cidade",
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
