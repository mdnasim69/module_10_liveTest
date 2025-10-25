import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(), debugShowCheckedModeBanner: false);
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List details = [
      {'name': "md nasim", 'phone': "01703697575"},
      {'name': "mst jakia", 'phone': "0144597575"},
      {'name': "md nahid", 'phone': "01703695787"},
      {'name': "tusar", 'phone': "0170367375"},
      {'name': "naism", 'phone': "01343697575"},
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Contact"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "phone",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromWidth(double.maxFinite),
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text("Add"),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: details.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    trailing: Icon(Icons.phone),
                    title: Text(details[index]['name']),
                    subtitle: Text(details[index]['phone']),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      child: Icon(Icons.person),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
