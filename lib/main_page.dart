import 'package:flutter/material.dart';

class main_page extends StatefulWidget {
  @override
  main_pageState createState() => main_pageState();
}

class  main_pageState extends State<main_page> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double bmiResult = 0.0;

  void calculateBMI() {
    double weight = double.tryParse(weightController.text) ?? 0.0;
    double height = double.tryParse(heightController.text) ?? 0.0;

    if (weight > 0 && height > 0) {
      double bmi = weight / ((height / 100) * (height / 100));
      setState(() {
        bmiResult = bmi;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Poids (kg)',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Taille (cm)',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  calculateBMI();
                },
                child: Text('Calculer BMI'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Résultat BMI: ${bmiResult.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


