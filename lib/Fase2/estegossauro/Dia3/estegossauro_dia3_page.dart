import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase2/estegossauro/Dia3/resultado_estegossauro_Dia3_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class EstegossauroDia3Page extends StatefulWidget {

  @override
  _EstegossauroDia3State createState() => _EstegossauroDia3State();
}

class _EstegossauroDia3State extends State<EstegossauroDia3Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "O que está acontecendo nessa página?",   
    //Pergunta 2
    "O que a mãe do garoto está pendurando?",
    //Pergunta 3
    "Para que servem as roupas?",
    //Pergunta 4
    "O que o garoto pode fazer para a roupa caber no amigo?",
    //Pergunta 5
    "Você já viajou com algum amigo?",
    //Pergunta 6
    "Como o garoto se sente durante o carnaval?",
    //Pergunta 7
    "Meu amigo sempre ajuda meu tio. Meu amigo sempre ajuda meu ... ?",
    //Pergunta 8
    "Como as crianças se sentem brincando de bolas de neve?",
    //Pergunta 9
    "Você lembra o que foi preciso fazer no campo?",
    //Pergunta 10
    "O que está acontecendo aqui?",
    //Pergunta 11
    "Onde ele se apoiou para pintar o amigo?",
    //Pergunta 12
     "Para que serve a escada?",
    //Pergunta 13
    "Você lembra o que o menino usou para atravessar o rio?",
     //Pergunta 14
    "Você costuma fazer um castelo de areia na praia?",
    //Pergunta 15
    "Como é o amigo do menino?",      
    //Pergunta 16
    "Como sua cabeça quase toca no chão, ele passa muitas horas cheirando as plantas. Como sua cabeça quase toca no chão, ele passa muitas horas cheirando as ... ?"
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Dormindo", "Cantando", "Brincando",
    "Porco", "Roupas", "Sapatos",
    "Lavar", "Beber", "Congelar", 
    "Colar", "Cortar", "Pintar", 
    "", "", "", 
    "Cansado", "Bravo", "Feliz",
    "Avô", "Tio", "Prima", 
    "Alegres", "Tristes", "Zangadas", 
    "Voar", "Arar", "Navegar", 
    "Escrevendo", "Comendo", "Pintando", 
    "Elevador", "Escada", "Cadeira", 
    "Subir", "Comer", "Correr", 
    "Navio", "Barquinho", "Dinossauro", 
    "", "", "", 
    "Pequeno", "Magro", "Grande", 
    "Maçãs", "Plantas", "Perfumes", 
    ];
  List<String> listaRespostas = [
    "Brincando", 
    "Roupas",
    "Lavar",
    "Cortar",
    "",
    "Feliz",
    "Tio",
    "Alegres",
    "Arar",
    "Pintando",
    "Escada",
    "Subir",
    "Dinossauro",
    "",
    "Grande",
    "Plantas",
    ];
  
  List<Image> listaImagens = [
    Image.asset(
      "imagens/Estegossauro/Dia 03/dormindo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/cantando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/brincando.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/Estegossauro/Dia 03/dormindo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/cantando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/brincando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/porco.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/roupas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/sapatos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/lavar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/beber.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/congelar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/colar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/cortar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/pintar.png",
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
      "imagens/Estegossauro/Dia 03/cansado.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/bravo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/feliz.png",
      fit: BoxFit.contain,
    ),Image.asset(
      "imagens/Estegossauro/Dia 03/avô.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/tio.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/prima.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/alegres.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/tristes.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/zangados.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/voar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/arar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/navegar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/escrevendo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/comendo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/pintando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/elevador.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/escada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/cadeira.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/subir.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/comer.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/correr.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/navio.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/barquinho.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/dinossauro.png",
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
      "imagens/Estegossauro/Dia 03/pequeno.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/magro.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/grande.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/maças.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/plantas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Estegossauro/Dia 03/perfumes.png",
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
            ResultadoEstegossauroDia3Page(
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
