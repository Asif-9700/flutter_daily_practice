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
      title: 'Scroll Practice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // 🔽 Vertical Scroll
      body: Column(
        //Coulmn ke andar directly child pass nhi kar sakte uske liye center ya container
        //hona jaruri hai
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Text Button
          Center(
            child: TextButton(
              child: Text("Button"),
              onPressed: () {
                print("Text button is pressed");
              },
            ),
          ),
          //Elevated Button
          Center(
            child: ElevatedButton(
              child: Text("ElevatedButton"),
              onPressed: () {
                print("Elevated button is pressed");
              },
            ),
          ),

          //outline button
          Center(
            child: OutlinedButton(
              child: Text("OutLinedButton"),
              onPressed: () {
                print("Outline button is pressed");
              },
            ),
          ),
        ],
      ),
    );
  }
}
