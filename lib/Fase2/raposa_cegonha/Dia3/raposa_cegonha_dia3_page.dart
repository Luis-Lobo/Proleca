import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase2/raposa_cegonha/Dia3/resultado_raposa_cegonha_Dia3_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class RaposaCegonhaDia3Page extends StatefulWidget {

  @override
  _RaposaCegonhaDia3State createState() => _RaposaCegonhaDia3State();
}

class _RaposaCegonhaDia3State extends State<RaposaCegonhaDia3Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Você lembra quem vivia na floresta?",   
    //Pergunta 2
    "Quem deixa a casa brilhando feito um brinco?",
    //Pergunta 3
    "Para que serve a raposa?",
    //Pergunta 4
    "Onde será preparado o prato especial?",
    //Pergunta 5
    "Dora convidou para entrar e conhecer a sua casa. Dora convidou para entrar e conhecer a sua ...",
    //Pergunta 6
    "O que a raposa vai fazer depois?",
    //Pergunta 7
    "O que você vê nesta página?",
    //Pergunta 8
    "Como a raposa está se sentindo?",
    //Pergunta 9
    "Você já viu um animal com bico?",
    //Pergunta 10
    "O que está acontecendo nesta página?",
    //Pergunta 11
    "Depois da despedida, como a cegonha se sentiu?",
    //Pergunta 12
     "O que é isso?",
    //Pergunta 13
    "Para que serve isso?",
     //Pergunta 14
    "Você já comeu peixe ao molho?",
    //Pergunta 15
    "Você lembra o que Dora conseguiu cheirar?",      
    //Pergunta 16
    "Quando o jantar terminou, Lila acompanhou Dora e desejou uma ótima noite. Quando o jantar terminou, Lila acompanhou Dora e desejou uma ótima ..."
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "Jarro", "Livros","Animais",
    "Raposa", "Cachorro", "Macaco",
    "Dançar", "Correr", "Digitar", 
    "Cozinha", "Banheiro", "Quarto", 
    "Picolé", "Bicicleta", "Casa", 
    "Refeição", "Estudar", "Computador",
    "Suco", "Sopa", "Bolo", 
    "Entristecida", "Com raiva", "Feliz", 
    "", "", "", 
    "Cão", "Despedida", "Jornal", 
    "Com raiva", "Feliz", "Entristecida", 
    "Jarro", "Pipoca", "Tomate", 
    "Televisão", "Plantar", "Bola", 
    "", "", "", 
    "Perfume", "sapato", "Comida", 
    "Noite", "Manhã", "Tarde", 
    ];
  List<String> listaRespostas = [
    "Animais", 
    "Raposa",
    "Correr",
    "Cozinha",
    "Casa",
    "Refeição",
    "Sopa",
    "Entristecida",
    "",
    "Despedida",
    "Entristecida",
    "Jarro",
    "Plantar",
    "",
    "Comida",
    "Noite",
    ];
  
  List<Image> listaImagens = [
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/JARRO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/LIVROS.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/ANIMAIS.png",
      fit: BoxFit.contain,
    ),
  ];

  List<Image> listaImagensTotal = [
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/JARRO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/LIVROS.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/ANIMAIS.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/RAPOSA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/CACHORRO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/MACACO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/DANCAR.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/CORRER.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/DIGITAR.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/COZINHA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/BANHEIRO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/QUARTO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/PICOLE.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/BICICLETA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/CASA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/REFEICAO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/ESTUDAR.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/COMPUTADOR.png",
      fit: BoxFit.contain,
    ),Image.asset(
      "imagens/RaposaCegonha/Dia 03/SUCO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/SOPA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/BOLO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/ENTRISTECIDA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/COM RAIVA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/FELIZ.png",
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
      "imagens/RaposaCegonha/Dia 03/CAO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/DESPEDIDA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/JORNAL.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/COMRAIVA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/FELIZ1.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/ENTRISTECIDA1.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/JARRO1.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/PIPOCA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/TOMATE.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/TELEVISAO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/PLANTAR.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/BOLA.png",
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
      "imagens/RaposaCegonha/Dia 03/PERFUME.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/SAPATO.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/COMIDA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/NOITE.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/MANHA.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/RaposaCegonha/Dia 03/TARDE.png",
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
            ResultadoRaposaCegonhaDia3Page(
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
        Navigator.pushNamed(context, "/RaposaCegonhaPrincipalPage");
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
            child: Text("A Raposa e a Cegonha",
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
