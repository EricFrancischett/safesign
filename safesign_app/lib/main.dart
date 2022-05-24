import 'package:flutter/material.dart';
import 'package:safesign_app/home/view/widgets/custom_drawer.dart';
import 'package:safesign_app/theme/colors_app.dart';

import 'package:safesign_app/theme/colors_app.dart';
import 'package:safesign_app/widgets/main_buttom.dart';
import 'package:safesign_app/widgets/main_textfield.dart';


import 'package:safesign_app/widgets/return_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return Scaffold(
      backgroundColor: ColorsApp.appDarkGrey,
      endDrawer: const CustomDrawer(firstName: "Eric", lastName: "Francischett", id: "1988069"),

      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            MainTextField(
              textController: emailController,
              labelText: 'Email',
              choosedIcon: Icon(Icons.lock, color: ColorsApp.appBlue,),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
