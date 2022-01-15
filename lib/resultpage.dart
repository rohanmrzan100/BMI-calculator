import 'package:bmi_calcu/functions.dart';
import 'package:bmi_calcu/homepage.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';

class resultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double bmi_value = calculateBMI(weight, height);
    String Stringbmi_value = bmi_value.toStringAsPrecision(4);

    String advicetext = giveAdvice(bmi_value);

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
            decoration: BoxDecoration(
                color: Color(0xFF1D2E33),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textforresult('Age: ', 20),
                    textforresult('$age', 40)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textforresult('Weight: ', 20),
                    textforresult('$weight', 40)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textforresult('Height: ', 20),
                    textforresult('$height', 40)
                  ],
                ),
              ],
            ),
          )),
          Expanded(
            child: Column(
              children: [
                textforresult('Your BMI : ', 30),
                textforresult('$Stringbmi_value', 50)
              ],
            ),
          ),
          Expanded(child: textforresult('$advicetext', 20)),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.pink,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return homePage();
                }));
              },
              child: Center(child: Text("Go back ")),
            ),
          ),
        ],
      ),
    );
  }
}
