import 'package:flutter/material.dart';
import "./lib/widgets/custom_textfield.dart";
import "./lib/widgets/custom_button.dart";
import './lib/widgets/custom_button.dart';
import './lib/screens/login_screen.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void register() {
    // Handle registration logic here
    print("Registering: ${nameController.text}, ${emailController.text}, ${passwordController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Register",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              CustomTextField(label: "Name", controller: nameController),
              CustomTextField(label: "Email", controller: emailController),
              CustomTextField(label: "Password", controller: passwordController, isPassword: true),
              const SizedBox(height: 20),
              CustomButton(text: "Register", onPressed: register),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
                child: const Text("Already have an account? Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
