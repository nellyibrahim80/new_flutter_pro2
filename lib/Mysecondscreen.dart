import 'package:flutter/material.dart';

class Mysecondscreen extends StatefulWidget {
  var userD;
  var trans;
  var passdata;
  Mysecondscreen({this.trans, this.passdata ,this.userD,  super.key});

  @override
  State<Mysecondscreen> createState() => _MysecondscreenState();
}
class _MysecondscreenState extends State<Mysecondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Second"),
        automaticallyImplyLeading:false   )   ,
        body: Center(child: Column(
          children: [
            Text("transfered data : ${widget.trans}"),
            Text("${widget.userD}"),
            Text("${widget.passdata}"),
            Text("${widget.passdata}"),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Back")),

            ElevatedButton(onPressed: (){

              Navigator.pop(context);
            }, child: Icon(Icons.backpack))
          ],
        ),) ,

        );
    }
}
