import 'dart:io';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/data/errors/api_error.dart';

part 'response_error.freezed.dart';

/// A representation of all possible errors while connecting with the
/// backend.
///
/// We return those errors to get localized messages to display to the user.
@freezed
class ResponseError<T> with _$ResponseError<T> implements Exception {
  const ResponseError._();

  const factory ResponseError.noInternetConnection() = _NoInternetConnection;
  const factory ResponseError.sendTimeout() = _SendTimeout;
  const factory ResponseError.connectTimeout() = _ConnectTimeout;
  const factory ResponseError.receiveTimeout() = _ReceiveTimeout;
  const factory ResponseError.badRequest(String? errorMessage) = _BadRequest;
  const factory ResponseError.notFound() = _NotFound;
  const factory ResponseError.noContent() = _NoContent;
  const factory ResponseError.tooManyRequests() = _TooManyRequests;
  const factory ResponseError.unprocessableEntity() = _UnprocessableEntity;
  const factory ResponseError.internalServerError() = _InternalServerError;
  const factory ResponseError.unexpectedError() = _UnexpectedError;
  const factory ResponseError.requestCancelled() = _RequestCancelled;
  const factory ResponseError.badCertificate() = _BedCertificate;
  const factory ResponseError.connectionError() = _ConnectionError;
  const factory ResponseError.conflict() = _Conflict;
  const factory ResponseError.unauthorized() = _Unauthorized;
  const factory ResponseError.invalidPassword() = _InvalidPasswordError;
  const factory ResponseError.invalidEmail() = _InvalidEmailError;
  const factory ResponseError.invalidQueryParameters() =
      _InvalidQueryParametersError;
  const factory ResponseError.graphlQLReadContextError() =
      _GraphlQLReadContextError;
  const factory ResponseError.graphlQLWriteContextError() =
      _GraphlQLWriteContextError;
  const factory ResponseError.invalidLoginCredentials() =
      _InvalidLoginCredentials;
  const factory ResponseError.invalidSearhTerm() = _InvalidSearchTermError;
  const factory ResponseError.withMessage(String message) = _WithMessageError;

  // Face Id Authentication Response
  const factory ResponseError.passcodeNotConfiguredError() =
      _PasscodeNotConfiguredError;
  const factory ResponseError.biometricNotEntrolledError() =
      _BiometricNotEntrolledError;
  const factory ResponseError.biometricNotSupportedError() =
      _BiometricNotSupportedError;
  const factory ResponseError.temporarilyLockedOutError() =
      _TemporarilyLockedOutError;
  const factory ResponseError.temporarilyLockedOutRetryError() =
      _TemporarilyLockedOutRetryError;
  const factory ResponseError.errorDuringAuthentication() =
      _ErrorDuringAuthentication;

  // Launching Map Response Error
  const factory ResponseError.errorLaunchingMap() = _ErrorLaunchingMap;

  // Launching Messaging App Response Error
  const factory ResponseError.errorLaunchingMessagingApp() =
      _ErrorLaunchingMessagingApp;

  // Launching Phone App Response Error
  const factory ResponseError.errorLaunchingPhoneApp() =
      _ErrorLaunchingPhoneApp;

  // Launching WhatsApp Response Error
  const factory ResponseError.errorLaunchingWhatsApp() =
      _ErrorLaunchingWhatsApp;

  // Save Receipts as CSV status response
  const factory ResponseError.failedToSaveReceipts() = _FailedToSaveReceipts;

  // Pick File from storage status response
  const factory ResponseError.failedToPickFile() = _FailedToPickFile;
  const factory ResponseError.imageExtensionNotSupported() =
      _ImageExtensionNotSupported;
  const factory ResponseError.fileSizeExceeds() = _FileSizeExceeds;

  // Opening File With Default App Status Responses
  const factory ResponseError.failedToOpenFile() = _FailedToOpenFile;
  const factory ResponseError.fileToOpenNotFound() = _FileToOpenNotFound;
  const factory ResponseError.noAppToOpenFile() = _NoAppToOpenFile;
  const factory ResponseError.permissionDeniedToOpenFile() =
      _PermissionDeniedToOpenFile;

  static ResponseError from(Object error) {
    if (error is ResponseError) {
      return error;
    } else if (error is SocketException) {
      return const ResponseError.noInternetConnection();
    } else if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.sendTimeout:
          return const ResponseError.sendTimeout();
        case DioExceptionType.connectionTimeout:
          return const ResponseError.connectTimeout();
        case DioExceptionType.receiveTimeout:
          return const ResponseError.receiveTimeout();
        case DioExceptionType.unknown:
          return const ResponseError.noInternetConnection();
        case DioExceptionType.cancel:
          return const ResponseError.requestCancelled();
        case DioExceptionType.badCertificate:
          return const ResponseError.badCertificate();
        case DioExceptionType.connectionError:
          return const ResponseError.connectionError();
        case DioExceptionType.badResponse:
          switch (error.response!.statusCode) {
            case 204:
              return const ResponseError.noContent();
            case 400:
              return ErrorResponse.fromJson(error.response!.data)
                  .getResponseErrorType();
            // Returned when login credentials are invalid.
            case 401:
              return const ResponseError.unauthorized();
            case 404:
              return const ResponseError.notFound();
            case 409:
              return const ResponseError.conflict();
            case 422:
              return const ResponseError.unprocessableEntity();
            case 429:
              return const ResponseError.tooManyRequests();
            case 500:
              return const ResponseError.internalServerError();
            case 502:
              return const ResponseError.internalServerError();
            default:
              // If we receive a unexpected status code, we throw an unexpectedError.
              return const ResponseError.unexpectedError();
          }
      }
    } else if (error is TypeError) {
      return const ResponseError.unprocessableEntity();
    } else {
      return const ResponseError.unexpectedError();
    }
  }
}

extension ResponseErrorExtensions on ResponseError {
  String? getErrorMessage() {
    // use return l10n?.invalidCredentials ?? 'Invalid credentials'; when
    // the localization is available
    return when<String?>(
      noInternetConnection: () => 'Internet connection problem.',
      sendTimeout: () => '',
      connectTimeout: () => 'Request timeout.',
      receiveTimeout: () => 'Request timeout.',
      badRequest: (message) => message,
      notFound: () => 'Server is not reachable.',
      tooManyRequests: () => '',
      unprocessableEntity: () => 'Unable to process response',
      internalServerError: () => 'Internal server error.',
      unexpectedError: () => 'Something went wrong!',
      requestCancelled: () => '',
      conflict: () => '',
      unauthorized: () => 'Invalid credentials',
      invalidPassword: () => 'Invalid password',
      invalidEmail: () => 'Invalid email',
      invalidSearhTerm: () => '',
      invalidLoginCredentials: () => '',
      badCertificate: () => '',
      connectionError: () => 'Internet connection problem.',
      withMessage: (String message) => '',
      invalidQueryParameters: () => '',
      graphlQLReadContextError: () => '',
      graphlQLWriteContextError: () => '',
      noContent: () => 'No search results',
      failedToSaveReceipts: () => 'Failed to save file!',
      passcodeNotConfiguredError: () =>
          'You may have not yet configured a passcode or PIN.',
      biometricNotEntrolledError: () =>
          'You may have not enrolled any biometric on your device.',
      biometricNotSupportedError: () =>
          'Your device does not support biometric authentication.',
      temporarilyLockedOutError: () =>
          'Temporarily locked out due to too many attempts.',
      temporarilyLockedOutRetryError: () =>
          'Temporarily locked out due to too many attempts. You need to enter passcode or PIN',
      errorDuringAuthentication: () =>
          'Something went wrong during authentication.',
      errorLaunchingMap: () => 'Failed to launch map!',
      failedToPickFile: () => 'Failed to pick file.',
      failedToOpenFile: () => 'Failed to open file.',
      fileToOpenNotFound: () => 'File to open not found.',
      noAppToOpenFile: () => 'No app is found to open the file.',
      permissionDeniedToOpenFile: () => 'Permission denied to open file.',
      imageExtensionNotSupported: () => 'File extension not supported.',
      fileSizeExceeds: () => 'File size exceeds the limit.',
      errorLaunchingMessagingApp: () => 'Can\'t launch messages!',
      errorLaunchingPhoneApp: () => 'Can\'t launch dialpad!',
      errorLaunchingWhatsApp: () => 'WhatsApp is not installed!',
    );
  }
}
