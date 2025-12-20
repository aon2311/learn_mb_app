import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget buildRow(Icon icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

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
              const Divider(),
              buildRow(Icon(Icons.calculate), 'วันที่ชาร์จ', '20 ธ.ค. 2567'),
              buildRow(Icon(Icons.local_atm), 'สถานที่ชาร์จ', 'สาขาวงสว่างค์'),
              buildRow(Icon(Icons.ev_station), 'ประเภทหัวชาร์จ', '#1'),
              buildRow(Icon(Icons.timer), 'ระยะเวลาในการชาร์จ', '00:12:00'),
              buildRow(Icon(Icons.bolt), 'จำนวนหน่อวย', '9.5  kWh'),
              const Divider(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'ค่าบริการทั้งสิ้น',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '50 บาท',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
