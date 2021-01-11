import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase1/cigarra_formiga/Dia3/resultado_cigarra_formiga_dia3_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class CigarraFormigaDia3Page extends StatefulWidget {
  @override
  _CigarraFormigaDia3State createState() => _CigarraFormigaDia3State();
}

class _CigarraFormigaDia3State extends State<CigarraFormigaDia3Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Enquanto isso a cigarra Julieta só sabia \nde cantar e dançar. Enquanto isso a cigarra Julieta \nsó sabia de cantar e...",   
    //Pergunta 2
    "Como Glória ficou se sentindo ao ver a Cigarra cantando?",
    //Pergunta 3
    "O que pode acontecer com a formiga se ela tentar colher alimentos no inverno?",
    //Pergunta 4
    "O que você vê nessa página?",
    //Pergunta 5
    "Você lembra o que a cigarra Julieta faz no verão?",
    //Pergunta 6
    "O que é isso?",
    //Pergunta 7
    "Para que serve isso?",
    //Pergunta 8
    "Você costuma ajudar os seus pais a guardar a comida?",
    //Pergunta 9
    "O que Glória tomou?",
    //Pergunta 10
    "Para que serve isso?",
    //Pergunta 11
    "Ao ver a cigarra cantando como a formiga se sentiu?",
    //Pergunta 12
    "A mãe da formiguinha ao ver aquilo ficou feliz. \nA mãe da formiguinha ao ver aquilo ficou ...",
    //Pergunta 13
    "O que você vê nesta página?",
    //Pergunta 14
    "Você costuma usar cachecol no frio?",
     //Pergunta 15
    "Você lembra quem não conseguia deixar de pensar na cigarra?",
    //Pergunta 16
    "O que a cigarra pode fazer para se prevenir dos tempos difíceis?",      
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Brincar", "Dançar", "Estudar", 
    "Feliz", "Triste", "Surpresa",
    "Ela pode ficar com calor", "Ela pode ficar com frio", "Ela pode ficar triste", 
    "Frutas", "Sementes", "Pão", 
    "Trabalha", "Canta", "Cozinha",
    "Colher", "Garfo", "Prato", 
    "Escrever", "Digitar", "Comer", 
    "", "", "", 
    "Café", "Suco", "Chá", 
    "Beber", "Mastigar", "Brincar", 
    "Triste", "Feliz", "Irritada", 
    "Triste", "Feliz", "Com raiva",  
    "Neve", "Fogueira", "Árvore", 
    "", "", "", 
    "Jacaré", "Cachorro", "Formiga", 
    "Cantar", "Trabalhar", "Descansar", 
    ];
  List<String> listaRespostas = [
    "Dançar", 
    "Surpresa",
    "Ela pode ficar com frio",
    "Sementes",
    "Canta",
    "Garfo",
    "Comer",
    "",
    "Café",
    "Beber",
    "Irritada",
    "Feliz",
    "Neve",
    "",
    "Formiga",
    "Cantar",
    ];
  
  List<Image> listaImagens = [
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/brincar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/dançar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/estudar.png",
      fit: BoxFit.contain,
    )
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/brincar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/dançar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/estudar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/feliz.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/triste.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/surpresa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/calor.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/frio.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/triste 2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/frutas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/sementes.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/pão.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/trabalha.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/canta.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/cozinha.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/colher.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/garfo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/prato.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/escrever.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/digitar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/comer.png",
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
      "imagens/CigarraFormiga/Dia 03/café.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/suco.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/chá.png",
      fit: BoxFit.contain,
    ),
   Image.asset(
      "imagens/CigarraFormiga/Dia 03/beber.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/mastigar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/brincar 2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/triste 3.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/feliz 2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/irritada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/triste 4.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/feliz 3.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/com raiva.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/neve.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/fogueira.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/árvore.png",
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
      "imagens/CigarraFormiga/Dia 03/jacaré.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/cachorro.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/formiga.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/cantar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/trabalhar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 03/descansar.png",
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
            ResultadoCigarraFormigaDia3Page(
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
        Navigator.pushNamed(context, "/CigarraFormigaPrincipal");
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
            child: Text("A Cigarra e a Formiga",
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
