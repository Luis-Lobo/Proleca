import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase1/cigarra_formiga/Dia2/resultado_cigarra_formiga_dia_2_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class CigarraFormigaDia2Page extends StatefulWidget {
  @override
  _CigarraFormigaDia2State createState() => _CigarraFormigaDia2State();
}

class _CigarraFormigaDia2State extends State<CigarraFormigaDia2Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Que tipo de roupa a cigarra não poderia usar no inverno?",   
    //Pergunta 2
    "Glória era uma formiga muito esforçada \nque trabalhava durante todo o verão. \nGlória era uma formiga muito esforçada \nque trabalhava todo o ...",
    //Pergunta 3
    "O que a formiga faz nos dias de sol?",
    //Pergunta 4
    "Para que serve o sol?",
    //Pergunta 5
    "O que está acontecendo aqui?",
    //Pergunta 6
    "Como Glória estava se sentindo?",
    //Pergunta 7
    "Você costuma sonhar durante a noite?",
    //Pergunta 8
    "Você lembra o que as formigas guardaram?",
    //Pergunta 9
    "Como a mãe da formiguinha se sentiu ao \nver Glória conversando com a cigarra?",
    //Pergunta 10
    "Você lembra quem continuou cantando sem parar?",
    //Pergunta 11
    "Não demorou muito para os dias ficarem frios. \nNão demorou muito para os dias ficarem ...",
    //Pergunta 12
    "Você costuma ficar tremendo de frio?",
    //Pergunta 13
    "O que é isso?",
    //Pergunta 14
    "Para que serve isso?",
    //Pergunta 15
    "O que a formiga pode fazer para ajudar a cigarra?",
    //Pergunta 16
    "O que a cigarra está fazendo aqui nessa página?",      
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Maiô", "Casaco", "Cachecol", 
    "Inverno", "Outono", "Verão",
    "Dorme", "Colhe alimentos", "Escuta música", 
    "Para escurecer", "Para chover", "Para iluminar", 
    "Uma contação de história", "Uma conversa", "Uma discussão", 
    "Triste", "Envergonhada", "Feliz", 
    "", "", "",
    "Roupas", "Livros", "Sementes", 
    "Com raiva", "Feliz", "Triste", 
    "Cigarra", "Formiga", "Leão", 
    "Quentes", "Frescos", "Frios",
    "", "", "",
    "Boné", "Cachecol", "Casaco", 
    "Pular corda", "Pintar", "Esquentar", 
    "Dar uma flor", "Dar um casaco", "Dar um sapato", 
    "Cantando", "Dormindo", "Comendo", 
    ];
  List<String> listaRespostas = [
    "Maiô", 
    "Verão",
    "Colhe alimentos",
    "Para iluminar",
    "Uma conversa",
    "Envergonhada",
    "",
    "Sementes",
    "Feliz",
    "Formiga",
    "Frios",
    "",
    "Cachecol",
    "Esquentar",
    "Dar um casaco",
    "Cantando",
    ];

  List<Image> listaImagens = [
    Image.asset(
     "imagens/CigarraFormiga/Dia 02/maiô.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/casaco.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/cachecol.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
     "imagens/CigarraFormiga/Dia 02/maiô.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/casaco.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/cachecol.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
     "imagens/CigarraFormiga/Dia 02/inverno.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/outono.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/verão.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
     "imagens/CigarraFormiga/Dia 02/dorme.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/colhe alimentos.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/escuta música.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
     "imagens/CigarraFormiga/Dia 02/escurecer.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/chover.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/iluminar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
     "imagens/CigarraFormiga/Dia 02/contação de história.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/conversa.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/discussão.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
     "imagens/CigarraFormiga/Dia 02/triste.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/envergonhada.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/feliz.png",
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
     "imagens/CigarraFormiga/Dia 02/roupas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/livros.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/sementes.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/CigarraFormiga/Dia 02/raiva.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/feliz 2.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/triste 2.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/CigarraFormiga/Dia 02/cigarra.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/formiga.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/leão.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/CigarraFormiga/Dia 02/quente.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/fresco.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/frio.png",
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
     "imagens/CigarraFormiga/Dia 02/boné.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/cachecol 2.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/casaco 2.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/CigarraFormiga/Dia 02/pular corda.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/pintar.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/esquentar.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/CigarraFormiga/Dia 02/dar uma flor.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/dar um casaco.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/dar um sapato.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/CigarraFormiga/Dia 02/cantando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/CigarraFormiga/Dia 02/dormindo.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/CigarraFormiga/Dia 02/comendo.png",
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
            ResultadoCigarraFormigaDia2Page(
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
