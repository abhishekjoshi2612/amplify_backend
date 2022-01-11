import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final Function(String) onSaved;
  final VoidCallback? onTap;
  final String formLabel;
  final Widget? suffixIcon;
  final bool enabled;
  final TextAlign? textAlign;
  final String? initialValue;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  const CustomTextFormField({
    Key? key,
    this.validator,
    required this.onSaved,
    required this.formLabel,
    this.controller,
    this.suffixIcon,
    this.initialValue,
    this.textAlign,
    this.prefix,
    this.enabled = true,
    this.keyboardType,
    this.onTap,
    this.onChanged,
    this.inputFormatters = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (e) {
        if (validator != null) {
          return validator!(e);
        }
        return _validator(e);
      },
      enabled: enabled,
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      onChanged: (e) {
        if (onChanged == null) {
          return;
        }
        onChanged!(e);
      },
      textAlign: textAlign ?? TextAlign.left,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      initialValue: initialValue,
      controller: controller,
      onSaved: (e) => onSaved(e!),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefix,
        hintText: "Enter your $formLabel",
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 117, 117, 117),
          fontWeight: FontWeight.bold,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
    );
  }

  String? _validator(String? e) {
    if (e == null || e.isEmpty) {
      return "Please enter $formLabel";
    }

    return null;
  }
}
