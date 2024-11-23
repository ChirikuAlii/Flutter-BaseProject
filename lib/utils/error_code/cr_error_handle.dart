import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/utils/error_code/cr_base_response.dart';
import 'package:flutter_base_project/utils/error_code/cr_error.dart';
import 'package:flutter_base_project/utils/error_code/cr_exception.dart';
import 'package:flutter_base_project/utils/error_code/error_code.dart';

CRError crHandlerError(Object error) {
  CRError crError = CRError(
      code: ErrorUnknown.errorUnknownError,
      message: "Error get information $error");
  /**
     * Dio Exception
     */
  if (error is DioException) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        crError = CRError(
            code: ErrorNetwork.errorTimeout, message: "Connection Timeout");
      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case 401:
            // TODO : request token use refresh token
            CrBaseResponse baseRespose =
                CrBaseResponse.fromJson(error.response?.data);
            debugPrint("error login reponse message ${baseRespose.message}");
            crError = CRError(
                code: ErrorNetwork.errorAuth,
                message: baseRespose.message ?? "");
          case 404:
            crError = CRError(
                code: ErrorNetwork.errorNotFound,
                message: error.toString() ?? "");
          case 500:
            crError = CRError(
                code: ErrorNetwork.errorInternalServer,
                message: error.toString() ?? "");
          case 400:
            CrBaseResponse baseRespose =
                CrBaseResponse.fromJson(error.response?.data);
            crError = CRError(
                code: ErrorNetwork.errorBadRequest,
                message: baseRespose.message ?? "");
          default:
            crError = CRError(
              code: ErrorNetwork.errorNetworkDefault,
              message: "Error get information",
              //message : "Error get information ${error.message}"
            );
        }
      case DioExceptionType.connectionError:
      case DioExceptionType.cancel:
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        crError = CRError(
          code: ErrorNetwork.errorNetworkDefault,
          message: "Error get information",
          //message : "Error get information ${error.message}"
        );
    }
  } else if (error is CrException) {
    crError =
        CRError(code: ErrorUnknown.errorUnknownError, message: error.message);
  }
  return crError;
}
