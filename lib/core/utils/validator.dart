class Validators {
  // Validate that the input is a valid URL
  static String? validateUrl(String? value) {
    if (value == null || value.isEmpty) {
      return 'URL cannot be empty';
    }

    const urlPattern =
        r'^(https?:\/\/)?([\w\-])+(\.[\w\-]+)+([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#])?$';
    if (!RegExp(urlPattern).hasMatch(value)) {
      return 'Please enter a valid URL';
    }

    return null;
  }

  // Validate that password is strong enough
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }

    final hasUppercase = value.contains(RegExp(r'[A-Z]'));
    final hasDigits = value.contains(RegExp(r'[0-9]'));
    final hasLowercase = value.contains(RegExp(r'[a-z]'));
    final hasSpecialCharacters =
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    if (!hasUppercase || !hasLowercase || !hasDigits || !hasSpecialCharacters) {
      return 'Password must contain upper, lower case letters, numbers, and special characters';
    }

    return null;
  }

  // Validate non-empty field (generic validation)
  static String? validateNotEmpty(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName cannot be empty';
    }
    return null;
  }
}
