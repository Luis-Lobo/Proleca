import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase2/tartaruga_lebre/Dia3/resultado_tartaruga_lebre_Dia3_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class TartarugaLebreDia3Page extends StatefulWidget {

  @override
  _TartarugaLebreDia3State createState() => _TartarugaLebreDia3State();
}

class _TartarugaLebreDia3State extends State<TartarugaLebreDia3Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Você já desafiou alguém em uma competição?",   
    //Pergunta 2
    "O que é isso?",
    //Pergunta 3
    "Para que serve isso?",
    //Pergunta 4
    "Como se pode chegar nessa montanha?",
    //Pergunta 5
    "Como os bichos se sentiram ao ver a tartaruga desafiando a lebre?",
    //Pergunta 6
    "O que vê nessa página?",
    //Pergunta 7
    "Faltavam alguns dias para a corrida, a pequena tartaruga se tratou de se preparar, comendo alimentos. Faltavam alguns dias para a corrida, a pequena tartaruga se tratou de se preparar, comendo a ...",
    //Pergunta 8
    "Você lembra quem era considerado o bicho mais lento da floresta?",
    //Pergunta 9
    "Você costumar torcer durante as competições?",
    //Pergunta 10
    "Como a tartaruga e a lebre estavam se sentido no ponto de partida?",
    //Pergunta 11
    "O que o juiz pode fazer para dar o sinal?",
    //Pergunta 12
    "Você lembra quem falou que a tartaruga poderia surpreender na corrida?",
    //Pergunta 13
    "Onde a lebre se deitou?",
     //Pergunta 14
    "Para que serve grama?",
    //Pergunta 15
    "O que está acontecendo aqui?",      
    //Pergunta 16
    "Os bichos vibraram com a vitória da pequena tartaruga, enquanto isso a lebre ficou triste. Os bichos vibraram com a vitória da pequena tartaruga, enquanto isso a lebre ficou ..."
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "", "", "",
    "Mão", "Dente", "Caixa",
    "Vestir", "Escovar", "Nadar", 
    "Escalando", "Dormindo", "Tomando banho", 
    "Cansados", "Felizes", "Surpresos", 
    "A lebre", "A cobra", "O tucano",
    "Alimentos", "Pedras", "Copos", 
    "Elefante", "Tartaruga", "Leão", 
    "", "", "", 
    "Bravas", "Tristes", "Animadas", 
    "Apito", "Comer", "Compras", 
    "Girafa", "Caramujo", "Bode", 
    "Grama", "Barquinho", "Cama", 
    "Esquiar", "Jogar futebol", "Patinar", 
    "Meditando", "Assistindo televisão", "Torcendo", 
    "Triste", "Contente", "Pensativa", 
    ];
  List<String> listaRespostas = [
    "", 
    "Dente",
    "Escovar",
    "Escalando",
    "Surpresos",
    "A lebre",
    "Alimentos",
    "Tartaruga",
    "",
    "Animadas",
    "Apito",
    "Caramujo",
    "Grama",
    "Jogar futebol",
    "Torcendo",
    "Triste",
    ];
  
  List<Image> listaImagens = [
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
  ];

  List<Image> listaImagensTotal = [
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
      "imagens/TartarugaLebre/Dia 03/mao.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/dente.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/caixa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/vestir.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/escovar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/nadar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/escalando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/dormindo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/tomandobanho.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/cansados.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/felizes.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/surpresos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/alebre.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/acobra.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/otucano.png",
      fit: BoxFit.contain,
    ),Image.asset(
      "imagens/TartarugaLebre/Dia 03/alimentos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/pedras.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/copos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/elefante.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/tartaruga.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/leao.png",
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
      "imagens/TartarugaLebre/Dia 03/bravas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/tristes.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/animadas.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/apito.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/comer.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/compras.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/girafa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/caramujo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/bode.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/grama.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/barquinho.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/cama.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/esquiar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/jogarfutebol.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/patinar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/meditando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/assistindotelevisao.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/torcendo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/triste.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/contente.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/TartarugaLebre/Dia 03/pensativa.png",
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
            ResultadoTartarugaLebreDia3Page(
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
        Navigator.pushNamed(context, "/TartarugaLebrePrincipalPage");
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
            child: Text("A Tartaruga e a Lebre",
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
