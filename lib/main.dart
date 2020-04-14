import 'package:flutter/material.dart';

import 'StepperOne.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp()
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentStep= 0 ;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
       title: Text("stepper"),
      ),
      body:Container(
        child: Theme(
          data: ThemeData(canvasColor: Colors.lightBlue),
          child: Stepper(
            type: StepperType.horizontal,
            steps:_myStep(),
            currentStep: this._currentStep,
            onStepTapped: (step){
              setState(() {
                this._currentStep = step;
              });
            },
            onStepContinue: (){
              setState(() {
                if(this._currentStep<this._myStep().length-1){
                  this._currentStep=this._currentStep+1;
                }else{
                  //Logic to check if everything is completed or not
                }
              });
            },
          ),

        ),
      ),

    );
  }

  List<Step> _myStep(){
    List<Step> _steps = [
      Step(
        title: Text(""),
          content:Wrap(

        children: <Widget>[
          StepperOne()
        ],
      ),
        isActive: _currentStep>=0

      ),
      Step(
        title: Text(""),
        content:Wrap(

          children: <Widget>[
            StepperOne()
          ],
        ),
          isActive: _currentStep>=1,
      ),
      Step(
          title: Text(""), content: TextField(),
          isActive: _currentStep>=2
      ),
      Step(
          title: Text(""), content: TextField(),
          isActive: _currentStep>=3
      )


    ];
    return _steps;
  }
}
