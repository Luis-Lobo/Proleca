import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Fase1/monstro_cama/Dia1/resultado_monstro_cama_dia1_page.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:proleca/widgets/alertas.dart';

class MonstroCamaDia1Page extends StatefulWidget {

  @override
  _MonstroCamaDia1State createState() => _MonstroCamaDia1State();
}

class _MonstroCamaDia1State extends State<MonstroCamaDia1Page> {

  List<String> listaPerguntas = [
    //Pergunta 1
    "Você costuma dormir de pijama?",   
    //Pergunta 2
    "O que você vê nessa página?",
    //Pergunta 3
    "O que o garoto tem no rosto?",
    //Pergunta 4
    "Para que serve isso?",
    //Pergunta 5
    "Suas garras eram longas e afiadas, parecia nunca ter \ntomado banho. Suas garras eram longas e \afiadas, parecia nunca ter tomado...",
    //Pergunta 6
    "Por que a criança ouviu o arroto azedo da criatura?",
    //Pergunta 7
    "Você lembra o que a criatura pegou no quarto da criança?",
    //Pergunta 8
    "Como o garoto está se sentindo?",
    //Pergunta 09
    "Como o garoto se sentiu quando a criatura engoliu seu ursinho de pelúcia?",
    //Pergunta 10
    "O que a criança bateu no chão?",
    //Pergunta 11
    "Para que serve isso?",
    //Pergunta 12
     "A criatura congelou e me encarou, ele estava \ncom medo. A criatura congelou e me encarou, ele estava com..",
    //Pergunta 13
    "Você lembra quem estava com medo?",
     //Pergunta 14
    "Você já assustou alguém?",
    //Pergunta 15
    "O que o monstro pode ter feito com o pão",      
    //Pergunta 16
    "O que está acontecendo aqui?"
    ];

  List<String> listaNomes = ["X", "Y", "Z"];
  List<String> listaNomesTotal = [
    "", "", "", 
    "Cama", "Estojo", "Lápis",
    "Boné", "Tênis", "Óculos", 
    "Escovar os dentes", "Observar", "Comer", 
    "Café", "Vitamina", "Banho", 
    "Alto", "Baixo", "Fone de ouvido",
    "Colher", "Pratos", "Brinquedo", 
    "Feliz", "Espantado", "Triste", 
    "Contente", "Pensativo", "Irritado", 
    "Os pés", "As mãos", "Os olhos", 
    "Comer", "Andar", "Soltar pipa", 
    "Choro", "Alegria", "Medo", 
    "Menino", "Monstro", "Menina", 
    "", "", "", 
    "Escovar os dentes", "Comido", "Calçado", 
    "Dormindo", "Pulando", "Brincando", 
    ];
  List<String> listaRespostas = [
    "", 
    "Cama",
    "Óculos",
    "Observar",
    "Banho",
    "Alto",
    "Brinquedo",
    "Espantado",
    "Irritado",
    "Os pés",
    "Andar",
    "Medo",
    "Monstro",
    "",
    "Comido",
    "Dormindo",
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
      "imagens/MonstroCama/Dia 01 e 04/Cama.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/estojo.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/lápis.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/boné.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/tênis.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/óculos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/escovado os dentes.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/observar.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/comer.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/café.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/vitamina.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/banho.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/alto.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/baixo.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/fone de ouvido.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/colher.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/pratos.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/Brinquedo.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/feliz.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/espantado.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/triste.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/contente.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/pensativo.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/irritado.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/os pés.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/as mãos.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/os olhos.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/comer 2.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/andar.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/soltar pipa.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/chorando.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/alegria.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/medo.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/menino.png",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/Monstro.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/menina.jpg",
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
      "imagens/MonstroCama/Dia 01 e 04/escovado os dentes.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/comido.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/calçado o sapato.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/dormindo.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/pulando.jpg",
      fit: BoxFit.contain,
    ),
    Image.asset(
      "imagens/MonstroCama/Dia 01 e 04/brincando.jpg",
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
            ResultadoMonstroCamaDia1Page(
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
