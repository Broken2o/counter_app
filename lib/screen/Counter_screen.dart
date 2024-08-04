import 'package:flutter/material.dart';
class CounterScreen extends StatefulWidget{
  const CounterScreen ({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int c=0;

  @override

  Widget build (BuildContext context) {

    return  Scaffold (

        appBar: AppBar(

          backgroundColor: Colors.blueGrey.shade100,
          foregroundColor: Colors.blueGrey.shade800,
          centerTitle: true ,
          title: const Text("Counter  page" ,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
        body:

        Center(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blueGrey.shade200,
                        Colors.blueGrey.shade700,
                      ],
                    )
                ),
                child:
                Padding(
                  padding: const EdgeInsets.all(100),
                  child:
                  Column( mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        const Text(
                          'باِسْمِ اللَّـهِ',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 30,
                            // fontFamily: ,
                          ),

                        ),

                        Text(
                          '$c',
                          style: const TextStyle(
                            color: Colors.black38,
                            fontSize: 30,
                            // fontFamily: ,
                          ),

                        ),




                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Row(

                              mainAxisAlignment: MainAxisAlignment.spaceAround,

                              children: [

                                FloatingActionButton(
                                  backgroundColor: Colors.white38,
                                    child: Icon(
                                      Icons.add ,
                                      color: Colors.blueGrey.shade800,
                                    ),
                                    onPressed: (){
                                    c++;
                                    setState(() {});
                                    }),
                                FloatingActionButton(
                                    backgroundColor: Colors.white38,
                                    child: Icon(
                                      Icons.remove ,
                                      color: Colors.blueGrey.shade800,
                                    ),
                                    onPressed: (){
                                      c--;
                                      setState(() {});
                                    }),

                              ]),
                        )


                      ]),
                ))));
  }
}
