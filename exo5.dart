class MotdepasseCourtException implements Exception {
  String message;
  MotdepasseCourtException(this.message);

  @override
  String toString() => 'MotdepasseCourtException: $message';
}


void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException(
        'Le mot de passe doit contenir au moins 6 caractères.');
  }
  print('Mot de passe valide.');
}

void main() {
  try {
  
    verifierMotdepasse('abc');
  } catch (e) {
    
    print(e);
  }

  
  try {
    verifierMotdepasse('monSuperMDP');
  } catch (e) {
    print(e);
  }
}
