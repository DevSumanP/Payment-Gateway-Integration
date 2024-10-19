import 'package:flutter/material.dart';
import 'package:ebook/core/constants/app_colors.dart';
import 'package:ebook/core/constants/app_text_styles.dart';

class AccountCard extends StatelessWidget {
  final String serviceName;
  final String serviceLogo;
  final VoidCallback onTap;

  const AccountCard({
    super.key,
    required this.serviceName,
    required this.serviceLogo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: AppColors.cardBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  serviceName,
                  style: AppTextStyles.subtitle1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset(
                  serviceLogo,
                  width: 35,
                  height: 35,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
