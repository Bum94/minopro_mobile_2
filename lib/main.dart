import 'package:flutter/material.dart';
import 'package:flutter_minipro2/page/SysHome.dart';
import 'package:flutter_minipro2/page/rider/Home.dart';
import 'package:flutter_minipro2/page/user/AddProduct.dart';
import 'package:flutter_minipro2/page/user/AwaitJob.dart';
import 'package:flutter_minipro2/page/user/ProductList.dart';
import 'package:flutter_minipro2/page/user/ProductSend.dart';
import 'package:flutter_minipro2/page/user/SearchUser.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart'; // Import ครั้งเดียวก็เพียงพอ

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePageRider(), // ตรวจสอบว่าหน้านี้มีการสร้างไว้อย่างถูกต้อง
    );
  }
}
