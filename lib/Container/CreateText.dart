import 'package:flutter/material.dart';

class CreateText extends StatelessWidget {
 @override
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text('Show Text')
    ),
    body: Center(
      child: Text("ini adalah text dan saya mencoba sedang mencoba membuat kalimat paragraf. Semoga berhasil dan selalu sukses",
      style: TextStyle(
        fontSize: 40, fontFamily: 'DancingScript',
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      maxLines: 7,
      )

    ),
  );
 }
}