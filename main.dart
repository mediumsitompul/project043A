import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(child: Text("LOGIN\nNAVIGATION DRAWER",style: TextStyle(color: Colors.white),)),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.teal),
                  child: Text(
                    "\nDrawer Menu",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )),

              //..............................
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  print("Home pressed...!!!");
                },
              ),
              //..............................
              ListTile(
                leading: const Icon(Icons.app_registration),
                title: const Text("Signup"),
                onTap: () {
                  print("Signup pressed...!!!");
                },
              ),
              //..............................
              ListTile(
                leading: const Icon(Icons.reset_tv),
                title: const Text("Reset Password"),
                onTap: () {
                  print("Reset Password pressed...!!!");
                },
              ),
              //..............................
            ],
          ),
        ),
        body: const MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(child: Image(image: AssetImage('assets/images/medium.jpg'))),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLength: 16,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Username'),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLength: 6,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password'),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("LOGIN"))
        ],
      ),
    );
  }
}
