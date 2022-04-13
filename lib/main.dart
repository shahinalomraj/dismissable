import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Dismissible(
          key: ValueKey("abc"),
          secondaryBackground: Container(
            color: Colors.red,
            child: Icon(Icons.delete,size: 40,),
          ),
          background: Container(
            color: Colors.blue,
            child: Icon(Icons.delete,size: 40,),
          ),
          child: ListTile(
            title: Text("Hello Flutter"),
            subtitle: Text("i love flutter"),
            trailing: Icon(Icons.ac_unit,),
          ),
        ),
      ),
    );
  }
}
