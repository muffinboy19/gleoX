import 'package:flutter/material.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter OTP',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OTPDigitField(),
                OTPDigitField(),
                OTPDigitField(),
                OTPDigitField(),
                OTPDigitField(),
                OTPDigitField(),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add verification logic here
              },
              child: Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}

class OTPDigitField extends StatelessWidget {
  const OTPDigitField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: const TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counter: Offstage(),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
