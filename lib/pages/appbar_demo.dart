import 'package:flutter/material.dart';

class AppBarDemo extends StatefulWidget {
  const AppBarDemo({Key? key}) : super(key: key);
  // Start ถ้าจะเปลี่ยนเป็น StatelessWidget ให้ทำงานลบ ตรง Start ไป ถึง End
  @override
  State<AppBarDemo> createState() =>
      _AppBarDemo(); // เพิ่ม ถ้าเป็น StatefulWidget
}

class _AppBarDemo extends State<AppBarDemo> {   // End
  int count = 0;
  String message = "Click buttons";
  // เพิ่ม ถ้าเป็น StatefulWidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter AppBar"),
        // toolbarHeight: 60, // ความสูงของ AppBar
        // toolbarOpacity: 1, // ความจางของ AppBar
        // toolbarTextStyle: TextStyle(fontSize: 100), // ปรับขนาด ฟอร์น
        // backgroundColor: Colors.red,
        elevation: 8.0,
        shadowColor: Colors.purple,
        actions: [
          IconButton(onPressed: () {
            setState(() => {
              message = "++",
              count++,
            });
          },
            icon: Icon(Icons.add_box)),
          IconButton(onPressed: () {
            setState(() => {
              message = "- -",
              count--,
            });
          },
            icon: Icon(Icons.remove_circle_outline)),
          IconButton(onPressed: () {
            setState(() => {
              message = "Reset",
              count = 0,
            });
          },
              icon: Icon(Icons.settings_power)),
        ],
      ),
      body: Center(        // ทำให้อยู่ กึ่งกลางหน้าจอ
        child: Text("$count : $message",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),
      ),
      floatingActionButton: FloatingActionButton( // สร้างปุ่ม
        onPressed: () {
          setState(() => {
            count = count + 100,
            message = "WOW"
          });
        },
        child: Icon(Icons.add), // ไอคอน ของปุ่ม
        tooltip: 'เพิ่มค่า',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar( // footer
        child: Container( // สร้างกล่องขึ้นมา
            child: Center(  // จัดให้อยุ่ตรงกลาง
              child:Text("",style: TextStyle(color: Colors.white)),
            ),
          height: 50,  // ความสูงของ footer อยู่ภายใน Container
        ),
        color: Colors.purple, // สีพื้นหลัง อยู้ในตัวของ BottomAppBar
      ),
    );
  }
}
