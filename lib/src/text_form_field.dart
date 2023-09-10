import 'package:flutter/material.dart';
import 'package:samuelswidgets/utils/general_utils.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? labelText;
  bool? obsureText = false;
  int? minLength = 7;
  final Widget? prefix;
  final FocusNode? focusNode;
  bool? addButtomSpace = true;
  bool? autoFocus = false;
  final TextInputType? keyboardType;
  final String? textHint;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;
  String? Function(String?)? validator;
  InputTextField(this.controller,
      {Key? key,
      required this.label,
      this.labelText,
      this.obsureText,
      this.minLength,
      this.keyboardType,
      this.textHint,
      this.autoFocus,
      this.focusNode,
      this.prefix,
      this.addButtomSpace,
      this.textInputAction,
      this.textCapitalization,
      this.validator})
      : super(key: key) {
    validator = validator ??
        ((value) {
          value = "$value".replaceAll(replaceWhiteSpacePattern, ' ').trim();
          return value.length > (minLength ?? 7) ? null : "Too Short";
        });
    addButtomSpace = addButtomSpace ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          textCapitalization: textCapitalization ?? TextCapitalization.words,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textInputAction: textInputAction ?? TextInputAction.next,
          validator: validator,
          focusNode: FocusNode(),
          autofocus: autoFocus ?? false,
          obscureText: obsureText ?? false,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            labelText: labelText,
            hintText: textHint,
            prefix: prefix,
            border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.grey.shade400)),
          ),
        ),
        if (addButtomSpace != false)
          const SizedBox(
            height: 15,
          )
      ],
    );
  }
}
