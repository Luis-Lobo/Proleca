import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase2/cotovia/Dia2/resultado_cotovia_dia2_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class CotoviaDia2Page extends StatefulWidget {

  @override
  _CotoviaDia2State createState() => _CotoviaDia2State();
}

class _CotoviaDia2State extends State<CotoviaDia2Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "O que é isso?",   
    //Pergunta 2
    "Para que serve isso?",
    //Pergunta 3
    "Aqui é o lugar perfeito pra fazer o meu ninho e proteger meus ovos. Aqui é o lugar perfeito para fazer o meu ninho e proteger meus ovos...",
    //Pergunta 4
    "O que você vê nessa página?",
    //Pergunta 5
    "Você já viu um lago?",
    //Pergunta 6
    "Como a cotovia está se sentindo?",
    //Pergunta 7
    "O que se pode plantar em uma fazenda?",
    //Pergunta 8
    "O que os filhotes estão fazendo aqui?",
    //Pergunta 9
    "O que o fazendeiro e seu filho tinham nos pés?",
    //Pergunta 10
    "Para que serve uma bota?",
    //Pergunta 11
    "O fazendeiro e seu filho foram verificar como estava a plantação. O fazendeiro e o seu filho foram verificar como estava a ...",
    //Pergunta 12
     "Você lembra o que o fazendeiro e o seu filho estavam fazendo?",
    //Pergunta 13
    "Após a conversa com a cotovia, como os filhotes se sentiram?",
     //Pergunta 14
    "Você já foi dormir preocupado com alguma coisa?",
    //Pergunta 15
    "O que os amigos do fazendeiro podem ajudá-lo a colher?",      
    //Pergunta 16
    "16-Você lembra o que a cotovia recomendou aos filhotes?"
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Rua", "Árvore", "Barco",
    "Congelar", "Digitar", "Dar frutos",
    "Tesouros", "Ovos", "Sapatos", 
    "Campos", "Mar", "Lago", 
    "", "", "", 
    "Irritada", "Contente", "Espantada",
    "Baleia", "Pedras", "Trigo", 
    "Estudando", "Ouvindo", "Brincando", 
    "Botas", "Tênis", "Chinelos", 
    "Beber", "Calçar", "Comer", 
    "Comida", "Suco", "Plantação", 
    "Cozinhando", "Conversando", "Passeando", 
    "Tristes", "Calmos", "Irritados", 
    "", "", "", 
    "Colher maçãs", "Colher cenouras", "Colher trigo", 
    "Dormissem", "Ouvissem a conversa", "Comessem o trigo", 
    ];
  List<String> listaRespostas = [
    "Árvore", 
    "Dar frutos",
    "Ovos",
    "Lago",
    "",
    "Contente",
    "Trigo",
    "Ouvindo",
    "Botas",
    "Calçar",
    "Plantação",
    "Conversando",
    "Calmos",
    "",
    "Colher trigo",
    "Ouvissem a conversa",
    ];
  
  List<Image> listaImagens = [
    Image.asset(
      "imagens/Cotovia/Dia 02/rua.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/árvore.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/barco.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/Cotovia/Dia 02/rua.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/árvore.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/barco.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/congelar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/digitar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/darfrutos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/tesouros.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/ovos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/sapatos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/campo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/mar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/lago.png",
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
      "imagens/Cotovia/Dia 02/irritada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/contente.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/espantada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/baleia.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/pedras.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/trigo.png",
      fit: BoxFit.contain,
    ),Image.asset(
      "imagens/Cotovia/Dia 02/estudando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/ouvindo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/brincando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/botas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/tênis.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/chinelos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/beber.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/calçar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/comer.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/comida.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/suco.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/plantação.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/cozinhando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/conversando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/passeando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/tristes.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/calmos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/irritados.png",
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
      "imagens/Cotovia/Dia 02/maçã.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/cenouras.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/trigo2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/dormissem.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/conversa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 02/comesssemotrigo.png",
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
            ResultadoCotoviaDia2Page(
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
        Navigator.pushNamed(context, "/CotoviaPrincipalPage");
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
            child: Text("A Cotovia e seus filhotes",
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
