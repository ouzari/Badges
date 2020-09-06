import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar : AppBar(
        title : Text('Badges demo')
        ),
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Badge(
        child:
            Text('Hello, World!', style: Theme.of(context).textTheme.headline4),
        value: '13 letters',
        color: Colors.deepOrange),
      
      Badge(
        child:
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        value: '5',
        color: Colors.green),
      Badge(
        child:
            FlatButton(child:Text('Click me', style:TextStyle(color:Colors.white, fontWeight:FontWeight.bold)),color:Colors.red, onPressed: () {}),
        value: '145',
        color: Colors.yellow, textColor :Colors.black),
      
      
    ]
    );
  }
}

class Badge extends StatelessWidget {
  const Badge(
      {Key key,
      @required this.child,
      @required this.value,
      this.color = Colors.red,
      this.textColor = Colors.white})
      : super(key: key);
  final Widget child;
  final String value;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(padding: EdgeInsets.all(5), child:child),
       
      Positioned(
          right: 0,
          top: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: color,
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.all(4),
            constraints: BoxConstraints(
                    minWidth: 15,
                    minHeight: 15,
                  ),
            
            child: Text(value,
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12)),
          )),
    ]);
  }
}
