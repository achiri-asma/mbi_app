import 'package:flutter/material.dart';
import 'main_second.dart';
class splash_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Calorie Calculator',
                  style: TextStyle(fontSize: 30.0),
                ),
                Image.network("https://img.freepik.com/free-vector/body-mass-index-weight-control-with-bmi-healthy-unhealthy-lifestyle-flat-vector-illustration-fitness-indicator-before-after-diet-overall-health-body-fat-scale-concept_88138-795.jpg?w=1060&t=st=1708809967~exp=1708810567~hmac=a263503420e11e8d33a8a69cfc00f489ed6201bae9357c27251101426d910db3"),
                SizedBox(height: 16.0),  // Add some space between the text and the button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>main_second()));
                  },
                  child: Text('Calculate calories',style: TextStyle(color: Colors.black,fontSize:18.0),),
                  style: ButtonStyle(

                    backgroundColor:MaterialStateProperty.all<Color>(
                      Colors.greenAccent, // Set your desired background color here
                    ),
                ),
                ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
