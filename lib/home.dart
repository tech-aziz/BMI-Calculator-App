import 'package:bmi_calculator_app/calculation.dart';
import 'package:bmi_calculator_app/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isMale = true;
  int weight = 60;
  int age = 20;
  double height = 90;
  var bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03061B),
      appBar: AppBar(
        backgroundColor: Color(0xff03061B),
        elevation: 0,
        centerTitle: true,
        title: Text('BMI Calculator',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700,color: Colors.white),),
      ),

      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      height: double.infinity,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                        color: isMale == true? Colors.green[900] : Color(0xff171830),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male,size: 70, color: Colors.white,),
                          Text('MALE',style: TextStyle(color: Colors.white30,fontSize: 25,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                        color: isMale == false? Colors.green[900] : Color(0xff171830),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female,size: 70, color: Colors.white,),
                          Text('FEMALE',style: TextStyle(color: Colors.white30,fontSize: 25,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.all(15.0),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff171830),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height',style: TextStyle(color: Colors.white30,fontSize: 25,fontWeight: FontWeight.w600),),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${height.toStringAsFixed(0)}',style: TextStyle(color: Colors.white70,fontSize: 35,fontWeight: FontWeight.w700),),
                      Text('CM',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w700),),
                    ],
                  ),
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15.0,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 30.0
                          ),
                          thumbColor: Colors.white,
                          overlayColor: Colors.green,
                          activeTrackColor: Colors.green,
                          inactiveTrackColor: Colors.white
                      ),
                      child: Slider(
                          min: 50,
                          max: 220,
                          value: height, onChanged: (value){
                        setState(() {
                          height = value;
                        });
                      }))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    height: double.infinity,
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff171830),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Weight',style: TextStyle(color: Colors.white30,fontSize: 25,fontWeight: FontWeight.w600),),
                        Text('$weight',style: TextStyle(color: Colors.white70,fontSize: 35,fontWeight: FontWeight.w700),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(onPressed: (){
                              if(weight > 0){
                                setState(() {
                                  weight --;
                                });
                              }
                            },
                                child: Icon(Icons.remove,color: Colors.white),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.green[900],
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(14),
                            ),),
                            OutlinedButton(onPressed: (){
                             setState(() {
                               weight ++;
                             });
                            },
                              child: Icon(Icons.add,color: Colors.white),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.green[900] ,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(14),
                              ),),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    height: double.infinity,
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff171830),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Age',style: TextStyle(color: Colors.white30,fontSize: 25,fontWeight: FontWeight.w600),),
                        Text('$age',style: TextStyle(color: Colors.white70,fontSize: 35,fontWeight: FontWeight.w700),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(onPressed: (){
                              if(age > 0){
                                setState(() {
                                  age --;
                                });
                              }
                            },
                              child: Icon(Icons.remove,color: Colors.white),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.green[900],
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(14),
                              ),),
                            OutlinedButton(onPressed: (){
                              setState(() {
                                age ++;
                              });
                            },
                              child: Icon(Icons.add,color: Colors.white),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.green[900] ,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(14),
                              ),),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: InkWell(
                onTap: (){
                  final cal = Calculation(age: age, height: height, weight: weight);
                  bmi = cal.getResult();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Details(bmi: bmi,)));

                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  color: Color(0xffEC0D54),
                  child: Text('CALCULATE',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700,color: Colors.white)),
                ),
              )
          ),
        ],
      )
    );
  }

}

