import 'package:flutter/material.dart';

class Addproduct extends StatelessWidget {
  const Addproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เพิ่มรายการสินค้า',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // กำหนดขนาดของตัวอักษรให้ชัดเจน
        ),
        centerTitle: true, // จัดตำแหน่งชื่อให้อยู่ตรงกลาง
        backgroundColor:
            const Color.fromARGB(255, 172, 113, 230), // สีพื้นหลังของแถบ
      ),
      body: SingleChildScrollView(
        // เพิ่ม SingleChildScrollView เพื่อให้สามารถเลื่อนหน้าจอได้
        child: Center(
          child: Padding(
            // ปรับ padding เป็น 44 เพื่อขยับเข้ามาอีก 20 หน่วยจาก padding เดิม (24 + 20)
            padding: const EdgeInsets.all(44.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start, // จัดให้อยู่ซ้ายมือ
              children: [
                // ปุ่ม "เลือกภาพจากแกลอรี" อยู่ตรงกลาง
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // ฟังก์ชันเมื่อกดปุ่ม "เลือกภาพจากแกลอรี"
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 169, 107, 220),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('เลือกภาพจากแกลอรี'),
                  ),
                ),
                const SizedBox(
                    height: 24.0), // เพิ่มระยะห่างระหว่างปุ่มและ TextField

                // ข้อความ "ชื่อสินค้า :" ตามด้วย TextField ด้านล่าง
                const Text(
                  'ชื่อสินค้า :',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), // เพิ่มขอบให้ TextField
                  ),
                ),
                const SizedBox(height: 16.0),

                // ข้อความ "รายละเอียดสินค้า :" ตามด้วย TextField ด้านล่าง
                const Text(
                  'รายละเอียดสินค้า :',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), // เพิ่มขอบให้ TextField
                  ),
                  maxLines: 5,
                ),
                const SizedBox(height: 24.0), // เพิ่มระยะห่างก่อนปุ่ม

                // ปุ่ม "ยืนยันการเพิ่มสินค้า" อยู่ตรงกลาง
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // ฟังก์ชันเมื่อกดปุ่ม "ยืนยันการเพิ่มสินค้า"
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // สีพื้นหลังของปุ่ม
                      foregroundColor: Colors.white, // สีของตัวหนังสือ
                    ),
                    child: const Text('ยืนยันการเพิ่มสินค้า'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
