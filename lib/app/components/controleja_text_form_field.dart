import 'package:flutter/material.dart';

class ControleJaTextFormField extends TextFormField {
  ControleJaTextFormField({
    ValueChanged<String> onChanged,
    FormFieldValidator<String> validator,
    @required String label,
    bool obscureText,
    double borderRadius,
    double fontSize,
    EdgeInsets padding,
    TextEditingController controller,
    IconData icon,
  }) : super(
          controller: controller,
          onChanged: onChanged,
          validator: validator,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            prefixIcon: icon != null ? Icon(icon) : null,
            contentPadding: padding ?? EdgeInsets.only(left: 30, top: 20, bottom: 20),
            labelText: label,
            labelStyle: TextStyle(
              fontSize: fontSize ?? 20,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 30),
            ),
          ),
        );
}
