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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp CS KMUTNB'),
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
              Text(
                'Hello Test CS 222',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'KMUTNB',
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRLZRdb0ADRBMLkkBQxGzsDxSmK2JdS8KgBQ&s',
                width: 120,
              ),
              Image.asset(
                'assets/images/toon1.jpeg',
                width: 120,
              ),
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
