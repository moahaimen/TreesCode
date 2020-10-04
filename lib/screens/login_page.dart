import 'package:flutter/material.dart';
import '../constraints.dart';
class LoginPage extends StatefulWidget {
  Constraints _constraints = new Constraints();



  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String email='email' ;
  String password ='password';

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        child:
        Container(
          padding: EdgeInsets.only(right: 20,left: 20),
          child: Column(
            children: [
              widget._constraints.Size(60),
              new Image.asset('assets/tree.png'),
              widget._constraints.Size(60),
              widget._constraints.textField(context,email ,Icon(Icons.email,color: Color(0xff98B4A3),)),
              widget._constraints.Size(20),
              widget._constraints.textField( context,password, Icon(Icons.vpn_key ,color: Color(0xff98B4A3))),
              widget._constraints.Size(30),
              widget._constraints.Button(context ,'login', null),
              widget._constraints.flatButton(context)
            ],
          ),
        ),
      ),
      backgroundColor:
      Color(0xffF0EEE9),
    );

  }
}
