import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase2/arvore_cintia/Dia3/resultado_arvore_cintia_dia3_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class ArvoreCintiaDia3Page extends StatefulWidget {
  @override
  _ArvoreCintiaDia3State createState() => _ArvoreCintiaDia3State();
}

class _ArvoreCintiaDia3State extends State<ArvoreCintiaDia3Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Cíntia ouvia algumas coisas de sua mãe, de seu pai e de seus irmãos. Cíntia ouvia algumas coisas de sua mãe, de seu pai e de seus ...",
    //Pergunta 2
    "Você conversa quando não concorda com alguma coisa?",
    //Pergunta 3
    "O que você vê nessa página?",
    //Pergunta 4
    "Onde os sentimentos estavam?",
    //Pergunta 5
    "Para que serve o coração?",
    //Pergunta 6
    "Você lembra onde as sementes foram parar?",
    //Pergunta 7
    "Ao acordar, como Cíntia estava se sentindo?",
    //Pergunta 8
    "O que pode ser usado para plantar uma semente?",
    //Pergunta 9
    "Você lembra onde as sementes estavam espalhadas?",
    //Pergunta 10
    "O que você pode fazer no quintal?",
    //Pergunta 11
    "Você já plantou uma árvore?",
    //Pergunta 12
    "Estava tudo de que Cíntia mais gostava: seus brinquedos antigos e novos, suas ideias, as músicas preferidas e corações de papel. Estava tudo de que Cíntia mais gostava: seus brinquedos antigos e novos, suas ideias, as músicas preferidas e corações de ...",
    //Pergunta 13
    "O que é isso?",
    //Pergunta 14
    "Para que serve isso?",
     //Pergunta 15
    "Como Cíntia se sentiu embaixo da sombra refrescante?",
    //Pergunta 16
    "O que você vê nessa página?",      
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Urso de pelúcia", "Livros", "Irmãos", 
    "", "", "",
    "Estrelas", "Corações", "Sol", 
    "Na cadeira", "No travesseiro", "No coração", 
    "Para bater", "Para nadar", "Para pedalar",
    "No computador", "No copo", "No travesseiro", 
    "Assustada", "Aliviada", "Angustiada", 
    "Pá", "Prato", "Garfo", 
    "Na caixa", "Na cama", "Na geladeira", 
    "Passear", "Comprar roupas", "Brincar", 
    "", "", "", 
    "Papel", "Madeira", "Ferro",  
    "Anel", "Óculos", "Cartão", 
    "Para comer", "Para convidar", "Para pintar", 
    "Surpresa", "Chateada", "Fascinada", 
    "Casaco", "Maçã", "Árvore", 
    ];
  List<String> listaRespostas = [
    "Irmãos", 
    "",
    "Corações",
    "No coração",
    "Para bater",
    "No travesseiro",
    "Aliviada",
    "Pá",
    "Na cama",
    "Brincar",
    "",
    "Papel",
    "Cartão",
    "Para convidar",
    "Fascinada",
    "Árvore",
    ];
  
   List<Image> listaImagens = [
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem1.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem3.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem1.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem3.png",
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
      "imagens/ArvoreCintia/Dia 03/Imagem4.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem5.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem6.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem7.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem8.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem9.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem11.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem10.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem12.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem13.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem14.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem15.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem16.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem17.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem18.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem21.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem20.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem19.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem22.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem23.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem24.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem25.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem26.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem27.png",
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
      "imagens/ArvoreCintia/Dia 03/Imagem29.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem28.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem30.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem31.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem32.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem33.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem34.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem35.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem36.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem37.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem38.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem39.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem40.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem42.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/ArvoreCintia/Dia 03/Imagem41.png",
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
            ResultadoArvoreCintiaDia3Page(
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
        Navigator.pushNamed(context, "/ArvoreCintiaPrincipalPage");
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
            child: Text("A árvore de Cíntia",
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
