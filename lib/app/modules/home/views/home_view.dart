import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intro_getx/app/controllers/app_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Obx(() {
          return ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(controller.products[i].title),

                );
              });
        }));
  }
}
