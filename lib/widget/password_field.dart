import 'package:flutter/material.dart';

class PassField extends StatefulWidget {
  PassField({super.key, required this.isObscure, required this.passController});
  final TextEditingController passController;
  bool isObscure = false;

  @override
  State<PassField> createState() => _PassFieldState();
}

class _PassFieldState extends State<PassField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: widget.passController,
        obscureText: widget.isObscure,
        validator: (value) {
          if (value!.isEmpty) {
            return "Please enter your Password";
          }
          if (value.length < 8) {
            return "Minimum length of password is 8";
          }
          return null;
        },
        decoration: InputDecoration(
            suffix: IconButton(
                onPressed: () => setState(() {
                      widget.isObscure = !widget.isObscure;
                    }),
                icon: widget.isObscure
                    ? const Icon(Icons.remove_red_eye_outlined)
                    : const Icon(Icons.remove_red_eye)),
            hintText: "Enter your Password",
            prefixIcon: const Icon(Icons.password)),
      ),
    );
  }
}
