import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase2/estegossauro/Dia2/resultado_estegossauro_dia2_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class EstegossauroDia2Page extends StatefulWidget {

  @override
  _EstegossauroDia2State createState() => _EstegossauroDia2State();
}

class _EstegossauroDia2State extends State<EstegossauroDia2Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Quem tem um amigo?",   
    //Pergunta 2
    "Para que serve um amigo?",
    //Pergunta 3
    "Você costuma ajudar a sua mãe a pendurar as roupas?",
    //Pergunta 4
    "O que se pode fazer durante o carnaval?",
    //Pergunta 5
    "O que você vê nessa página?",
    //Pergunta 6
    "Meus amigos e eu brincamos de guerra de bolas de neve. Meus amigos e eu brincamos de guerra de bolas de ...",
    //Pergunta 7
    "Você lembra o que as crianças encontraram na viagem?",
    //Pergunta 8
    "Como o garoto está se sentindo?",
    //Pergunta 9
    "Como eles se sentem diante dos insetos?",
    //Pergunta 10
    "Onde o garoto está?",
    //Pergunta 11
    "Para que serve o jardim?",
    //Pergunta 12
     "O que você vê nessa página?",
    //Pergunta 13
    "Você costuma brincar em algum jardim?",
     //Pergunta 14
    "É o Estegossauro que dorme comigo todos as noites. É o Estegossauro que dorme comigo todas as ...",
    //Pergunta 15
    "Você lembra o tamanho da cabeça do Estegossauro?",      
    //Pergunta 16
    "O que o Estegossauro poderia fazer para se defender?"
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Pássaro", "Garoto", "Jacaré",
    "Digitar", "Pintar", "Brincar",
    "", "", "", 
    "Dançar", "Dormir", "Patinar", 
    "Lobo", "Dinossauro", "Lebre", 
    "Neve", "Futebol", "Gude",
    "Livro", "Computador", "Rio", 
    "Triste", "Feliz", "Bravo", 
    "Incomodado", "Triste", "Contente", 
    "Shopping", "Banheiro", "Jardim", 
    "Patinar", "Brincar", "Vestir", 
    "Brinquedo", "Telefone", "Comida", 
    "", "", "", 
    "Manhãs", "Tardes", "Noites", 
    "Quadrada", "Pequena", "Grande", 
    "Usar cauda", "Nadar", "Chorar", 
    ];
  List<String> listaRespostas = [
    "Garoto", 
    "Brincar",
    "",
    "Dançar",
    "Dinossauro",
    "Neve",
    "Rio",
    "Feliz",
    "Incomodado",
    "Jardim",
    "Brincar",
    "Brinquedo",
    "",
    "Noites",
    "Pequena",
    "Usar cauda",
    ];
  
  List<Image> listaImagens = [
    Image.asset(
      "imagens/Estegossauro/Dia 02/passaro.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/garoto.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/jacare.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/Estegossauro/Dia 02/passaro.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/garoto.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/jacare.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/digitar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/pintar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/brincar.png",
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
      "imagens/Estegossauro/Dia 02/dancar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/dormir.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/patinar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/lobo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/dinossauro.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/lebre.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/neve.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/futebol.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/boladegude.png",
      fit: BoxFit.contain,
    ),Image.asset(
      "imagens/Estegossauro/Dia 02/livro.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/computador.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/rio.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/triste.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/feliz.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/bravo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/incomodado.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/triste2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/contente.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/shopping.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/banheiro.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/jardim.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/patinar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/brincar1.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/vestir.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/brinquedo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/telefone.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/comida.png",
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
      "imagens/Estegossauro/Dia 02/manhãs.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/tardes.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/noites.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/quadrada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/pequena.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/grande.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/usarcauda.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/nadar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 02/chorar.png",
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
            ResultadoEstegossauroDia2Page(
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
        Navigator.pushNamed(context, "/EstegossauroPrincipalPage");
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
            child: Text("Estegossauro",
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
