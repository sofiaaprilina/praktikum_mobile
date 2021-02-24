import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // double _celciusToKelvin = 273;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Konverter Suhu'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Suhu Dalam Celcius',
                ),
                keyboardType: TextInputType.number,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Suhu dalam Kelvin'),
                      Text(
                        '150',
                        style: TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Suhu dalam Reamur'), 
                      Text(
                        '40',
                        style: TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                ],
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: (){},
                child: Container(
                  width: 320.0,
                  child: Text('Konversi Suhu', textAlign: TextAlign.center,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
