// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyPrincipal extends StatefulWidget {
  const MyPrincipal({super.key});

  @override
  State<MyPrincipal> createState() => _MyPrincipalState();
}

class _MyPrincipalState extends State<MyPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu portfólio",
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/favoritos');
              },
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/person');
              },
              icon: Icon(Icons.person_2_outlined)),
        ],
      ),
      backgroundColor: Color.fromARGB(238, 238, 238, 238),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(35.0)),
            SizedBox(
              width: 300,
              height: 300,
              child: Image.network(
                  'https://res.cloudinary.com/teepublic/image/private/s--mEKJoH3U--/c_fit,g_north_west,h_840,w_679/co_ffffff,e_outline:40/co_ffffff,e_outline:inner_fill:1/co_ffffff,e_outline:40/co_ffffff,e_outline:inner_fill:1/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_auto,h_630,q_auto:good:420,w_630/v1585726530/production/designs/8796655_0.jpg'),
            ),
            Padding(padding: EdgeInsets.all(25.0)),
            Text("Seja bem vindo(a) ao",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text("app Sinatora Flutter",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Padding(padding: EdgeInsets.all(5.0)),
            Text("aqui você irá encontrar:", style: TextStyle(fontSize: 20)),
            Padding(padding: EdgeInsets.all(15.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_box),
                Text(" Meu perfil", style: TextStyle(fontSize: 25))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_box),
                Text(" Um Contador", style: TextStyle(fontSize: 25))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_box),
                Text(" Dados sobre mim", style: TextStyle(fontSize: 25))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
