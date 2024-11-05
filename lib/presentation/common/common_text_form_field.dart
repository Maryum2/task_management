import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager_app/presentation/extensions/presentation_extensions.dart';
import 'package:task_manager_app/presentation/resources/app_colors.dart';

class CommonTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final Function()? onSuffixIconPressed;
  final Color? fillColor;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final String? prefixText;
  final InputBorder? border;
  final bool isFloating;
  final TextStyle? style;
  final bool enabled;
  final int? maxLength;
  final TextStyle? prefixStyle;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final Function()? onTap;
  final bool? readOnly;
  final int maxLines;
  final List<TextInputFormatter>? formatters;
  const CommonTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.hintStyle,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixIconPressed,
    this.controller,
    this.labelStyle,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.fillColor,
    this.validator,
    this.onSaved,
    this.focusNode,
    this.contentPadding,
    this.prefixText,
    this.border,
    this.isFloating = true,
    this.style,
    this.enabled = true,
    this.prefixStyle,
    this.maxLength,
    this.floatingLabelBehavior,
    this.onTap,
    this.readOnly,
    this.maxLines = 1,
    this.formatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      maxLines: maxLines,
      readOnly: readOnly ?? false,
      onTap: onTap,
      enabled: enabled,
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
      maxLength: maxLength,
      onSaved: onSaved,
      focusNode: focusNode,
      style: context.textTheme.titleSmall?.copyWith(
        color: context.colors.text,
      ),
      inputFormatters: formatters,
      cursorHeight: 15.0.h,
      decoration: InputDecoration(
        counterText: '',
        prefixIconConstraints: BoxConstraints(
          minWidth: 24.0.w,
          minHeight: 24.0.h,
        ),
        floatingLabelBehavior: floatingLabelBehavior ??
            (isFloating
                ? FloatingLabelBehavior.always
                : FloatingLabelBehavior.auto),
        contentPadding:
            contentPadding ?? EdgeInsetsDirectional.only(bottom: 15.0.h),
        labelText: labelText ?? '',
        labelStyle: labelStyle ?? context.textTheme.titleSmall,
        hintText: hintText ?? '',
        prefixText: prefixText ?? '',
        hintStyle: hintStyle ?? context.textTheme.titleSmall,
        prefixStyle: prefixStyle ?? context.textTheme.titleSmall,
        errorStyle: context.textTheme.titleSmall?.copyWith(
          color: Colors.red,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        // fillColor: fillColor ?? context.colors.greyColor.withOpacity(0.5),
        disabledBorder: border ??
            OutlineInputBorder(
              borderSide:
                  BorderSide(color: context.colors.greyColor.withOpacity(0.4)),
              borderRadius: BorderRadius.circular(8.0),
            ),
        border: border ??
            OutlineInputBorder(
              borderSide:
                  BorderSide(color: context.colors.greyColor.withOpacity(0.4)),
              borderRadius: BorderRadius.circular(8.0),
            ),
        focusedBorder: border ??
            OutlineInputBorder(
              borderSide: BorderSide(color: context.colors.greyColor),
              borderRadius: BorderRadius.circular(8.0),
            ),
        enabledBorder: border ??
            OutlineInputBorder(
              borderSide: BorderSide(color: context.colors.greyColor),
              borderRadius: BorderRadius.circular(8.0),
            ),
        filled: true,
      ),
    );
  }
}
