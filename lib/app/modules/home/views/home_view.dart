import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Obx(
              () => Text(
                '📎 Count : ${controller.count.value}',
                style: const TextStyle(fontSize: 20),
              ),
            )),
            ElevatedButton.icon(
                onPressed: () {
                  controller.increment();
                },
                icon: const Icon(Icons.plus_one),
                label: const Text('Plus 1️⃣')),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () => Get.toNamed('/home/detail'),
                child: const Text('Go to detail Page'))
          ],
        ));
  }
}
