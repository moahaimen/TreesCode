import 'package:flutter/material.dart';
import 'package:trees_app/constraints.dart';

class aboutPage extends StatelessWidget {
  Constraints _constraints =new Constraints();

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Color(0xffF0EEE9),
      body: new SingleChildScrollView(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _constraints.Size(30),
            _constraints.text('Code For Iraq ', FontWeight.normal, 33, Color(0xff7E4D4D)),
Divider(
  color: Colors.black,
  thickness: 2,
  indent: 20,
  endIndent: 20,
),
        Image.asset('assets/code_for_iraq.png',width: 168,height: 168,),

          _constraints.Size(10),
            new Padding(padding: EdgeInsets.only(right:15 , left: 15 ),

              child: _constraints.text(
                'وهي مبادرة إنسانية غير ربحية  تهدف الى'
                'خدمة المجتمع عن طريق البرمجة تعتبر هذه '
                ' المبادرة  مبادرة تعليمية حقيقية ترعى المهتمين '
                'بتعلم تصميم وبرمجة تطبيقات الهاتف الجوال '
                'ومواقع الانترنت وبرامج الحاسوب والشبكات '
                'والاتصالات ونظم تشغيل الحاسوب باستخدام '
                'التقنيات مفتوحة المصدر كما توفر لهم جميع '
                'الدروس التعليمية اللازمة بشكل مجاني  '
                  , FontWeight.normal,20 , Color(0xff000000))
          ,
            )
          ],
        ),
      ),
    );
  }
}
