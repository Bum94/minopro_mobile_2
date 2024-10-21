import 'package:flutter/material.dart';

class Awaitjob extends StatelessWidget {
  const Awaitjob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'รอการรับงาน',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 204, 173, 224),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('ชื่อผู้รับ', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 10),
                        Text('เลขที่สินค้า : 1',
                            style: TextStyle(fontSize: 14)),
                        SizedBox(height: 10),
                        Text('รายละเอียดสินค้า',
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 232, 255),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('ชื่อผู้รับ', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 10),
                        Text('เลขที่สินค้า : 1',
                            style: TextStyle(fontSize: 14)),
                        SizedBox(height: 10),
                        Text('รายละเอียดสินค้า',
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            // Added 3 more containers
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('ชื่อผู้รับ', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 10),
                        Text('เลขที่สินค้า : 1',
                            style: TextStyle(fontSize: 14)),
                        SizedBox(height: 10),
                        Text('รายละเอียดสินค้า',
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 232, 255),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('ชื่อผู้รับ', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 10),
                        Text('เลขที่สินค้า : 1',
                            style: TextStyle(fontSize: 14)),
                        SizedBox(height: 10),
                        Text('รายละเอียดสินค้า',
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
