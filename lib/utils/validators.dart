class Validators {
  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) return 'Nom d\'utilisateur requis';
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.length < 4) return 'Minimum 4 caractères';
    return null;
  }
}
