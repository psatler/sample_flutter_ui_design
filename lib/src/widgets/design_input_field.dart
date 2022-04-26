import 'package:flutter/material.dart';

import 'package:sample_flutter_design_ui/src/shared/app_colors.dart';

// https://stackoverflow.com/questions/59770757/not-possible-to-extend-textfield-in-flutter

class DesignInputField extends StatelessWidget {
  DesignInputField({
    Key? key,
    required this.textEditingController,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.isPassword = false,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final void Function()? trailingTapped;
  final bool isPassword;

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: placeholder,
        prefixIcon: leading,
        suffixIcon: trailing == null
            ? null
            : GestureDetector(
                onTap: trailingTapped,
                child: trailing,
              ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        filled: true,
        fillColor: kcVeryLightGreyColor,
        border: circularBorder.copyWith(
          borderSide: const BorderSide(color: kcLightGreyColor),
        ),
        errorBorder: circularBorder.copyWith(
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedBorder: circularBorder.copyWith(
          borderSide: const BorderSide(color: kcPrimaryColor),
        ),
        enabledBorder: circularBorder.copyWith(
          borderSide: const BorderSide(color: kcLightGreyColor),
        ),
      ),
    );
  }
}
