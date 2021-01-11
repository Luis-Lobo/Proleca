import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proleca/Pages/home_page.dart';
import 'package:proleca/Pages/login_page.dart';
import 'package:proleca/util/size_config.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'dart:io'; 
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';


class ResultadoArvoreCintiaDia1Page extends StatelessWidget {

  final int pontosTentativa1;
  final int pontosTentativa2;
  final int pontosTentativa3;
  final List<String> listaPerguntas; 
  final List<String> listaTentativas; 

  ResultadoArvoreCintiaDia1Page({Key key, 
    @required this.pontosTentativa1,
    @required this.pontosTentativa2,
    @required this.pontosTentativa3,
    @required this.listaPerguntas,
    @required this.listaTentativas,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final GoogleSignIn _gSignIn =  GoogleSignIn();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).textScaleFactor * 80),
        child: AppBar(
        title: Center(
          child: Container(
            padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 1.5),
            child: Text("A árvore de Cíntia - Resultado Dia 1",
            style: TextStyle(
              fontSize: SizeConfig.safeBlockVertical * 4.5,
              ),
            ),
          ),
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
            Container(
              padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 2),
              child: Text("Pontuação total: ${pontosTentativa1 + pontosTentativa2 + pontosTentativa3}",
                style: TextStyle(
                  fontSize: SizeConfig.safeBlockVertical * 5,
                  fontWeight: FontWeight.bold,
                )
              )
            ),
            Container(
              child: Text("Primeira tentativa: ${pontosTentativa1} \nSegunda tentativa: ${pontosTentativa2} \nTerceira tentativa: ${pontosTentativa3}",
                style: TextStyle(
                  fontSize: SizeConfig.safeBlockVertical * 4,
                )
              )
            ),
            Center(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: listaPerguntas.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Container(
                      padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 2),
                      alignment: Alignment.center,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.white,
                        elevation: 5,
                        child: ListTile(
                            contentPadding: EdgeInsets.all(8),
                            title: Text(listaPerguntas[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: SizeConfig.safeBlockVertical * 5,
                                fontWeight: FontWeight.bold,
                              )),
                              subtitle: Text(listaTentativas[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: SizeConfig.safeBlockVertical * 5,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
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
            Container(
              color: Colors.purple[700],
              child: FlatButton(
                child: Text("Gerar PDF",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.safeBlockVertical * 5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: _createPDF,
              ),
            ),
          ],
        ),
      ),
    );  
  }

  Future<void> _createPDF() async {
    PdfDocument document = PdfDocument();

    //Create unordered list and draw list on page
    PdfUnorderedList(
        text: 
        '${listaPerguntas[0]}\n${listaTentativas[0]}\n'
        '${listaPerguntas[1]}\n${listaTentativas[1]}\n'
        '${listaPerguntas[2]}\n${listaTentativas[2]}\n'
        '${listaPerguntas[3]}\n${listaTentativas[3]}\n'
        '${listaPerguntas[4]}\n${listaTentativas[4]}\n'
        '${listaPerguntas[5]}\n${listaTentativas[5]}\n'
        '${listaPerguntas[6]}\n${listaTentativas[6]}\n'
        '${listaPerguntas[7]}\n${listaTentativas[7]}\n'
        '${listaPerguntas[8]}\n${listaTentativas[8]}\n'
        '${listaPerguntas[9]}\n${listaTentativas[9]}\n'
        '${listaPerguntas[10]}\n${listaTentativas[10]}\n'
        '${listaPerguntas[11]}\n${listaTentativas[11]}\n'
        '${listaPerguntas[12]}\n${listaTentativas[12]}\n'
        '${listaPerguntas[13]}\n${listaTentativas[13]}\n'
        '${listaPerguntas[14]}\n${listaTentativas[14]}\n'
        '${listaPerguntas[15]}\n${listaTentativas[15]}',
        style: PdfUnorderedMarkerStyle.disk,
        font: PdfStandardFont(PdfFontFamily.helvetica, 12),
        indent: 10,
        textIndent: 10,
        format: PdfStringFormat(lineSpacing: 10))
    .draw(page: document.pages.add(), bounds: Rect.fromLTWH(0, 10, 0, 0));
   
    //Saves the document
    //File('Output.pdf').writeAsBytes(document.save());
    var bytes = document.save();
    //Disposes the document
    document.dispose();

    //Get external storage directory
    Directory directory = await getExternalStorageDirectory();
    //Get directory path
    String path = directory.path;
    //Create an empty file to write PDF data
    File file = File('$path/Output.pdf');
    //Write PDF data
    await file.writeAsBytes(bytes, flush: true);
    //Open the PDF document in mobile
    OpenFile.open('$path/Output.pdf');
  }
}