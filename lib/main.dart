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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Hello Test CS 222',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'KMUTNB',
                ),
                Text(
                  'What',
                  style: TextStyle(fontSize: 20),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRLZRdb0ADRBMLkkBQxGzsDxSmK2JdS8KgBQ&s',
                          width: 120,
                        ),
                        Text('เห็ด')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/toon1.jpeg',
                          width: 120,
                        ),
                        Text('data'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/logo1.png',
                          width: 120,
                        ),
                        Column(
                          children: [
                            Text('Logo',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Text(
                              'jjjjjjjjjjjjjjjjjjjjjjjjjj',
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/toon1.jpeg',
                          width: 120,
                        ),
                        Text('data'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/logo1.png',
                          width: 120,
                        ),
                        Column(
                          children: [
                            Text('Logo',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Text(
                              'jjjjjjjjjjjjjjjjjjjjjjjjjj',
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/logo1.png',
                      width: 120,
                    ),
                    Column(
                      children: [
                        Text('Logo',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(
                          'jjjjjjjjjjjjjjjjjjjjjjjjjj',
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton.outlined(onPressed: () {}, icon: Icon(Icons.abc)),
                    Text('data'),
                    Text('data333'),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Card(
                  color: const Color.fromARGB(255, 197, 231, 158),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                    child: Text(
                      'data',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(padding: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
                  
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 255, 133, 149),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(0, 0)
                      )
                    ]
                  ),
          
                  
                  child: Text(
                    'history',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password'
                  ),
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
      ),
    );
  }
}
