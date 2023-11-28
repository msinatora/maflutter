// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyFavorito extends StatefulWidget {
  const MyFavorito({super.key});

  @override
  State<MyFavorito> createState() => _MyFavoritoState();
}

class _MyFavoritoState extends State<MyFavorito> {
  int cont = 0;
  int valor = 0;
  String imagem = '';
  String mensagem = 'Contador usando Stateful Widget';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Contador",
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 6, 48, 48),
                Color.fromARGB(255, 65, 173, 173),
              ],
            )),
            child: Column(children: [
              SizedBox(
                height: 120,
              ),
              SizedBox(
                width: 300,
                height: 180,
                child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/6341/6341774.png'),
              ),
              Padding(padding: EdgeInsets.all(15.0)),
              Text(
                mensagem,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Padding(padding: EdgeInsets.all(2.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      menos();
                      setState(() {});
                    },
                    shape: CircleBorder(),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    child: Center(
                        child: Text("-",
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromARGB(255, 6, 48, 48)))),
                  ),
                  Text(
                    valor.toString(),
                    style: TextStyle(fontSize: 105, color: Colors.white),
                  ),
                  FloatingActionButton(
                      onPressed: () {
                        mais();
                        setState(() {});
                      },
                      shape: CircleBorder(),
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      child: Text("+",
                          style: TextStyle(
                              fontSize: 40,
                              color: Color.fromARGB(255, 6, 48, 48)))),
                ],
              ),
              Padding(padding: EdgeInsets.all(12.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Valor do contador: ",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    valor.toString(),
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }

  void mais() {
    valor++;
  }

  void menos() {
    valor--;
  }
}
