import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'welcome_screen.dart';
import '../widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final blue = Color(0xFF1E88E5);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Sign Up", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              CustomTextField(label: "Username"),
              const SizedBox(height: 16),
              CustomTextField(label: "Email"),
              const SizedBox(height: 16),
              CustomTextField(label: "Password", obscureText: true),
              const SizedBox(height: 16),
              CustomTextField(label: "Confirm Password", obscureText: true),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const WelcomeScreen())),
                style: ElevatedButton.styleFrom(
                  backgroundColor: blue,
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text("Sign Up", style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen())),
                    child: Text("Login", style: TextStyle(color: blue, fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
