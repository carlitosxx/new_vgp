import 'package:i18n_extension/i18n_extension.dart';

const kButtonSignIn = 'kButtonSignIn';
const kSignIn = 'kSignIn';
const kSignInMessage = 'kSignInMessage';
const kHintEmail = 'kHintEmail';
const kHintPassword = 'kHintPassword';
const kForgotPassword = 'kForgotPassword';
const kDontHaveAccount = 'kDontHaveAccount';
const kCreateAccount = 'kCreateAccount';

/// This extension method contains all
/// the strings for the view
extension SplashStrings on String {
  static const _t = Translations.from("en_us", {
    kButtonSignIn: {
      "en_us": "Sign In",
      "es_es": "Iniciar Sesion",
    },
    kSignIn: {
      "en_us": "Sign In",
      "es_es": "Iniciar Sesion",
    },
    kSignInMessage: {
      "en_us":
          "Please enter your account, if you do not have click on the button to create account",
      "es_es":
          "Por favor ingrese su cuenta, si no tiene haga click en el boton crear una cuenta",
    },
    kHintEmail: {
      "en_us": "Email address",
      "es_es": "Correo electronico",
    },
    kHintPassword: {
      "en_us": "Password",
      "es_es": "Contraseña",
    },
    kForgotPassword: {
      "en_us": "Forgot your password?",
      "es_es": "Olvido su contraseña?",
    },
    kDontHaveAccount: {
      "en_us": "Don't have an account?",
      "es_es": "No tienes una cuenta?",
    },
    kCreateAccount: {
      "en_us": "Create account",
      "es_es": "Crear una cuenta",
    },
  });

  /// Getter to translate the string
  String get i18n => localize(this, _t);

  /// Method for interpolating strings
  String fill(List<Object> params) => localizeFill(this, params);

  /// Method for pluralizing strings
  String plural(int value) => localizePlural(value, this, _t);

  /// Method for creating custom modifiers according to any conditions
  String version(Object modifier) => localizeVersion(modifier, this, _t);

  /// Method for retrieving all the custom modifiers
  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
