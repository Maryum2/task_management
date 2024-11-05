import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager_app/presentation/resources/app_colors.dart';

class AppButtonOutlinedPrimary extends StatelessWidget {
  final bool loading;
  final bool enabled;
  final Widget child;
  final Widget? icon;
  final void Function(BuildContext)? onTap;
  final Widget? leading;

  const AppButtonOutlinedPrimary({
    super.key,
    this.loading = false,
    this.enabled = true,
    required this.child,
    this.leading,
    this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: enabled
          ? () {
              onTap?.call(context);
            }
          : null,
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all<TextStyle>(
          TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.82,
          ),
        ),
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) {
            var backgroundColor = Colors.transparent;
            if (states.contains(WidgetState.pressed)) {
              backgroundColor = context.colors.transparentColor;
            }
            return enabled ? backgroundColor : context.colors.background;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
            var backgroundColor = context.colors.primary;
            if (states.contains(WidgetState.pressed)) {
              backgroundColor = context.colors.transparentColor;
            }
            return enabled ? backgroundColor : context.colors.transparentColor;
          },
        ),
        maximumSize: WidgetStateProperty.all<Size>(
          const Size(double.maxFinite, 50),
        ),
        minimumSize: WidgetStateProperty.all<Size>(
          const Size(double.maxFinite, 50),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (states) {
            var backgroundColor = context.colors.primary;
            if (states.contains(WidgetState.pressed)) {
              backgroundColor = context.colors.secondary;
            }

            return BorderSide(
              color:
                  enabled ? backgroundColor : context.colors.transparentColor,
              width: 1.82,
              strokeAlign: BorderSide.strokeAlignInside,
            );
          },
        ),
      ),
      child: loading
          ? Center(
              child: CircularProgressIndicator(
                color: context.colors.white,
              ),
            )
          : icon == null
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (leading != null) leading!,
                    if (leading != null)
                      const SizedBox(
                        width: 8,
                      ),
                    child,
                  ],
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    icon!,
                    const SizedBox(
                      width: 10,
                    ),
                    child,
                  ],
                ),
    );
  }
}
