import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int result=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(backgroundColor: Colors.amber,
        title: Text("Calculator By(Data Flair)",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),),
      body: SafeArea(child:
      Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 288.0,bottom: 28),
                child: Text("$result",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              // FIRST ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},

                      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,
                        minimumSize: Size(70, 70), ), child:Text("AC",style:
                  TextStyle(color: Colors.black,
                      fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,minimumSize: Size(70, 70),),
                      child:Text("DEL",style:
                  TextStyle(color: Colors.black,
                      fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,minimumSize: Size(70, 70),), child:
                      Text("%",style:
                  TextStyle(color: Colors.black,
                      fontSize: 30,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,minimumSize: Size(70, 70),), child:Text("/",style:
                  TextStyle(color: Colors.white,
                      fontSize: 30,fontWeight: FontWeight.bold),)),

                ],
              ),
              SizedBox(height: 15,),
              // SECOND ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,minimumSize: Size(70, 70),),
                      child:Text("7",style: TextStyle(color: Colors.white,
                          fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,minimumSize: Size(70, 70),), child:Text("8",style:
                  TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,minimumSize: Size(70, 70),), child:Text("9",style:
                  TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,minimumSize: Size(70, 70),), child:Text("*",style:
                  TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
                ],
              ),
              SizedBox(height: 15,),
              // THIRD ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,minimumSize: Size(70, 70),),
                      child:Text("4",style: TextStyle(color: Colors.white,
                          fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,minimumSize: Size(70, 70),), child:Text("5",style:
                      TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,minimumSize: Size(70, 70),), child:Text("6",style:
                      TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,minimumSize: Size(70, 70),), child:Text("+",style:
                      TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
                ],
              ),
              SizedBox(height: 15,),
              // FOUR ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,minimumSize: Size(70, 70),),
                      child:Text("1",style: TextStyle(color: Colors.white,
                          fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,minimumSize: Size(70, 70),), child:Text("2",style:
                      TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,minimumSize: Size(70, 70),), child:Text("3",style:
                      TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,minimumSize: Size(70, 70),), child:Text("-",style:
                      TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
                ],
              ),
              SizedBox(height: 15,),
              // FIFTH ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,minimumSize: Size(70, 70),),
                      child:Text("",style: TextStyle(color: Colors.white,
                          fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,minimumSize: Size(70, 70),), child:Text("0",style:
                      TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white10,minimumSize: Size(70, 70),), child:Text(".",style:
                      TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,minimumSize: Size(70, 70),), child:Text("=",style:
                      TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
                ],
              ),

            ],
          ),
        ),

      ));

  }
}
