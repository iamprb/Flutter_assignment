import 'package:flutter/material.dart';

class StepperOne extends StatefulWidget {
  StepperOne({Key key}) : super(key: key);

  @override
    _StepOneViewState createState() => _StepOneViewState();

}


class _StepOneViewState extends State<StepperOne>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 35, 0),
              child:RichText(
                text: TextSpan(
                  text: 'Welcome to '
                      'GIN ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,

                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Finans',
                      style: TextStyle(
                          color: Colors.blue,
                          decorationColor: Colors.blue,
                          decorationStyle: TextDecorationStyle.wavy,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                    ),
                  ],
                ),
              )
    ),
          Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 25, 30),
        child:Text(
          'Welcome to The Bank of The Future. Manage and track your accounts on the go',
          style: TextStyle(fontWeight:FontWeight.bold),
        ) ,
          ),
          new TextFormField(
            decoration: new InputDecoration(
              labelText: "Enter Email",
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
                borderSide: new BorderSide(
                ),
              ),
              //fillColor: Colors.green
            ),
            validator: (val) {
              if(val.length==0) {
                return "Email cannot be empty";
              }else{
                return null;
              }
            },
            keyboardType: TextInputType.emailAddress,
            style: new TextStyle(
              fontFamily: "Poppins",
            ),
          ),

        ],
      ),
    );
  }
}

