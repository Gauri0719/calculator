import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopupButtons extends StatefulWidget {
  const PopupButtons({super.key});

  @override
  State<PopupButtons> createState() => _PopupButtonsState();
}

class _PopupButtonsState extends State<PopupButtons> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PopUp Buttons",style: TextStyle(fontWeight: FontWeight.w800),),
        backgroundColor: Colors.orange ,),
      body: SafeArea(child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: (){
                        _menuOption();
                      },
                      child: Icon(Icons.more_vert))
                ],
              ),
            ),
            ElevatedButton(onPressed: (){
              _showSnackBar();
            }, child: Text("SnackBar")),
            SizedBox(height: 20.0,),
            ElevatedButton(onPressed: (){
              _showAlert();
            }, child: Text("Alert Dialog")),
            SizedBox(height: 20.0,),
            ElevatedButton(onPressed: (){
              _showSimpleDialog();
            }, child: Text("Simple Dialog")),
            SizedBox(height: 20.0,),
            ElevatedButton(onPressed: (){
              _menuOption();
            }, child: Text("Menu Option")),
            SizedBox(height: 20.0,),
            ElevatedButton(onPressed: (){
              _showIosMenu();
            }, child: Text("Cupertino Menu")),
            SizedBox(height: 20.0,),
            ElevatedButton(onPressed: (){
              _showButtonNavigation();
            }, child: Text("Bottom Navigation"))
          ],
        ),
      )),
    );
  }
  // SHOE SNACKBAR
  void _showSnackBar(){
     SnackBar snackBar=SnackBar(content: Text("Marked as Favourite",style:
     TextStyle(fontSize: 20.0,fontWeight:FontWeight.w600,),textAlign: TextAlign.center,),
       showCloseIcon: true,
       backgroundColor:Colors.purpleAccent,);
     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
//   SHOW ALERT DIALOG
  void _showAlert(){
    showDialog(
        barrierDismissible: false,
        context: context, builder:(BuildContext context){
      return AlertDialog(
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        title: Text("Alert Dialog"),
        content: Text("This is demo alert dialog.Would you like to approve it?",style: TextStyle(
        color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.w400),),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Approve",style: TextStyle(
              color: Colors.blue,fontSize: 20.0,fontWeight: FontWeight.w500),),),
          TextButton(onPressed: (){
              Navigator.pop(context);
              },
           child: Text("Cancel",style: TextStyle(
      color: Colors.blueAccent,fontSize: 20.0,fontWeight: FontWeight.w500),),),
        ],
      );
    });
  }
//   SHOE SIMPLE DIALOG
void _showSimpleDialog(){
    showDialog(context: context, builder: (BuildContext context){
       return SimpleDialog(
           contentPadding: EdgeInsets.all(16.0),
         title: Text("Login",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
         children: [
           TextField(
             decoration: InputDecoration(
               labelText: 'Name',
               prefixIcon: Icon(Icons.person),
               // border: OutlineInputBorder(),
             ),
           ),
           SizedBox(height: 20.0,),
           TextField(
             decoration: InputDecoration(
               labelText: 'Email',
               prefixIcon: Icon(Icons.email_sharp),
               // border: OutlineInputBorder(),
             ),
           ),
           SizedBox(height: 20.0,),
           TextField(
             decoration: InputDecoration(
               labelText: 'Message',
               prefixIcon: Icon(Icons.message),
               // border: OutlineInputBorder(),
             ),
           ),
      SizedBox(height: 16),
      ElevatedButton(
      onPressed: () {
      Navigator.of(context).pop(); // Close dialog
      },
      child: Text('Submit'),
      )]);
  });
}
// MENU BOX
void _menuOption(){
    showMenu(context: context, position: RelativeRect.fromLTRB(60, 130, 20, 0), items: [
      PopupMenuItem(child: Text("New Group")),
      PopupMenuItem(child: Text("New Broadcast")),
      PopupMenuItem(child: Text("Linked Devices")),
      PopupMenuItem(child: Text("Starred Message")),
      PopupMenuItem(child: Text("Payments")),

    ]);

}
// CUPERTINO BUTTON
void _showIosMenu(){

    showCupertinoDialog(
        barrierDismissible: true,
        context: context, builder:(BuildContext context){
      return CupertinoAlertDialog(
        title: Text("Dialog"),
        content: Text("Dialog"),
        actions: [
          CupertinoDialogAction(
            child: Text("Ok"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          CupertinoDialogAction(
            child: Text("Cancel"),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      );
    });
}

void _showButtonNavigation(){
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification"),
      ]);
    });
}
}
