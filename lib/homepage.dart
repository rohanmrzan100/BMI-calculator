import 'package:bmi_calcu/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets.dart';
import 'functions.dart';
import 'resultpage.dart';

const color1 = Color(0xFF1D1E33);
const color2 = Color(0xFF1D2E33);
const color3 = Color(0xFF1D0E33);
var displaycolormale = color2;
var displaycolorfemale = color2;

int height = 180;

int weight = 65;

int age = 21;

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('BMI Calculator')),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: reusablecard1(
                          displaycolormale, FontAwesomeIcons.mars, 'Male'),
                      onTap: () {
                        setState(() {
                          changeColor(sex.male);
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: reusablecard1(
                          displaycolorfemale, FontAwesomeIcons.venus, 'Female'),
                      onTap: () {
                        setState(() {
                          changeColor(sex.female);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            reusablecard3(Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      height.toString(),
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'cm',
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  divisions: 100,
                  min: 120,
                  max: 220,
                  activeColor: Colors.pink,
                  inactiveColor: Colors.grey[900],
                  label: height.toString(),
                  onChanged: (double newvalue) {
                    setState(() {
                      height = newvalue.toInt();
                    });
                  },
                ),
              ],
            )),
            Expanded(
              child: Row(
                children: [
                  reusablecard2(Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        weight.toString(),
                        style: TextStyle(fontSize: 60),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            roundbuttons(FontAwesomeIcons.minus, () {
                              setState(() {
                                weight--;
                              });
                            }),
                            roundbuttons(FontAwesomeIcons.plus, () {
                              setState(() {
                                weight++;
                              });
                            }),
                          ],
                        ),
                      )
                    ],
                  )),
                  reusablecard2(Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        age.toString(),
                        style: TextStyle(fontSize: 60),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            roundbuttons(FontAwesomeIcons.minus, () {
                              setState(() {
                                age--;
                              });
                            }),
                            roundbuttons(FontAwesomeIcons.plus, () {
                              setState(() {
                                age++;
                              });
                            }),
                          ],
                        ),
                      )
                    ],
                  )),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.pink,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return resultPage();
                  }));
                },
                child: Center(child: Text("Calculate BMI")),
              ),
            )
          ],
        ));
  }
}
