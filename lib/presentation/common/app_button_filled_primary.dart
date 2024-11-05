import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task_manager_app/presentation/extensions/presentation_extensions.dart';
import 'package:task_manager_app/presentation/resources/app_colors.dart';


class AppButtonFilledPrimary extends StatelessWidget {
  const AppButtonFilledPrimary({
    super.key,
    this.loading = false,
    this.enabled = true,
    required this.child,
    this.onTap,
    this.icon,
    this.showProgress = false,
    this.progress = 0.0,
    this.height = 50,
    this.width = double.infinity,
    this.textStyle,
    this.padding,
    this.borderRadius = 10.0,
    this.backgroundColor,
    this.foregroundColor,
    this.progressColor,
    this.isPayment = false,
  });

  final bool loading;
  final bool enabled;
  final Widget child;
  final Widget? icon;
  final Function(BuildContext)? onTap;
  final bool showProgress;
  final double progress;
  final double height;
  final double width;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? progressColor;
  final bool isPayment;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: enabled
            ? () {
                onTap?.call(context);
              }
            : null,
        style: ButtonStyle(
          textStyle: WidgetStateProperty.all<TextStyle>(
            textStyle ??
                context.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) {
              var color = backgroundColor ?? context.colors.secondary;
              if (states.contains(WidgetState.pressed)) {
                color = backgroundColor ?? context.colors.secondary;
              }
              return enabled ? color : context.colors.transparentColor;
            },
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
            (states) {
              var color = foregroundColor ?? context.colors.white;
              if (states.contains(WidgetState.pressed)) {
                color = context.colors.primary.withOpacity(0.5);
              }
              return enabled ? color : context.colors.white;
            },
          ),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            padding ?? const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: isPayment
                  ? BorderRadius.only(
                      topLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,
                    )
                  : BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        child: loading
            ? showProgress && progress > 0.0 && progress < 1.0
                ? CircularPercentIndicator(
                    radius: 10.0,
                    lineWidth: 4.0,
                    animation: true,
                    animateFromLastPercent: true,
                    percent: progress,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: context.colors.white.withOpacity(0.3),
                    progressColor: progressColor ?? context.colors.white,
                  )
                : const SizedBox.shrink()
            : child,
      ),
    );
  }
}
