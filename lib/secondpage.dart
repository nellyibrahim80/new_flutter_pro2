import 'package:defapp/secondfile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key, required this.title});

  final String title;



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



    final user =TextEditingController();
    final password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
      Center(  child: ListView(

        children: [
          SizedBox(height: 100,),
        FlutterLogo(size: 80,),
        SizedBox(height: 80,),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: user ,
              decoration: const InputDecoration(
                filled: true,
                labelText: '  Username',
              ),
            ),
          ),
// spacer
          const SizedBox(height: 12.0),
// [Password]
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:password ,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
          ),



          OverflowBar(

            alignment: MainAxisAlignment.end,
              children: [
                // TODO: Add buttons (101)
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    user.clear();
                    password.clear();
                    // TODO: Clear the text fields (101)
                  },
                ),
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                ElevatedButton(
                  child: const Text('NEXT'),
                  onPressed: () {

                    Navigator.push(  context  ,
                        MaterialPageRoute(builder: (context) =>
                            Mysecondscreen(data: "This is the user name : ${user.text}"
                            ,passdata: password.text,
                            ) ,
                                              )  );


                    // TODO: Show the next page (101)
                  },
                ),

              ],
            ),


      ], ) ,)
      ,
    );
  }
}