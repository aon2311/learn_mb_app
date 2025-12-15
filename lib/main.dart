import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 165, 22, 22)),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 165, 22, 22),
          foregroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Logo555'),
          actions: [
            Text('1'),
            IconButton(
                onPressed: () {
                  debugPrint('Icon1 pressed 1');
                },
                icon: Icon(Icons.info_outline))
          ],
          leading: IconButton(
              onPressed: () {
                debugPrint('leading icon pressed ');
              },
              icon: Icon(Icons.menu)),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo1.png',
                width: 120,
              ),
              Text(
                'Welcome to My Website',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'enjoy to used',
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'สรุปรายละเอียดรายรับรายจ่าย',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text('วันที่ชาร์จ'),
                      Text('สถานีชาร์จ'),
                      Text('ประเภทหัวชาร์จ'),
                      Text('ระยะเวลาในการชาร์จ'),
                      Text('จำนวนหน่อย'),
                      SizedBox(
                        height: 18,
                      ),
                      Text('ค่าบริการ')
                    ],
                  ),
                ],
              ),
              Text(''),
              SizedBox(
                height: 6,
              ),
              ElevatedButton(
                  onPressed: () {
                    debugPrint('pressed botton 1');
                  },
                  child: Text(
                    "OK Botton",
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
