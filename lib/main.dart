import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_minipro2/firebase_options.dart';
import 'package:flutter_minipro2/page/SysHome.dart';
import 'package:flutter_minipro2/page/rider/Home.dart';
import 'package:flutter_minipro2/page/rider/register_rider.dart';
import 'package:flutter_minipro2/page/user/register_user.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart'; // Import ครั้งเดียวก็เพียงพอ

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );

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
      home:
          const RegisterRiderPage(), // ตรวจสอบว่าหน้านี้มีการสร้างไว้อย่างถูกต้อง
    );
  }
}
