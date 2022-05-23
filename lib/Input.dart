import 'package:flutter/material.dart';

import 'constant.dart';

class Input extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final node;
  final validators;

  Input({
    required this.hint,
    this.controller,
    required this.textInputType,
    required this.node,
    required this.validators,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        keyboardType: textInputType,
        style: TextStyle(
          fontSize: 11,
          fontFamily: 'Roboto Regular',
        ),
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          // labelText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        //passing the reference of the validation mixin, not calling directly
        onSaved: (String? value) {},
        onEditingComplete: () => node.nextFocus(),
        validator: validators,
      ),
    );
  }
}
