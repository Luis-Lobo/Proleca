import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase1/monstro_cama/Dia2/resultado_monstro_cama_dia_2_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class MonstroCamaDia2Page extends StatefulWidget {
  @override
  _MonstroCamaDia2State createState() => _MonstroCamaDia2State();
}

class _MonstroCamaDia2State extends State<MonstroCamaDia2Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "O que está ao lado da criança?",   
    //Pergunta 2
    "Para que serve isso?",
    //Pergunta 3
    "Você costuma puxar as cobertas até cobrir cabeça?",
    //Pergunta 4
    "O que você vê nessa página?",
    //Pergunta 5
    "O que acontece se a gente não tomar banho?",
    //Pergunta 6
    "Eu observava enquanto ele pegava os meus brinquedos. Eu observava enquanto ele pegava os meus...",
    //Pergunta 7
    "Você lembra o que ele comeu?",
    //Pergunta 8
    "Como a criatura está se sentindo?",
    //Pergunta 9
    "Você costuma cair quando está brincando?",
    //Pergunta 10
    "Como o menino está se sentindo?",
    //Pergunta 11
    "Onde vivia o monstro?",
    //Pergunta 12
    "Para que serve a cama?",
    //Pergunta 13
    "O que está acontecendo aqui?",
    //Pergunta 14
    "Nós fomos monstros travessos, de jeitos diferentes. Ele bagunçou minhas noites. Nós fomos monstros travessos, de jeitos diferentes. Ele bagunçou minhas...",
    //Pergunta 15
    "O que o monstro pode fazer com os brinquedos?",
    //Pergunta 16
    "Você lembra quem o garoto chamava de Binho?",      
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Panela", "Relógio", "Ursinho", 
    "Brincar", "Nadar", "Cozinhar",
    "", "", "", 
    "Garrafa", "Criatura", "Televisão", 
    "Fica sujo", "Fica tímido", "Fica saudável", 
    "Óculos", "Cadernos", "Brinquedos", 
    "Meias", "Patinete", "Sapatos",
    "Feliz", "Preocupada", "Irritada", 
    "", "", "", 
    "Feliz", "Chateado", "Contente", 
    "Cozinha", "Banheiro", "Cama",
    "Comer", "Dormir", "Esquiar",
    "Conversa", "Banho", "Canto", 
    "Tarde", "Dia", "Noite", 
    "Cozinhar", "Brincar", "Assar", 
    "Bombeiro", "Médico", "Monstro", 
    ];
  List<String> listaRespostas = [
    "Ursinho", 
    "Brincar",
    "",
    "Criatura",
    "Fica sujo",
    "Brinquedos",
    "Sapatos",
    "Feliz",
    "",
    "Chateado",
    "Cama",
    "Dormir",
    "Conversa",
    "Noite",
    "Brincar",
    "Monstro",
    ];

  List<Image> listaImagens = [
    Image.asset(
     "imagens/MonstroCama/Dia 02/panela.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/relógio.jpg",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/MonstroCama/Dia 02/ursinho.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
     "imagens/MonstroCama/Dia 02/panela.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/relógio.jpg",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/MonstroCama/Dia 02/ursinho.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
     "imagens/MonstroCama/Dia 02/brincar.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/nadar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/cozinhar.png",
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
      "imagens/MonstroCama/Dia 02/garrafa.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
     "imagens/MonstroCama/Dia 02/criatura.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/televisão.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/MonstroCama/Dia 02/fica sujo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
     "imagens/MonstroCama/Dia 02/fica tímido.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/fica saudável.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/MonstroCama/Dia 02/oculos.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
     "imagens/MonstroCama/Dia 02/cadernos.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/brinquedos.jpg",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/MonstroCama/Dia 02/meias.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
     "imagens/MonstroCama/Dia 02/patinete.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/sapatos.jpg",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/MonstroCama/Dia 02/feliz.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/MonstroCama/Dia 02/preocupada.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/irritada.png",
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
      "imagens/MonstroCama/Dia 02/feliz2.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/MonstroCama/Dia 02/chateado.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/contente.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/MonstroCama/Dia 02/cozinha.jpg",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/MonstroCama/Dia 02/banheiro.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/Cama.jpg",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/MonstroCama/Dia 02/comer.jpg",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/MonstroCama/Dia 02/dormir.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/esquiar.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/MonstroCama/Dia 02/conversa.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/MonstroCama/Dia 02/banho.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/canto.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/MonstroCama/Dia 02/tarde.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/MonstroCama/Dia 02/dia.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/noite.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/MonstroCama/Dia 02/cozinhar2.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/MonstroCama/Dia 02/brincar2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/assar.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
      "imagens/MonstroCama/Dia 02/bombeiro.png",
      fit: BoxFit.contain,
    ),
     Image.asset(
     "imagens/MonstroCama/Dia 02/médico.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 02/monstro.jpg",
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
            ResultadoMonstroCamaDia2Page(
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
        Navigator.pushNamed(context, "/MonstroCamaPrincipalPage");
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
            child: Text("Há um monstro embaixo da minha cama",
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
