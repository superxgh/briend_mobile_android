import 'package:flutter/material.dart';

class UJGTextFieldS1 extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String placeholder;
  final Color color;
  final double fontSize;
  final bool password;
  final String? Function(String?)? validator;
  final int? minLines;
  final int? maxLines;

  UJGTextFieldS1(
      {required this.controller,
      this.keyboardType = TextInputType.text,
      this.labelText = '',
      this.placeholder = '',
      this.color = Colors.white,
      this.fontSize = 22.0,
      this.password = false,
      this.validator,
      this.minLines,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return this.key == TextInputType.multiline
        ? TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: this.color,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: this.color,
                ),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: this.labelText,
              labelStyle: TextStyle(
                fontSize: fontSize - 2,
                color: color,
                height: 0.2,
                fontWeight: FontWeight.normal,
              ),
              hintText: this.placeholder,
              hintStyle: TextStyle(
                fontSize: fontSize,
                color: color,
                fontWeight: FontWeight.normal,
              ),
              filled: true,
              isDense: true,
            ),
            controller: this.controller,
            style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontWeight: FontWeight.normal,
            ),
            keyboardType: this.keyboardType,
            obscureText: this.password,
            autocorrect: false,
            validator: this.validator,
            minLines: this.minLines,
            maxLines: this.maxLines,
          )
        : TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: this.color,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: this.color,
                ),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: this.labelText,
              labelStyle: TextStyle(
                fontSize: fontSize - 2,
                color: color,
                height: 0.2,
                fontWeight: FontWeight.normal,
              ),
              hintText: this.placeholder,
              hintStyle: TextStyle(
                fontSize: fontSize,
                color: color,
                fontWeight: FontWeight.normal,
              ),
              filled: true,
              isDense: true,
            ),
            controller: this.controller,
            style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontWeight: FontWeight.normal,
            ),
            keyboardType: this.keyboardType,
            obscureText: this.password,
            autocorrect: false,
            validator: this.validator,
          );
  }
}
