import 'package:flutter/material.dart';
import 'package:two_gather/styles/appColors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text("TwoGather",style: TextStyle(),),
        centerTitle: false,
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(children: mockusers(),),
      )),
    );
  }

  Widget _user(){
    return Row(
      children: [
        CircleAvatar(radius: 10,child: Icon(Icons.person_2,size: 10,),),
        SizedBox(width: 10,),
        Text("User",style: TextStyle(fontSize: 15),),
      ],
    );
  }

  List<Widget> mockusers(){
      List<Widget> users = [];
      for (var i = 0; i < 10; i++) {
        users.add(_user());
        users.add(SizedBox(height: 20,));
      }
      return users;
    }
}