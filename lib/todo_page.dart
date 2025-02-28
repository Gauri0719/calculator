// import 'package:flutter/cupertino.dart';
import 'package:azad_sir/model/todomodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/todo_controller.dart';

class TodoPage extends GetView<TodoController> {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                    textAlign: TextAlign.left,
                    controller: controller.titleController,
                    decoration:
                    InputDecoration(hintText: "Enter Title",
                        border: OutlineInputBorder())),
                SizedBox(height: 10.0,),
                TextField(

                  controller: controller.descriptionController,
                  minLines: 3,
                  maxLines: 6,
                  decoration:
                  InputDecoration(hintText: "Enter Description",
                      border: OutlineInputBorder()),),
                ElevatedButton(onPressed: () {
                  controller.onSaveButtonClicked();
                },
                    child: Text("Save")),
                SizedBox(height: 20.0,),
                Obx(() {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: controller.todoList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(controller.todoList[index].title,
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 10.0,
                                    fontWeight: FontWeight.bold),),
                              Text(controller.todoList[index].description,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 10.0,
                                      fontWeight: FontWeight.bold)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(),
                              )
                            ],
                          );
                        }),
                  );
                })
              ],
            ),
          )),
    );
  }
}
