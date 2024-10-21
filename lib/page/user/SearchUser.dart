import 'package:flutter/material.dart';

class Searchuser extends StatelessWidget {
  const Searchuser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color.fromARGB(255, 172, 113, 230), // สีพื้นหลังของแถบ
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0), // ปรับความสูงของแถบค้นหา
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0, vertical: 0), // ขยับจากขอบด้านข้าง 20
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 30), // ขยับขึ้น 20 หน่วย
              child: TextField(
                decoration: InputDecoration(
                  filled: true, // เปิดใช้งานการเติมสี
                  fillColor: Colors.white, // ตั้งค่าสีพื้นหลังเป็นสีขาว
                  prefixIcon:
                      const Icon(Icons.search), // ไอคอนแว่นขยายทางซ้ายมือ
                  hintText: 'ค้นหาผู้ใช้...', // ข้อความในช่องค้นหา
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30), // ขอบโค้งมน
                    borderSide:
                        const BorderSide(color: Colors.grey), // ขอบสีเทา
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // เพิ่มระยะห่างจากขอบจอ
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'ค้นหาผู้รับ :', // ข้อความที่คุณต้องการ
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20), // ระยะห่างระหว่างข้อความและสี่เหลี่ยม
            Container(
              width: double.infinity, // ให้กว้างเต็มพื้นที่
              padding: const EdgeInsets.all(16.0), // ระยะห่างภายในสี่เหลี่ยม
              decoration: BoxDecoration(
                color: Colors.grey[200], // สีพื้นหลังของสี่เหลี่ยม
                borderRadius: BorderRadius.circular(8.0), // ขอบโค้งมน
              ),
              child: Row(
                children: [
                  // รูปผู้ใช้
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 10.0), // ระยะห่างจากรูปไปยังชื่อ
                    child: CircleAvatar(
                      radius: 25, // ขนาดของวงกลม
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
                        SizedBox(height: 4), // ระยะห่างระหว่างชื่อและเบอร์โทร
                        Text('เบอร์โทร: 012-345-6789',
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                  // ปุ่ม
                  SizedBox(
                    width: 80, // กำหนดความกว้างของปุ่ม
                    child: ElevatedButton(
                      onPressed: () {
                        // ฟังก์ชันเมื่อกดปุ่ม
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 128, 0, 128),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        'เลือก',
                        style: TextStyle(fontSize: 14),
                      ), // ข้อความในปุ่ม
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
                    'เพิ่มรายการสินค้า',
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
