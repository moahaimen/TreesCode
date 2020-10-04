import 'package:flutter/material.dart';
import '../constraints.dart';
import 'about_code_for_iraq.dart';
class registerPage extends StatefulWidget {

  Constraints _constraints = new Constraints();

  
  @override
  _registerPageState createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  int selectedRadio =0;
  void setSelectedRadio( int value){
    setState(() {
      selectedRadio =value ;
    });
  }
  void NavigateToAbout(){
    Navigator.of(context).push(
      new MaterialPageRoute(builder:(context) =>  aboutPage() )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0EEE9),
      body: new SingleChildScrollView(
        child: new Container(
          padding: EdgeInsets.only(right: 20,left: 20),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget._constraints.Size(60),
              widget._constraints.text('create an account', FontWeight.bold, 20, Color(0xff417555)),
              widget._constraints.Size(35),
              widget._constraints.textField(context, 'Full Name', null),
              widget._constraints.Size(20),
              widget._constraints.textField(context, 'Email', null),
              widget._constraints.Size(20),
              widget._constraints.textField(context, 'Password', null),
              widget._constraints.Size(20),
              widget._constraints.textField(context, 'Confirm Password', null),
              widget._constraints.Size(40),

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Radio(
                groupValue: selectedRadio,
                value: 1,
                onChanged: (val){
setSelectedRadio(val);
                },
                activeColor: Color(0xff417555),

              ),
                  widget._constraints.text('اخصائي تشجير', FontWeight.normal ,14,Color(0xff417555)),
                   Radio(
                     groupValue: selectedRadio,  value: 2,
                  onChanged: (val){
                     setSelectedRadio(val);
                  },
                  activeColor: Color(0xff417555),
          ),

                  widget._constraints.text(' مستخدم مهتم', FontWeight.normal ,14,Color(0xff417555)),


                ],
              ),
              widget._constraints.Size(35),
              widget._constraints.text('By creating an account you agree to our '
              'Terms of Service and Privacy Policy',FontWeight.normal,16,Color(0xff417555)),
              widget._constraints.Size(35),
              widget._constraints.Button(context ,'sign up',NavigateToAbout)
            ],
          ),
        ),
      ),
    );
  }
}
