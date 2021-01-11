import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase1/ratos/Dia3/resultado_ratos_dia3_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class RatosDia3Page extends StatefulWidget {
  @override
  _RatosDia3State createState() => _RatosDia3State();
}

class _RatosDia3State extends State<RatosDia3Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Quando estou deitado e de pijama, escuto um barulho, um barulho assustador. Quando estou deitado e de pijama, escuto um barulho, um barulho a...",
    //Pergunta 2
    "O que é isso?",
    //Pergunta 3
    "Para que serve isso?",
    //Pergunta 4
    "Você já ficou sem tomar banho?",
    //Pergunta 5
    "Você lembra como eram as garras afiadas da criatura?",
    //Pergunta 6
    "O que está acontecendo aqui?",
    //Pergunta 7
    "O que pode acontecer com a criatura na estante?",
    //Pergunta 8
    "Como o garoto está se sentindo?",
    //Pergunta 9
    "O que pode acontecer com a criatura após ter engolido o ursinho de pelúcia?",
    //Pergunta 10
    "Você costuma deixar suas roupas no chão?",
    //Pergunta 11
    "Como o monstro estava se sentindo?",
    //Pergunta 12
    "Você é o monstro que fica em cima da cama. Você é o monstro que fica em cima da...",
    //Pergunta 13
    "O que é isso?",
    //Pergunta 14
    "Para que serve isso?",
     //Pergunta 15
    "Você lembra o que o monstro fazia durante as noites?",
    //Pergunta 16
    "O que o menino está fazendo aqui?",      
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Pesca", "Planeta", "Trabalha", 
    "Roupas", "Convite", "Bolo",
    "Convidar", "Chorar", "Comer", 
    "Feliz", "Zangado", "Triste", 
    "Velho", "Bebê", "Menina",
    "", "", "", 
    "Sopa", "Grãos", "Prédio", 
    "Porta", "Controle", "Indo embora", 
    "Irritado", "Assustado", "Contente", 
    "Frutas", "Gato", "Queijo", 
    "", "", "", 
    "Feijão", "Pães", "Farinha",  
    "Dormiram", "Correram", "Beberam", 
    "Porta", "Janela", "Chave", 
    "Casa", "Óculos", "Fechar", 
    "Leão", "Comidinhas", "Praia", 
    ];
  List<String> listaRespostas = [
    "Trabalha", 
    "Convite",
    "Convidar",
    "Triste",
    "Velho",
    "",
    "Grãos",
    "Indo embora",
    "Assustado",
    "Frutas",
    "",
    "Farinha",
    "Correram",
    "Porta",
    "Fechar",
    "Comidinhas",
    ];
  
  List<Image> listaImagens = [
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem89.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem90.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem91.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem89.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem90.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem91.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem92.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem93.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem94.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem95.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem96.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem97.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem98.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem99.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem100.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem101.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem102.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem103.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/sim.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/nao/png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/talvez.png",
      fit: BoxFit.contain,
    ),Image.asset(
      "imagens/Ratos/Dia 03/Imagem104.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem105.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem106.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem107.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem108.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem109.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem110.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem111.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem112.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem113.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem114.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem115.png",
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
      "imagens/Ratos/Dia 03/Imagem116.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem117.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem118.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem119.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem120.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem121.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem122.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem123.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem124.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem125.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem126.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem127.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem128.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem129.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/Ratos/Dia 03/Imagem130.png",
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
            ResultadoRatosDia3Page(
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
        Navigator.pushNamed(context, "/RatosPrincipalPage");
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
            child: Text("O rato do campo e o rato da cidade",
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
