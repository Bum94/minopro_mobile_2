import 'package:flutter/material.dart';

class Productsend extends StatelessWidget {
  const Productsend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'สินค้าที่จะจัดส่ง',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 204, 173, 224), // สีพื้นหลังม่วง
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text('ชื่อผู้รับ : '),
                SizedBox(width: 10),
                Text('น้องเจมส์', style: TextStyle(color: Colors.purple)),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
                Text('เบอร์โทร : '),
                SizedBox(width: 10),
                Text('0245781659', style: TextStyle(color: Colors.purple)),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
                Text('ที่อยู่ : '),
                SizedBox(width: 10),
                Text('ที่อยู่', style: TextStyle(color: Colors.purple)),
              ],
            ),
            const SizedBox(height: 10),
            const Text('สินค้าที่ต้องจัดส่ง :'),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black), // เส้นขอบสีดำ
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('หมายเลขออร์เดอร์ : 10',
                      style: TextStyle(color: Colors.black)),
                  SizedBox(height: 5),
                  Text('ลูกบอล', style: TextStyle(color: Colors.purple)),
                  SizedBox(height: 5),
                  Text('สีน้ำ', style: TextStyle(color: Colors.purple)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.camera_alt_outlined),
                      onPressed: () {
                        // ฟังก์ชันถ่ายภาพ
                      },
                      iconSize: 40,
                    ),
                    const Text('ถ่ายภาพ',
                        style: TextStyle(color: Colors.purple)),
                  ],
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text('แสดงรูปภาพ',
                        style: TextStyle(color: Colors.grey)),
                  ),
                ),
              ],
            ),
            const Spacer(), // ใช้ Spacer เพื่อดันปุ่มลงล่าง
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // ฟังก์ชันยืนยัน
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text('ยืนยัน',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
            const SizedBox(height: 20), // เพิ่มระยะห่างด้านล่างหลังปุ่ม
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // ไปยังหน้าหลัก
              },
            ),
            IconButton(
              icon: const Icon(Icons.list_alt),
              onPressed: () {
                // ไปยังสถานะ
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {
                // เมนูเพิ่มเติม
              },
            ),
          ],
        ),
        color: Color.fromARGB(255, 204, 173, 224), // สีพื้นหลังม่วง
      ),
    );
  }
}
