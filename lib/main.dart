import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text("My First App Title"),
        leading:
            IconButton(icon: const Icon(Icons.menu_outlined), onPressed: () {}),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add))
        ],
      ),
      //backgroundColor: Colors.grey,
      body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(2),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(

                          width: 190,
                          color: Colors.blue[100],
                          child: const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text("STRAWBERRY PAVLOVA"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: 190,
                          color: Colors.blue[100],
                          child: const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Lorem Ipsum is simply dummy tex of the printing and typesetting industry"),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          color: Colors.blue[100],
                          child: const Row(
                            children: [
                              Icon(Icons.star, size: 15),
                              Icon(Icons.star, size: 15),
                              Icon(Icons.star, size: 15),
                              Icon(Icons.star, size: 15),
                              Icon(Icons.star, size: 15),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("170 Reviewers"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.blue[100],
                          width: 190,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Column(children: [
                              Icon(Icons.kitchen,color: Colors.green,),
                                Text("PREP:"),
                                Text("25 Min")
                              ],),
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(children: [
                                  Icon(Icons.timer,color: Colors.green,),
                                SizedBox(height: 8),
                                Text("COOK:"),
                                SizedBox(height: 8),
                                Text("1 Hr")
                              ],),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(children: [
                                Icon(Icons.restaurant,color:Colors.green[500]),
                                SizedBox(height: 8),
                                Text("FEEDS:"),
                                SizedBox(height: 8),
                                Text("4-6")
                              ],)
                            ],
                          ),
                        )
                      ],

                    ),
                    Column(
                      children: [
                        Container(
                          child: Image.asset('images/pavlova.jpg',fit: BoxFit.fill),

                          height: 250,
                          width: 180,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                          icon: const Icon(
                            Icons.call,
                            color: Colors.blue,
                          ),
                          onPressed: () {}),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Call")
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          icon: const Icon(
                            Icons.route,
                            color: Colors.blue,
                          ),
                          onPressed: () {}),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Route")
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          icon: const Icon(
                            Icons.share,
                            color: Colors.blue,
                          ),
                          onPressed: () {}),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Share")
                    ],
                  ),
                ],
              ),
            ],
          ),

      ),
    ),
  ));
}
