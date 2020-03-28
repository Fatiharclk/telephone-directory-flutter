import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Contact{
  String name;
  String phoneNumber;

  Contact({this.name,this.phoneNumber});

}



class MyApp extends StatelessWidget
{
   final List<Contact> contacts =[
     Contact(name: "FATİH",phoneNumber : "0504 321 12 32"),
     Contact(name: "AKİF",phoneNumber : "0504 321 12 32"),
     Contact(name: "HASAN",phoneNumber : "0504 321 12 32"),
     Contact(name: "HÜSEYİN",phoneNumber : "0504 321 12 32"),
     Contact(name: "RAMMUS",phoneNumber : "0504 321 12 32"),
     Contact(name: "CANSU",phoneNumber : "0504 321 12 32"),
     Contact(name: "LALE",phoneNumber : "0504 321 12 32"),
     Contact(name: "HAYIRDIR",phoneNumber : "0504 321 12 32"),
     Contact(name: "ACMA 1",phoneNumber : "0504 321 12 32"),
     Contact(name: "FATİH",phoneNumber : "0504 321 12 32"),
     Contact(name: "AKİF",phoneNumber : "0504 321 12 32"),
     Contact(name: "HASAN",phoneNumber : "0504 321 12 32"),
     Contact(name: "HÜSEYİN",phoneNumber : "0504 321 12 32"),
     Contact(name: "RAMMUS",phoneNumber : "0504 321 12 32"),
     Contact(name: "CANSU",phoneNumber : "0504 321 12 32"),
     Contact(name: "LALE",phoneNumber : "0504 321 12 32"),
     Contact(name: "HAYIRDIR",phoneNumber : "0504 321 12 32"),
     Contact(name: "ACMA 1",phoneNumber : "0504 321 12 32"),
     
   ];



  Widget build(BuildContext context){
    return MaterialApp(
      
      home: Scaffold(

        appBar: AppBar(title: Text("Phone Book",),
            actions: <Widget>[IconButton(icon: Icon(Icons.add_alarm), onPressed:(){})],),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: contacts.length,
            itemBuilder:(BuildContext context , int index){
            Contact contact = contacts[index];
            return Container(
              padding: EdgeInsets.all(10),
              


              child: Row(children: <Widget>[
               CircleAvatar(
                 backgroundImage:
                 NetworkImage('https://pbs.twimg.com/profile_images/455829362558763008/UeBuUpaE_400x400.jpeg'),
                 child: Text(contact.name[0], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                 ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[Text(contact.name),Text(contact.phoneNumber)],
                

               )
                 
               
                 


            ],),);




        } ),),
      )

      ,);
  }

}

