import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/register/register_view_model.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  RegisterViewModel viewModel = RegisterViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
            ),
            Icon(
              Icons.stream,
              size: 45,
            ),
            SizedBox(
              height: 30,
            ),
            //Hello Again!
            Text(
              "Hello There!",
              style: GoogleFonts.bebasNeue(fontSize: 38),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Register below with your details!",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Username',
              ),
              controller: viewModel.userNameTextController,
            ),
            TextField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
                controller: viewModel.passwordTextController),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Confirm Password',
              ),
              controller: viewModel.confirmTextController,
            ),
            ElevatedButton(
              onPressed: () {
                viewModel.signUp(context);
              },
              child: Text("Sign Up"),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Do you already have an account?'))
          ],
        ),
      ),
    );
  }
}
