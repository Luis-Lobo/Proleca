import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase2/cotovia/Dia1/resultado_cotovia_dia1_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class CotoviaDia1Page extends StatefulWidget {

  @override
  _CotoviaDia1State createState() => _CotoviaDia1State();
}

class _CotoviaDia1State extends State<CotoviaDia1Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Quem é Suzi?",   
    //Pergunta 2
    "Para que serve a cotovia?",
    //Pergunta 3
    "O que você vê nessa página?",
    //Pergunta 4
    "Como Suzi se sentiu?",
    //Pergunta 5
    "O que os filhotes podem fazer nesse lago?",
    //Pergunta 6
    "Como os filhotes de Suzi ainda não sabiam voar, a cotovia saía todas as tardes em busca de alimentos. Como os filhotes de Suzi ainda não sabiam voar, a cotovia saía todas as tardes em busca de...?",
    //Pergunta 7
    "Você costuma ir em uma fazenda?",
    //Pergunta 8
    "Você lembra o que a cotovia recolhia para construir o ninho?",
    //Pergunta 9
    "O que eles estão fazendo aqui?",
    //Pergunta 10
    "Como os pequeninhos estavam se sentindo?",
    //Pergunta 11
    "O que é isso?",
    //Pergunta 12
     "Para que serve isso?",
    //Pergunta 13
    "O que se pode retirar de uma colheita?",
     //Pergunta 14
    "Eles ouviram novamente a conversa do fazendeiro. Eles ouviram novamente a conversa do ...",
    //Pergunta 15
    "Você costuma ouvir ou contar para a sua mãe conversas que você ouve de outra pessoa? ",      
    //Pergunta 16
    "Você lembra o que o fazendeiro queria colher?"
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Elefante", "Cotovia", "Girafa",
    "Nadar", "Rasgar", "Voar",
    "Ninho", "Computador", "Mesa", 
    "Irritada", "Triste", "Feliz", 
    "Correr", "Nadar", "Dormir", 
    "Roupas", "Água", "Alimentos",
    "", "", "", 
    "Brinquedos", "Ramos", "Folhas", 
    "Conversando", "Comendo", "Pedalando", 
    "Espantados", "Preocupados", "Pensativos", 
    "Sol", "Estrelas", "Lua", 
    "Para escurecer", "Para iluminar", "Para chover", 
    "Chocolate", "Leite", "Milho", 
    "Mèdico", "Fazendeiro", "Professor", 
    "", "", "", 
    "Trigo", "Alface", "Morango", 
    ];
  List<String> listaRespostas = [
    "Cotovia", 
    "Voar",
    "Ninho",
    "Feliz",
    "Nadar",
    "Alimentos",
    "",
    "Ramos",
    "Conversando",
    "Preocupados",
    "Lua",
    "Para iluminar",
    "Milho",
    "Fazendeiro",
    "",
    "Trigo",
    ];
  
  List<Image> listaImagens = [
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/elefante.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/cotovia.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/girafa.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/elefante.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/cotovia.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/girafa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/nadar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/rasgar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/voar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/ninho.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/computador.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/mesa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/irritada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/triste.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/feliz.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/correr.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/nadar2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/dormir.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/roupas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/água.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/alimentos.png",
      fit: BoxFit.contain,
    ),Image.asset(
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
      "imagens/Cotovia/Dia 01 e 04/brinquedos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/ramos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/folhas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/conversando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/comendo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/pedalando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/espantados.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/preocupados.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/pensativos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/sol.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/estrelas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/lua.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/escurecer.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/iluminar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/chover.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/chocolate.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/leite.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/milho.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/médico.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/fazendeiro.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/professor.png",
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
      "imagens/Cotovia/Dia 01 e 04/trigo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/alface.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 01 e 04/morango.png",
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
            ResultadoCotoviaDia1Page(
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
