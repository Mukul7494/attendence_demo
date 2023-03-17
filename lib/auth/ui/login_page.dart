import 'package:attendence_system/auth/firebase/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widget/password_field.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  //this key is used to validate the form
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

// this bool is used to show the confirm password text in case of signup
  bool signInOrNot = false;

  //it is local service to use the firebase auth services in auth firebase folder
  final FirebaseAuthServices _auth = FirebaseAuthServices();
  bool isObscure = true;

  //this is used to dispose the controllers when this page is destroyed to avoid memory leaks
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body: Column(
          //to make everything in the center
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          hintText: "Enter your Email",
                          prefixIcon: Icon(Icons.email)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your email";
                        }
                        if (value.contains("@") == false) {
                          return "Please enter a valid email";
                        }
                        return null;
                      },
                    ),

                    PassField(
                        isObscure: isObscure, passController: passController),

                    signInOrNot
                        ? PassField(
                            isObscure: isObscure,
                            passController: confirmPassController)
                        : Container(),

                    const SizedBox(height: 10),
                    //container is used to give margin to the button
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //singINOrNot is used here to change the methods to sign in and sing up

                      signInOrNot
                          ?
                          //if signUpOrNot true then it will use sinup method

                          _auth.signUpWithEmail(
                              email: emailController.text,
                              password: passController.text)
                          : _auth.signInWithEmailAndPass(
                              email: emailController.text,
                              password: passController.text);
                    }
                  },
                  child: const Text("Login")),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text.rich(
                    TextSpan(
                      text: signInOrNot
                          ? "Already have an account"
                          : "Don't have an account? ",
                    ),
                    textAlign: TextAlign.right,
                  ),
                  TextButton(
                      onPressed: () => setState(() {
                            signInOrNot = !signInOrNot;
                          }),
                      child: signInOrNot
                          ? const Text("SignIn")
                          : const Text("Create Account"))
                ],
              ),
            )
          ],
        ));
  }
}
