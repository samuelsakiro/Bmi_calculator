import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/results_page.dart';
import 'calculator_engine.dart';
const activeColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);
enum Gender {
  male,
  female,
}

class Input_Page extends StatefulWidget {
  const Input_Page({Key? key}) : super(key: key);

  @override
  State<Input_Page> createState() => _InputPageState();
}

class _InputPageState extends State<Input_Page> {

  Gender? selectedGender;
  int height = 180;
  int weight =  60;
  int age= 20;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('BmiCalculator'),
        centerTitle: true,
        backgroundColor: activeColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap:()

                      {
                        setState((){
                          selectedGender = Gender.male;
                        },);
                      },



                      child: Icon(
                        FontAwesomeIcons.male,
                        size: 70.0,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,

                    ),
                    Text('MALE',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: selectedGender == Gender.male ? activeColor : inactiveColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),),
              Expanded(child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap:()

                      {
                        setState((){
                          selectedGender = Gender.female;
                        },);
                      },
                      child: Icon(
                        FontAwesomeIcons.female,
                        size: 70.0,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,

                    ),
                    Text('FEMALE',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: selectedGender == Gender.female ? activeColor : inactiveColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),),
            ],
          ),),
          Expanded(child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xFF8D8E98),

                  ),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(),
                      style: TextStyle(
                        fontSize: 38.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text('CM'),
                  ],
                ),
                Slider(value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555 ),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      },);
                    }),
              ],
            ),
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WEIGHT',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                    Text(weight.toString(),
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Color(0xFF4C4F5E),
                          onPressed: (){
                            setState((){
                              weight++;
                            });
                          },
                          elevation: 10.0,
                          child: Icon(Icons.add,
                            size: 40.0,
                            color: Colors.white,
                          ),

                        ),
                        SizedBox( width: 10,),
                        FloatingActionButton(
                          backgroundColor: Color(0xFF4C4F5E),
                          onPressed: (){
                            setState(() {
                              weight--;
                            });
                          },
                          child: Icon(Icons.remove,
                            size: 40.0,
                            color: Colors.white,
                          ),

                        ),
                      ],
                    )
                  ],
                ),
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              )),
              Expanded(child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                    Text(age.toString(),
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Color(0xFF4C4F5E),
                          onPressed: (){
                            setState((){
                              age++;
                            });
                          },
                          elevation: 10.0,
                          child: Icon(Icons.add,
                            size: 40.0,
                            color: Colors.white,
                          ),

                        ),
                        SizedBox( width: 10,),
                        FloatingActionButton(
                          backgroundColor: Color(0xFF4C4F5E),
                          onPressed: (){
                            setState(() {
                              age--;
                            });
                          },
                          child: Icon(Icons.remove,
                            size: 40.0,
                            color: Colors.white,
                          ),

                        ),
                      ],
                    )
                  ],
                ),
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              ),
            ],
          ),
          ),
          GestureDetector(
            onTap: (){
              CalculatorEngine calc = CalculatorEngine(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                bmiResult: calc.calculateBMI(),
                resultText: calc.getResult(),
                interpretation: calc.getInterpretation(),
              )
              ),);
            },
            child: Container(

              child: Center(
                child: Text('CALCULATOR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 15.0),
              width: double.infinity,
              height: 75.0,

            ),
          ),
        ],
      ),
    );

  }
}
