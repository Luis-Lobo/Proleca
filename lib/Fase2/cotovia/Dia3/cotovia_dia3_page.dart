import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase2/cotovia/Dia3/resultado_cotovia_dia3_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class CotoviaDia3Page extends StatefulWidget {

  @override
  _CotoviaDia3State createState() => _CotoviaDia3State();
}

class _CotoviaDia3State extends State<CotoviaDia3Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Você já viu uma plantação de trigo ainda verde?",   
    //Pergunta 2
    "O que é isso?",
    //Pergunta 3
    "Para que serve isso?",
    //Pergunta 4
    "Como os filhotes estavam se sentindo?",
    //Pergunta 5
    "Logo vocês estarão voando livremente por esse imenso céu azul. Logo vocês estarão voando livremente por esse imenso céu...",
    //Pergunta 6
    "O que os filhotes podem fazer com os alimentos encontrados pela cotovia?",
    //Pergunta 7
    "Você lembra o que a cotovia avistou?",
    //Pergunta 8
    "O que você vê nessa página?",
    //Pergunta 9
    "O que você vê nessa página?",
    //Pergunta 10
    "Você lembra para onde o fazendeiro mandou o seu filho ir?",
    //Pergunta 11
    "Assim os filhotes puderam dormir sossegados. Assim os filhotes puderam dormir...",
    //Pergunta 12
    "Como os filhotes se sentiram ao contar a conversa para a mãe?",
    //Pergunta 13
    "Você já viu alguém colhendo alimentos em uma fazenda?",
     //Pergunta 14
    "O que pode ajudar o fazendeiro e o seu filho a colher trigos mais rápido?",
    //Pergunta 15
    "O que eles são?",      
    //Pergunta 16
    "Para que servem as cotovias?"
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "", "", "",
    "Casa", "Ninho", "Escola",
    "Beber", "Escrever", "Chocar", 
    "Tristes", "Felizes", "Irritados", 
    "Chuvoso", "Escuro", "Azul", 
    "Escrever", "Comer", "Voar",
    "Livros", "Parque", "Campo verde", 
    "Bolo", "Filhotes", "Brinquedos", 
    "Geladeira", "Fogão", "Trigo", 
    "Escola", "Casa de parentes", "Shopping", 
    "Cansados", "Sossegados", "Nervosos", 
    "Preocupados", "Felizes", "Tristes", 
    "", "", "", 
    "Usar um cachorro", "Usar um foguete", "Usar uma máquina", 
    "Dinossauros", "Cotovias", "Gatos", 
    "Pintar", "Surfar", "Voar", 
    ];
  List<String> listaRespostas = [
    "", 
    "Ninho",
    "Chocar",
    "Felizes",
    "Azul",
    "Comer",
    "Campo verde",
    "Filhotes",
    "Trigo",
    "Casa de parentes",
    "Sossegados",
    "Preocupados",
    "",
    "Usar uma máquina",
    "Cotovias",
    "Voar",
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
      "imagens/Cotovia/Dia 03/casa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/ninho.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/escola.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/beber.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/escrever.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/chocar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/tristes.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/felizes.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/irritados.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/chuvoso.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/escuro.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/ceuazul.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/escrever.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/comer.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/voar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/livros.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/parque.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/campoverde.png",
      fit: BoxFit.contain,
    ),Image.asset(
      "imagens/Cotovia/Dia 03/bolo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/filhotes.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/brinquedos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/geladeira.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/fogao.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/trigo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/escola2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/casadeparentes.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/shopping.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/cansados.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/sossegados.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/nervosos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/preocupados.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/felizes2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/tristes2.png",
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
      "imagens/Cotovia/Dia 03/cachorro.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/foguete.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/maquina.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/dinossauros.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/cotovias.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/gatos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/pintar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/surfar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Cotovia/Dia 03/voar2.png",
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
            ResultadoCotoviaDia3Page(
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
