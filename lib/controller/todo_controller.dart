import 'package:azad_sir/model/todomodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TodoController extends GetxController{
 TextEditingController titleController=TextEditingController();
 TextEditingController descriptionController=TextEditingController();

   final todoList=[].obs;
 void onSaveButtonClicked(){
   todoList.add(ToDoModel(
       title: titleController.text,
       description:descriptionController.text));

    titleController.text='';
   descriptionController.text='';
 }

}