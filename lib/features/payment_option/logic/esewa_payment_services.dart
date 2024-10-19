import 'package:ebook/core/secret/esewa_keys.dart';
import 'package:flutter/material.dart';
import 'package:esewa_flutter_sdk/esewa_config.dart';
import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';
import 'package:ebook/core/utils/app_helpers.dart';

class EsewaPaymentServices {
  // Initiating eSewa Payment
  void initEsewaPayment(BuildContext context) {
    try {
      EsewaFlutterSdk.initPayment(
        esewaConfig: EsewaConfig(
          environment: Environment.test,
          clientId: EsewaCredentials.clientId,
          secretId: EsewaCredentials.secretId,
        ),
        esewaPayment: EsewaPayment(
          productId: "1d71jd81",
          productName: "Test Product",
          productPrice: "1.0",
          callbackUrl: '',
        ),
        onPaymentSuccess: (EsewaPaymentSuccessResult data) {
          AppHelpers.showSuccessDialog(
              context, "Your payment has been successful.");
        },
        onPaymentFailure: (data) {
          AppHelpers.showSnackbar(
              context, "Your payment could not be processed.");
        },
        onPaymentCancellation: (data) {
          AppHelpers.showSnackbar(context, "You have cancelled the payment.");
        },
      );
    } on Exception catch (e) {
      AppHelpers.showSnackbar(context, e.toString());
    }
  }

  // // Fetching transaction details after successful payment
  // void _fetchTransactionDetails(BuildContext context, String refId) async {
  //   const String apiUrl = "https://rc.esewa.com.np/mobile/transaction";
  //   try {
  //     final response = await http.get(Uri.parse('$apiUrl?txnRefId={$refId}'));

  //     if (response.statusCode == 200) {
  //       final Map<String, dynamic> transactionDetails =
  //           json.decode(response.body);
  //       AppHelpers.showSuccessDialog(context, transactionDetails.toString());
  //     } else {
  //       AppHelpers.showErrorDialog(
  //           context, "Failed to fetch transaction details.");
  //     }
  //   } catch (e) {
  //     AppHelpers.showErrorDialog(context,
  //         "An unexpected error occurred while fetching transaction details.");
  //   }
  // }
}
