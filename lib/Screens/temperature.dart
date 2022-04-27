import 'package:flutter/material.dart';
import 'package:myapp/components/bottomNav.dart';

class Temperature extends StatefulWidget {
  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF171724),
        title: Text("Temperature",style: Theme.of(context).appBarTheme.titleTextStyle,),
      ),
      body: Text('temperature'),
      
    );
  }
}
