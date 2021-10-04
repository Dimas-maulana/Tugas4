import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
 final String? value;
 final String label;

  const TextForm({Key? key, this.value,  required this.label}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 2,
      initialValue: value,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}