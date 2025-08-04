import 'package:flutter/material.dart';

class MainDesign extends StatefulWidget {
  const MainDesign({super.key});

  @override
  State<MainDesign> createState() => _MainDesignState();
}

class _MainDesignState extends State<MainDesign> {
  Color getcolor() {
    if (status == 'Underweight') {
      return const Color.fromARGB(255, 234, 255, 0);
    } else if (status == 'Normal') {
      return Colors.green;
    } else if (status == 'Overweight') {
      return const Color.fromARGB(255, 243, 126, 17);
    } else if (status == 'Obese') {
      return const Color.fromARGB(255, 219, 24, 24);
    } else {
      return Colors.black;
    }
  }

  double bmi = 0;
  double height = 0;
  double weight = 0;
  String status = 'Status';
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white38),
        ),
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BMI Calculator",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 20),
            Text("Enter Height", style: TextStyle(fontSize: 20)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Enter your height in m",
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Enter Weight", style: TextStyle(fontSize: 20)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Enter your Weight in kg",
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  height = double.tryParse(heightController.text.trim()) ?? 0;
                  weight = double.tryParse(weightController.text.trim()) ?? 0;
                  bmi = weight / (height * height);
                  if (bmi < 18.5) {
                    status = 'Underweight';
                  } else if (bmi >= 18.5 && bmi < 25) {
                    status = 'Normal';
                  } else if (bmi >= 25 && bmi < 30) {
                    status = 'Overweight';
                  } else if (bmi >= 30 && bmi < 35) {
                    status = 'Obese';
                  }
                });
              },
              child: Text('calculate', style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 40),
            Text(
              'BMI IS: ${bmi.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Status: ', style: TextStyle(fontSize: 20)),
                Text(
                  ' $status',
                  style: TextStyle(fontSize: 20, color: getcolor()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
