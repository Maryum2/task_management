import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/domain/use_cases/auth/auth_preferences/get_user_access_token_use_case.dart';
import 'package:task_manager_app/domain/use_cases/auth/auth_preferences/get_user_from_storage_use_case.dart';
import 'package:task_manager_app/domain/use_cases/auth/auth_preferences/get_user_login_status_use_case.dart';
import 'package:task_manager_app/domain/use_cases/auth/auth_preferences/save_user_access_token_to_storage_use_case.dart';
import 'package:task_manager_app/domain/use_cases/auth/auth_preferences/save_user_to_storage_use_case.dart';
import 'package:task_manager_app/domain/use_cases/auth/user_login_use_case.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_change_notifier.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_cubit.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_state.dart';
import 'package:task_manager_app/presentation/features/auth/widgets/login_body.dart';

// Create mock classes for your dependencies
class MockAuthChangeNotifier extends Mock implements AuthChangeNotifier {}

class MockUserLoginUseCase extends Mock implements UserLoginUseCase {}

class MockSaveUserToStorageUseCase extends Mock
    implements SaveUserToStorageUseCase {}

class MockSaveUserAccessTokenToStorageUseCase extends Mock
    implements SaveUserAccessTokenToStorageUseCase {}

class MockGetUserLoginStatusUseCase extends Mock
    implements GetUserLoginStatusUseCase {}

class MockGetUserFromStorageUseCase extends Mock
    implements GetUserFromStorageUseCase {}

class MockGetUserAccessTokenUseCase extends Mock
    implements GetUserAccessTokenUseCase {}

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  group('LoginBody', () {
    late AuthCubit authCubit;

    setUp(() {
     
      final authState = const AuthState();
      final authChangeNotifier = MockAuthChangeNotifier();
      final userLoginUseCase = MockUserLoginUseCase();
      final saveUserToStorageUseCase = MockSaveUserToStorageUseCase();
      final saveAccessTokenUseCase = MockSaveUserAccessTokenToStorageUseCase();
      final getUserLoginStatusUseCase = MockGetUserLoginStatusUseCase();
      final getUserFromStorageUseCase = MockGetUserFromStorageUseCase();
      final getUserAccessTokenUseCase = MockGetUserAccessTokenUseCase();

      authCubit = AuthCubit(
        authState,
        authChangeNotifier,
        userLoginUseCase,
        saveUserToStorageUseCase,
        saveAccessTokenUseCase,
        getUserLoginStatusUseCase,
        getUserFromStorageUseCase,
        getUserAccessTokenUseCase,
      );
    });

    Widget createWidgetUnderTest() {
      return ScreenUtilInit(
    designSize: const Size(375, 812), // Replace with your design size
    minTextAdapt: true,
    splitScreenMode: false,
    builder: (context, child) {
      return MaterialApp(
        home: BlocProvider<AuthCubit>.value(
          value: authCubit,
          child: const Scaffold(
            body: LoginBody(),
          ),
        ),
      );
    },
  );
    }

    testWidgets('username field validation passes with valid input',
        (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Find the username field
      final usernameField = find.byType(TextFormField).first;
      await tester.enterText(usernameField, '1234567890'); // Valid input
      expect(
          find.text(''), findsNothing); // No error message should be displayed
    });

    testWidgets('username field validation fails with invalid input',
        (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Find the username field
      final usernameField = find.byType(TextFormField).first;
      await tester.enterText(usernameField, ''); // Invalid input
      await tester.testTextInput
          .receiveAction(TextInputAction.done); // Simulate done action
      await tester.pump(); // Rebuild the widget

      // Check for the error message
      expect(find.text('Username must be 10 characters long.'),
          findsOneWidget); // Replace with your actual error message
    });

    testWidgets('password field validation passes with valid input',
        (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Find the password field
      final passwordField =
          find.byType(TextFormField).at(1); // The second TextFormField
      await tester.enterText(passwordField, '1234567890'); // Valid input
      expect(
          find.text(''), findsNothing); // No error message should be displayed
    });

    testWidgets('password field validation fails with invalid input',
        (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Find the password field
      final passwordField =
          find.byType(TextFormField).at(1); // The second TextFormField
      await tester.enterText(passwordField, ''); // Invalid input
      await tester.testTextInput
          .receiveAction(TextInputAction.done); // Simulate done action
      await tester.pump(); // Rebuild the widget

      // Check for the error message
      expect(find.text('Password must be 10 characters long.'),
          findsOneWidget); // Replace with your actual error message
    });
  });
}
