String? validarEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Por favor, introduce un correo electrónico';
  }
  return null;
}

String? validarContrasena(String? value) {
  if (value == null || value.isEmpty) {
    return 'Por favor, introduce una contraseña';
  }
  if (value.length < 8 || value.length > 15) {
    return 'La contraseña debe tener entre 8 y 15 caracteres';
  }
  return null;
}
