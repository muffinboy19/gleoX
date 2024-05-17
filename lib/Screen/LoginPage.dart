import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add your login logic here
                // Assuming login is successful, navigate to home screen
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/forgot-password');
              },
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Add your Google login logic here
                  },
                  icon: const Icon(Icons.g_translate), // Use Flutter's built-in Google icon
                ),
                IconButton(
                  onPressed: () {
                    // Add your Facebook login logic here
                  },
                  icon: const Icon(Icons.facebook), // Use Flutter's built-in Facebook icon
                ),
                IconButton(
                  onPressed: () {
                    // Add your Apple login logic here
                  },
                  icon: const Icon(Icons.apple), // Use Flutter's built-in Apple icon
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
