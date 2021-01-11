import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase1/cigarra_formiga/Dia4/resultado_cigarra_formiga_dia4_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class CigarraFormigaDia4Page extends StatefulWidget {

  @override
  _CigarraFormigaDia4State createState() => _CigarraFormigaDia4State();
}

class _CigarraFormigaDia4State extends State<CigarraFormigaDia4Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Quem é a Glória?",   
    //Pergunta 2
    "O que a formiga faz?",
    //Pergunta 3
    "Como a cigarra Julieta estava se sentindo?",
    //Pergunta 4
    "O que a formiga está fazendo nessa página?",
    //Pergunta 5
    "O que a formiga pode fazer para se divertir?",
    //Pergunta 6
    "Se não fizermos nosso estoque de comida \nmorreremos de fome no inverno. \nSe não fizermos nosso estoque de comida \nmorreremos de fome no...",
    //Pergunta 7
    "Você costuma cantar para se divertir?",
    //Pergunta 8
    "Você lembra o que a cigarra estocou?",
    //Pergunta 9
    "Você lembra aonde a cigarra sonhou que estava?",
    //Pergunta 10
    "O que está acontecendo aqui?",
    //Pergunta 11
    "Como a Glória se sentiu?",
    //Pergunta 12
    "O que é isso?",
    //Pergunta 13
    "Para que serve isso?",
    //Pergunta 14
    "O que se faz com a semente?",
     //Pergunta 15
    "Você já foi a algum local que tem neve?",
    //Pergunta 16
    "A pequenina não conseguia deixar de pensar na cigarra. \nA pequinina não conseguia deixar de pensar na... ",      
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "A cigarra", "A formiga", "A galinha", 
    "Bebe leite", "Come banana", "Come açúcar",
    "Triste", "Feliz", "Com raiva", 
    "Cozinhando", "Trabalhando", "Comendo", 
    "Pular", "Dançar", "Cantar", 
    "Verão", "Inverno", "Primavera",
    "", "", "", 
    "Tênis", "Comida", "Água", 
    "Rua", "Floresta", "Casa", 
    "Comendo", "Bebendo", "Lendo", 
    "Feliz", "Triste", "Irritada", 
    "Piano", "Tambor", "Violão", 
    "Falar", "Escrever", "Tocar", 
    "Brinca", "Chuta", "Planta", 
    "", "", "", 
    "Formiga", "Cigarra", "Tartaruga", 
    ];
  List<String> listaRespostas = [
    "A formiga", 
    "Come açúcar",
    "Feliz",
    "Trabalhando",
    "Cantar",
    "Inverno",
    "",
    "Comida",
    "Floresta",
    "Comendo",
    "Irritada",
    "Violão",
    "Tocar",
    "Planta",
    "",
    "Cigarra",
    ];
  
  List<Image> listaImagens = [
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/ciranda.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/formiga.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/galinha.png",
      fit: BoxFit.contain,
    )
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/ciranda.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/formiga.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/galinha.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/bebe leite.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/bananas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/açúcar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/triste.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/feliz.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/com raiva.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/cozinhando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/trabalhando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/comendo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/pular.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/dançar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/cantar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/verão.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/inverno.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/primavera.png",
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
      "imagens/CigarraFormiga/Dia 01 e 04/tênis.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/comida.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/água.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/rua.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/floresta.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/casa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/comendo 2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/bebendo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/lendo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/feliz 2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/triste 2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/irritada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/piano.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/tambor.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/violão.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/falar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/escrever.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/tocar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/brinca.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/chuta.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/planta.png",
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
      "imagens/CigarraFormiga/Dia 01 e 04/formiga  2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/cigarra.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 01 e 04/tartaruga.png",
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
            ResultadoCigarraFormigaDia4Page(
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
