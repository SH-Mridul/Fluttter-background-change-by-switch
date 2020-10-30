import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
            debugShowCheckedModeBanner: false,
            home:MyApp()
        )
      );

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 bool _value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: _value == false ? Colors.white : Colors.black,
        appBar: AppBar(
          backgroundColor: _value == false ? Colors.white : Colors.grey,
          elevation: 0.5,
          centerTitle: true,
          title: Text('BG CHANGE',style: TextStyle(color:_value == false ? Colors.black : Colors.white)),
          actions: <Widget>[
            Switch(
              value: _value,
              onChanged: (bool val){
                setState(() {
                    _value = val;
                    print(_value);
                });
                
              },
              activeColor: Colors.white,
              )
          ],
        ),

        body: Container(
          color:_value == false ? Colors.white : Colors.black
        ),

     )
   );
  }
}