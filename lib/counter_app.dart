import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        child: Column(
          children:[
            ListTile(
             
            )
          ]
        ),
      ),
      body: SafeArea(child: Center(
        child: Container(
          decoration:BoxDecoration(color: Colors.teal),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(
                   height: 100.0,
                   width: 100.0,
                   child: Card(
                     color: Colors.white,
                       child: Center(
                         child: Text("$result",
                             style:TextStyle(
                                 fontSize: 30.0,
                                 fontWeight:FontWeight.w800 )),
                       )),
                 ),
                 SizedBox(height: 30.0,),
                 SizedBox(
                   height:60,
                   // decoration:BoxDecoration(color: Colors.deepOrangeAccent),
                   child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ElevatedButton(onPressed: () {
                     result=result+1;
                     setState(() {});
                   },
                    child: Text("ADD",style:
                   TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.redAccent),)),
                   SizedBox(width: 30.0,),
                   ElevatedButton(onPressed: () {
                     result=result-1;
                     setState(() {});
                   }, child: Text("MINUS",style:
                   TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.redAccent),)),
                   SizedBox(width: 30.0,),
                   ElevatedButton(onPressed: () {
                     result=0;
                     setState(() {});
                   }, child: Text("RESET",style:
                   TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.redAccent),)),
                 ],
                   ),
                 )
               ],
          ),
        ),
      )),
    );
  }
}