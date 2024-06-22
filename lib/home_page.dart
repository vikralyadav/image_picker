import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imagepicker/image_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ImagePickerController controller = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image picker"),
      ),
      body:Obx(() =>   Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: controller.imagePath.isNotEmpty?
              FileImage(File(controller.imagePath.toString())):
              null
            ),
          ),
          TextButton(
            onPressed: (){}, 
            child: Text("Pick image")
            )
        ],
      ),)
     
    );
  }
}