import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_manager_app/presentation/resources/app_colors.dart';

extension SnackbarExtension on BuildContext {
  void showSuccessToast(String message) async {
    await Fluttertoast.cancel();
    await Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: colors.secondary,
      textColor: colors.white,
      fontSize: 14.0.sp,
    );
  }

  void showErrorToast(String message) async {
    await Fluttertoast.cancel();
    await Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: colors.primary,
      textColor: colors.white,
      fontSize: 14.0.sp,
    );
  }

  /// Accesses the view insets & padding of the [MediaQuery] of this [BuildContext].
  ///
  /// Use it in combination with [Scaffold.resizeToAvoidBottomInset] set to `false`
  /// to make sure the keyboard is displayed over the UI to keep the iOSish blur behind it.
  ///
  /// For a detailed explanation with a video example,
  /// read the `ScrollingKeyboardAndViewInsets.md` playbook.
  EdgeInsetsGeometry scrollableViewInsetsPadding({
    double andAll = .0,
    double andHorizontal = .0,
    double andVertical = .0,
    double andStart = .0,
    double andTop = .0,
    double andEnd = .0,
    double andBottom = .0,
  }) {
    final insets = MediaQuery.viewInsetsOf(this).bottom;
    final padding = MediaQuery.paddingOf(this).bottom;

    final start = andAll + andHorizontal + andStart;
    final top = andAll + andVertical + andTop;
    final end = andAll + andHorizontal + andEnd;
    final bottom = andAll + andVertical + andBottom + insets + padding;

    return EdgeInsetsDirectional.fromSTEB(start, top, end, bottom);
  }

  Future<bool?> showCustomDialog({
    required Widget content,
    bool barrierDismissible = false,
    Color? barrierColor,
    bool isDismissible = true,
    Color? backgroundColor,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return showDialog<bool>(
      context: this,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor ?? colors.black.withOpacity(0.7),
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: colors.background,
          child: content,
        );
      },
    );
  }

  Future<bool?> showTaskLoadingDialog({
    bool barrierDismissible = false,
    Color? barrierColor,
    bool isDismissible = false,
    Color? backgroundColor,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return showDialog<bool>(
      context: this,
      useRootNavigator: false,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor ?? Colors.black54,
      builder: (BuildContext context) {
        return Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: colors.white,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              height: 70,
              width: 70,
              child: CircularProgressIndicator(
                color: context.colors.secondary,
              ),
            ),
            SizedBox(
              height: 70.h,
              child: const Icon(Icons.task_rounded),
            ),
          ],
        );
      },
    );
  }

  TextTheme get textTheme => Theme.of(this).textTheme;
  Brightness get brightness => Theme.of(this).brightness;
  InputDecorationTheme get inputDecorationTheme =>
      Theme.of(this).inputDecorationTheme;

  EdgeInsets get padding => MediaQuery.paddingOf(this);
  double get keyboardHeight => MediaQuery.of(this).viewInsets.bottom;
}
