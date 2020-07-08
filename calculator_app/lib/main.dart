import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hesap Makinesi',
      home: Iskele(),
    );
  }
}
class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text ("basit hesap makinesi"),),
       body :AnaEkran(),
    );
   
  }
}
class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {

num sayi1, sayi2 , sonuc;
TextEditingController num1 = TextEditingController();
TextEditingController num2 = TextEditingController();
sayiTopla(){
  setState(() {
   sayi1= num.parse(num1.text);
   sayi2=num.parse(num2.text);
    sonuc =sayi1+sayi2;
  });
}
sayiCikar(){
  setState(() {
   sayi1= num.parse(num1.text);
   sayi2=num.parse(num2.text);
    sonuc =sayi1-sayi2;
  });
}
sayiCarp(){
  setState(() {
   sayi1= num.parse(num1.text);
   sayi2=num.parse(num2.text);
    sonuc =sayi1*sayi2;
  });
}
sayiBol(){
  setState(() {
   sayi1= num.parse(num1.text);
   sayi2=num.parse(num2.text);
    sonuc =sayi1/sayi2;
  });
}
  @override
  Widget build(BuildContext context) {
    return Container(
      child :Center (
        child:Column(children :<Widget> [
          Text (sonuc.toString()),
          TextField(
            controller: num1,
          ),
          TextField(
            controller: num2,
          ),
          RaisedButton(onPressed: sayiTopla,child :Text("Topla"),),
          RaisedButton(onPressed: sayiCikar ,child :Text("Çıkar"),),
          RaisedButton(onPressed: sayiCarp,child :Text("Çarp"),),
          RaisedButton(onPressed: sayiBol,child :Text("Böl"),),
        ],)
      ),
    );
  }
}