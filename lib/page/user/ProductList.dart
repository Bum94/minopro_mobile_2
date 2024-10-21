import 'package:flutter/material.dart';

class Productlist extends StatelessWidget {
  const Productlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'รายการสินค้าที่จะจัดส่ง',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // จัดตำแหน่งชื่อให้อยู่ตรงกลาง
        backgroundColor:
            const Color.fromARGB(255, 172, 113, 230), // สีพื้นหลังของแถบ
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // เพิ่มระยะห่างจากขอบจอ
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // จัดเรียงให้พอเหมาะ
              children: [
                const Text(
                  'ส่งให้ :', // ข้อความที่คุณต้องการ
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10), // ระยะห่างจากขอบขวา
                  child: SizedBox(
                    width: 80, // กำหนดความกว้างของปุ่ม
                    child: ElevatedButton(
                      onPressed: () {
                        // ฟังก์ชันเมื่อกดปุ่ม
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 198, 145, 242),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        'เพิ่ม',
                        style: TextStyle(fontSize: 14),
                      ), // ข้อความในปุ่ม
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5), // ระยะห่างระหว่างข้อความและสี่เหลี่ยม
            Container(
              width: double.infinity, // ให้กว้างเต็มพื้นที่
              padding: const EdgeInsets.all(20), // ปรับระยะห่างภายในน้อยลง
              decoration: BoxDecoration(
                color: Colors.grey[200], // สีพื้นหลังของสี่เหลี่ยม
                borderRadius: BorderRadius.circular(8.0), // ขอบโค้งมน
              ),
              child: Row(
                children: [
                  // รูปผู้ใช้
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20), // ระยะห่างจากรูปไปยังชื่อ
                    child: CircleAvatar(
                      radius: 60, // ขนาดของวงกลม
                      backgroundImage: NetworkImage(
                          'https://via.placeholder.com/150'), // URL ของรูปผู้ใช้
                    ),
                  ),
                  // ชื่อและเบอร์โทร
                  Expanded(
                    // เพื่อให้ชื่อและเบอร์โทรใช้พื้นที่ที่เหลือ
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('ชื่อผู้รับ', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 10), // ระยะห่างระหว่างชื่อและเบอร์โทร
                        Text('เลขที่สินค้า : 1',
                            style: TextStyle(fontSize: 14)),
                        SizedBox(height: 10), // ระยะห่างระหว่างชื่อและเบอร์โทร
                        Text('รายละเอียดสินค้า',
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5), // ระยะห่างระหว่างข้อความและสี่เหลี่ยม
            Container(
              width: double.infinity, // ให้กว้างเต็มพื้นที่
              padding: const EdgeInsets.all(20), // ปรับระยะห่างภายในน้อยลง
              decoration: BoxDecoration(
                color: Colors.grey[200], // สีพื้นหลังของสี่เหลี่ยม
                borderRadius: BorderRadius.circular(8.0), // ขอบโค้งมน
              ),
              child: Row(
                children: [
                  // รูปผู้ใช้
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20), // ระยะห่างจากรูปไปยังชื่อ
                    child: CircleAvatar(
                      radius: 60, // ขนาดของวงกลม
                      backgroundImage: NetworkImage(
                          'https://via.placeholder.com/150'), // URL ของรูปผู้ใช้
                    ),
                  ),
                  // ชื่อและเบอร์โทร
                  Expanded(
                    // เพื่อให้ชื่อและเบอร์โทรใช้พื้นที่ที่เหลือ
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('ชื่อผู้รับ', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 10), // ระยะห่างระหว่างชื่อและเบอร์โทร
                        Text('เลขที่สินค้า : 1',
                            style: TextStyle(fontSize: 14)),
                        SizedBox(height: 10), // ระยะห่างระหว่างชื่อและเบอร์โทร
                        Text('รายละเอียดสินค้า',
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            // เพื่อให้ปุ่มอยู่ที่ด้านล่างของหน้าจอ
            // ปุ่มเพิ่มรายการสินค้า
            Padding(
              padding: const EdgeInsets.only(bottom: 110),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // ฟังก์ชันเมื่อกดปุ่มเพิ่มรายการสินค้า
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 128, 0, 128), // พื้นหลังสีม่วง
                  ),
                  child: const Text(
                    'ส่งสินค้า',
                    style: TextStyle(color: Colors.white), // ตัวหนังสือสีขาว
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
