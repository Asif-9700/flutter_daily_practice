import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  var wtController = TextEditingController();
  var htController = TextEditingController();
  var inController = TextEditingController();
  var result = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI APP')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BMI APP',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: TextField(
                controller: wtController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Enter Your Weight (in Kgs)'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  prefixIcon: Icon(Icons.line_weight),
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: htController,
                decoration: InputDecoration(
                  label: Text('Enter Your Height (in ft)'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  prefixIcon: Icon(Icons.height),
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: inController,
                decoration: InputDecoration(
                  label: Text('Enter Your Height in (Incs)'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  prefixIcon: Icon(Icons.height),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    var wt = wtController.text.toString();
                    var ft = htController.text.toString();
                    var Inch = inController.text.toString();

                    if (wt != "" && ft != "" && Inch != "") {
                      //bmi calculate
                      var iWt = int.parse(wt);
                      var iFt = int.parse(ft);
                      var iInch = int.parse(Inch);

                      var tInch = (iFt * 12) + iInch;
                      var tCm = tInch * 2.54;
                      var tM = tCm / 100;

                      var bmi = iWt / (tM * tM);
                      setState(() {
                        result = 'Your BMI is : $bmi';
                      });
                    } else {
                      setState(() {
                        result = "Please fill all the required blanks!!";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: Text(
                    'Calculate',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
