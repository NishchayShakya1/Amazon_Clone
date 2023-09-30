import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  int? maxLines = 1;
  CustomTextField(
      {super.key,
      required this.controller,
      required this.hintext,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextFormField(
        maxLines: maxLines,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintext,
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
        ),
        validator: (val) {
          if (val == null || val.isEmpty) {
            return 'Enter your $hintext';
          }
          return null;
        },
      ),
    );
  }
}
