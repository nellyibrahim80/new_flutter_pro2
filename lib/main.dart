import 'package:flutter/material.dart';
import 'package:new_flutter_pro/Mysecondscreen.dart';

void main() {
  runApp(myfirstapp());
}
class myfirstapp extends StatelessWidget {
  const myfirstapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myscaf(),
    );
  }
}
class Myscaf extends StatelessWidget {
  const Myscaf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 500,
            width: 200,
            child: Column(
              children: [
                Dimond(),
                MyLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class MyLogin extends StatelessWidget {
  var userData = TextEditingController();
  var passData = TextEditingController();
  MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: userData,
          decoration: InputDecoration(filled: true, labelText: "Username"),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          controller: passData,
          decoration: InputDecoration(
              //border: Border.all(color: Colors.black),
              filled: true,
              labelText: "Password"),
          obscureText: true,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Mysecondscreen(
                            trans: "user name :",
                            userD: " ${userData.text} ",
                            passdata: "password ${passData.text}"),
                  ));
            },
            child: const Icon(Icons.login_outlined))
      ],
    );
  }
}

class Dimond extends StatelessWidget {
  const Dimond({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("images/dimond.png"),
        SizedBox(
          height: 15,
        ),
        Text("Sherin"),
        SizedBox(
          height: 40,
        ),
        /* ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => Mysecondscreen(),));
        }, child: Text("Next"))*/
      ],
    );
  }
}
