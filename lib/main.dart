import 'package:flutter/material.dart';

void main() {
  runApp(
    new MyApp()
  );
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "sample App", theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new SampleAppPage(),);
  }
}

class SampleAppPage extends StatefulWidget{

  SampleAppPage({Key key}) : super(key : key);

  @override
  State createState() {
    return new _SampleAppPageState();
  }
}

class _SampleAppPageState extends State<SampleAppPage>{
  String text = "I Like Flutter";

  void _updateText(){
    setState(() {
      text = "Flutter is Awesome";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("sample app"),
      ),
      body: new Center(child: new Text(text),),
      floatingActionButton: new FloatingActionButton(onPressed: _updateText,tooltip: 'update text',child: new Icon(Icons.update),),
    );
  }


}


