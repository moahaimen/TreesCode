import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/HP/IdeaProjects/trees_app/lib/screens/register_page.dart';

class Constraints {
  void setSelectedValue(){

  }

  Widget textField( BuildContext context ,String hint ,Icon _icon){
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 63 ,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration( border: Border.all(
color: Color(0xff707070) 
      ),color: Colors.white,
      borderRadius: BorderRadius.circular(10)),
      child: TextFormField(

decoration: InputDecoration(border: InputBorder.none,

  icon: _icon,
  hintText: hint, hintStyle: TextStyle( color: Color(0xff98B4A3))
),
      ),
    );
  }

  Widget Button(BuildContext context ,String text, void navigateToAbout()){
    return Container(
      height: 63 ,
      width:  MediaQuery.of(context).size.width,

      child: new FlatButton(onPressed: (){
        navigateToAbout();
      }, child: Text(text ,style: TextStyle(
        color: Color(0xffF0EEE9)
      ),),
        color: Color(0xff417555),
      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.circular(10),
      ),
      ),
    );
}
Widget Size(double size){
    return SizedBox(height: size);
}
Widget flatButton(BuildContext context){
    return FlatButton(
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(
           builder: (context) => new registerPage(),
          )
        );
      },
      child:  new Text('sign up', style: TextStyle(color: Color(0xff7E4D4D) ),),

    );
}
Widget text(String _text, FontWeight bold ,double fontSize ,Color color){
    return Text(_text ,textAlign: TextAlign.center,style: TextStyle( color:color,fontWeight: bold , fontSize: fontSize),);
}
Widget radioButton(int selectedRadio, int value ){
    return Radio(
      groupValue: selectedRadio,
      value: value,
      onChanged: (val){

        },
      activeColor: Color(0xff417555),

    );
}

}