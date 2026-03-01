import 'package:first_flutter_app/youtube_tasks/BMI_Basic_APP/BMI_app.dart';
import 'package:flutter/material.dart';

class BMIAPP extends StatelessWidget {
  const BMIAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the BMI ',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            Text(
              'App Home Screen',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bmi()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Click Here to main Screen',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
