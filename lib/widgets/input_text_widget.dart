import 'package:flutter/material.dart';

import '../config/constants/app_colors.dart';

class Input extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscure;
  final IconData? suffix;
  final String? helper;
  final TextEditingController? controller;

  const Input({
    super.key,
    required this.label,
    required this.hint,
    this.obscure = false,
    this.suffix,
    this.helper,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppColors.greyColor,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: obscure,
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: AppColors.greyColor,
              fontWeight: FontWeight.bold
            ),
            hintText: hint,
            suffixIcon: suffix != null
                ? Icon(suffix, color: AppColors.outline)
                : null,
            filled: true,
            fillColor: AppColors.surface,
            contentPadding: const EdgeInsets.all(16),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Color(0xFFE5E7EB), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: AppColors.onSurface,
                width: 2,
              ),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          ),
        ),
        if (helper != null)
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              helper!,
              style: const TextStyle(fontSize: 11, color: AppColors.outline),
            ),
          ),
      ],
    );
  }
}