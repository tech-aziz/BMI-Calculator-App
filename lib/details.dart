import 'package:flutter/material.dart';
class Details extends StatelessWidget {
  //const Details({Key? key,}) : super(key: key);
  bool isMale = true;
  var bmi;
  Details({this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff03061B),
        elevation: 0,
        centerTitle: true,
        title: Text('BMI Calculator',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700,color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              child: Container(
                height: 200,
                width: double.infinity,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("You are :${isMale == true?" Male": "Female"}\n""Your BMI is : ${bmi.toStringAsFixed(0)}",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,color: Colors.white,fontStyle: FontStyle.italic)),
                      SizedBox(height: 8,),
                      Text(bmi >= 25 ?"You are OverWeight\nTry to exercise more.\n" : bmi > 18 ?"You are Normal\nGood job!" : "You are UnderWeight\nYou can eat a bitmore.",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),
                      )],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
