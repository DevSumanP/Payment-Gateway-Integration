import 'package:ebook/features/payment_option/logic/esewa_payment_services.dart';
import 'package:ebook/features/payment_option/logic/khalti_payment_services.dart';
import 'package:ebook/features/payment_option/presentation/widgets/account_card.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:ebook/core/constants/app_colors.dart';
import 'package:ebook/core/constants/app_text_styles.dart';
import 'package:ebook/core/utils/app_helpers.dart';

class PaymentOptionsScreen extends StatelessWidget {
  const PaymentOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(IconlyLight.arrow_left),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Text('Choose Payment', style: AppTextStyles.heading1),
            Text('option', style: AppTextStyles.heading1),
            const SizedBox(height: 40),
            AccountCard(
              serviceName: 'Debit / Credit card',
              serviceLogo: './assets/images/card.png',
              onTap: () {
                AppHelpers.showSnackbar(context,
                    "Debit/Credit card payment is not implemented yet.");
              },
            ),
            AccountCard(
              serviceName: 'Internet Banking',
              serviceLogo: './assets/images/bank.png',
              onTap: () {
                AppHelpers.showSnackbar(context,
                    "Internet Banking payment is not implemented yet.");
              },
            ),
            AccountCard(
              serviceName: 'E-sewa',
              serviceLogo: './assets/images/esewa.png',
              onTap: () {
                EsewaPaymentServices().initEsewaPayment(context);
              },
            ),
            AccountCard(
                serviceName: 'Khalti',
                serviceLogo: './assets/images/khalti.png',
                onTap: () {
                  KhaltiPaymentServices().initKhaltiPayment(context);
                }),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ElevatedButton(
                onPressed: () {
                  AppHelpers.showSnackbar(
                      context, "Adding another option is not implemented yet.");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.cardBackgroundColor,
                  foregroundColor: Colors.black,
                  elevation: 0,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 24.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.add, size: 20, color: AppColors.textColor),
                    Text('Add another option', style: AppTextStyles.buttonText),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
