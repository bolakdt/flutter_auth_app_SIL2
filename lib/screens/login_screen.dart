import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import 'signup_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final blue = Color(0xFF1E88E5);
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Login", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                CustomTextField(label: "Email", controller: emailController),
                const SizedBox(height: 16),
                CustomTextField(label: "Password", obscureText: true, controller: passwordController),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    final username = emailController.text.split('@')[0];
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HomeScreen(username: username),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blue,
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text("Login", style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUpScreen())),
                      child: Text("Sign Up", style: TextStyle(color: blue, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                const Spacer(),
                //Image.asset("assets/images/welcome_image.png", height: 150),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
