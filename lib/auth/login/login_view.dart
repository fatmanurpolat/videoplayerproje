import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login/login_view_model.dart';
import 'package:flutter_application_1/auth/register/register_view.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.checkCurrentUser(context);
    }); // viewModel.loc
  }

  LoginViewModel viewModel = LoginViewModel(); //nesne oluşturduk
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.stream,
                  size: 45,
                ),
                SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Hello Again!",
                  style: GoogleFonts.bebasNeue(fontSize: 38),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome back, you 've been missed!",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: viewModel.userNameTextController,
                  decoration: InputDecoration(label: Text("username")),
                ),
                TextField(
                  controller: viewModel.passwordTextController,
                  decoration: InputDecoration(label: Text("password")),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewModel.login(context);
                  },
                  child: Text('giriş'),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterView()));
                    },
                    child: Text("Don't have an account?"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
