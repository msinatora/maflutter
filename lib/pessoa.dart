// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyPerson extends StatefulWidget {
  const MyPerson({super.key});

  @override
  State<MyPerson> createState() => _MyPersonState();
}

class _MyPersonState extends State<MyPerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pessoa"),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
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
          child: Column(
            children: [
              SizedBox(height: 40),
              ClipRRect(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://media.licdn.com/dms/image/D4D03AQE2usUFtn9xAQ/profile-displayphoto-shrink_400_400/0/1685848250476?e=1701302400&v=beta&t=WVYHSWLjh4TkbtrOdbCS0Nr7yCY-s9nQN9s5PCgDacU'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(1000.0),
                      border: Border.all(color: Colors.white, width: 5)),
                ),
              ),
              Padding(padding: EdgeInsets.all(12.0)),
              Text(
                "Matheus Sinatora",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(
                  Icons.phone,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 35.0,
                ),
                Padding(padding: EdgeInsets.all(15.0)),
                Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 35.0,
                ),
                Padding(padding: EdgeInsets.all(15.0)),
                Icon(
                  Icons.message,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 35.0,
                ),
              ]),
              Padding(padding: EdgeInsets.all(15.0)),
              SizedBox(
                width: 300,
                height: 250,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Sou o Matheus, tenho 17 anos, moro em Limeira e estou me dedicando aos estudos de Flutter com a Prof. Tânia. Trabalho na Área de Programação a mais de 1 ano com PHP",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
