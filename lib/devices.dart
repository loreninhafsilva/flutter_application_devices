// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyDevices extends StatefulWidget {
  const MyDevices({super.key});

  @override
  State<MyDevices> createState() => _MyDevicesState();
}

class _MyDevicesState extends State<MyDevices> {

  Text device1 = Text('GoPro 1855\nCD:4E:9E:C2:58:43');
  Text device2 = Text ('Mi Smart Band 6\nCD:4E:9E:C2:58:43');
  Text device3 = Text('LE_WH-CH700N\nCD:4E:9E:C2:58:43');
  late Text mensagem = Text('');

  void mensagemConect(int a){
    if(a == 1){
      mensagem = device1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 23, 106, 173),
        title: Text("Flutter BLE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 20),
        Text('Available Devices', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold, fontSize: 20),),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 15,),
          Text('GoPro 1855\nCD:4E:9E:C2:58:43'),
          SizedBox(width: 140,),
          ElevatedButton(onPressed: (){
            mensagemConect(1);
            setState(() {
            });
          }, child: Text('Connect')),
        ],),
        SizedBox(height: 5,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 15,),
          Text('Mi Smart Band 6\nCD:4E:9E:C2:58:43'),
          SizedBox(width: 140,),
          ElevatedButton(onPressed: (){
          }, child: Text('Connect')),
        ],),
        SizedBox(height: 5,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 15,),
          Text('LE_WH-CH700N\nCD:4E:9E:C2:58:43'),
          SizedBox(width: 140,),
          ElevatedButton(onPressed: (){
          }, child: Text('Connect')),
        ],),
        mensagem,
      ],)) ,
    );
  }
}