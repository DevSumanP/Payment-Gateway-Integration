import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:ebook/core/utils/app_helpers.dart';

class KhaltiPaymentServices {
  // Initialize Khalti Payment
  void initKhaltiPayment(BuildContext context) {
    KhaltiScope.of(context).pay(
      config: PaymentConfig(
          amount: 10, // Amount is in paisa (1000 = Rs. 10)
          productIdentity: 'product-id-1234',
          productName: 'Product Name',
          productUrl: 'https://example.com/product', // Optional
          mobile: '9800000001',
          mobileReadOnly: false),
      preferences: [
        PaymentPreference.khalti,
        PaymentPreference.mobileBanking,
        PaymentPreference.connectIPS,
        PaymentPreference.eBanking
      ],
      onSuccess: (successMessage) {
        // Handle success
        AppHelpers.showSuccessDialog(
          context,
          'Payment Successful! Transaction ID: ${successMessage.idx}',
        );
      },
      onFailure: (failureMessage) {
        // Handle failure
        AppHelpers.showSnackbar(
          context,
          'Payment Failed: ${failureMessage.message}',
        );
      },
      onCancel: () {
        // Handle cancellation
        AppHelpers.showSnackbar(context, 'Payment Cancelled.');
      },
    );
  }
}
