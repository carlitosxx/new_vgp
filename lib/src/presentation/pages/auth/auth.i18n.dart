import 'package:i18n_extension/i18n_extension.dart';

/// View Sign in
const kButtonSignIn = 'kButtonSignIn';
const kSignIn = 'kSignIn';
const kSignInMessage = 'kSignInMessage';
const kHintEmailPhone = 'kHintEmailPhone';
const kHintPassword = 'kHintPassword';
const kForgotPassword = 'kForgotPassword';
const kDontHaveAccount = 'kDontHaveAccount';
const kCreateAccount = 'kCreateAccount';
const kHintEmail = 'kHintEmail';
const kHintPhone = 'kHintPhone';

/// View Register
const kRegister = 'kRegister';
const kRegisterMessage = 'kRegisterMessage';
const kIAgree = 'kIAgree';
const kTermAndConditions = 'kTermAndConditions';

/// View Forgot Password
const kForgotPasswordTitle = 'kForgotPasswordTitle';
const kForgotPasswordMessage = 'kForgotPasswordMessage';
const kSend = 'kSend';
const kTryAnotherWay = 'kTryAnotherWay';

/// View verify your account
const kVerifyYourEmail = 'kVerifyYourEmail';
const kPleaseEnterYourCode = 'kPleaseEnterYourCode';
const kDidntReceiveCode = 'kDidntReceiveCode';
const kResend = 'kResend';

/// View create new password
const kCreateNewPassword = 'kCreateNewPassword';
const kCreatePasswordMessage = 'kCreatePasswordMessage';
const kNewPassword = 'kNewPassword';
const kConfirmNewPassword = 'kConfirmNewPassword';

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
          "Por favor ingrese su cuenta, si no tienes puedes hacer click en el botón crear una cuenta.",
    },
    kHintEmailPhone: {
      "en_us": "Email address / Phone",
      "es_es": "Correo / Telefono",
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
    //register
    kRegister: {
      "en_us": "Create an account",
      "es_es": "Crear una cuenta",
    },
    kRegisterMessage: {
      "en_us": "We are glad that you joined us",
      "es_es": "Nos alegra que te unas a nosotros",
    },
    kHintEmail: {
      "en_us": "Email address",
      "es_es": "Correo electronico",
    },
    kHintPhone: {
      "en_us": "Phone number",
      "es_es": "Numero de telefono",
    },
    kIAgree: {
      "en_us": "I agree to ",
      "es_es": "Yo acepto los ",
    },
    kTermAndConditions: {
      "en_us": "Terms and conditions",
      "es_es": "Terminos y condiciones",
    },
    //Forgot password
    kForgotPasswordTitle: {
      "en_us": "Forgot password",
      "es_es": "Olvido la contraseña",
    },
    kForgotPasswordMessage: {
      "en_us":
          "Please enter your email address to receive a verification code.",
      "es_es":
          "Por favor ingrese su correo electrónico para recibir un código de verificación.",
    },
    kSend: {
      "en_us": "Send",
      "es_es": "Enviar",
    },
    kTryAnotherWay: {
      "en_us": "Try another way",
      "es_es": "Intentar de otra forma",
    },
    kVerifyYourEmail: {
      "en_us": "Verify your email",
      "es_es": "Verifique su correo",
    },
    kPleaseEnterYourCode: {
      "en_us": "Please enter your code",
      "es_es": "Por favor ingrese su codigo",
    },
    kDidntReceiveCode: {
      "en_us": "Didn't receive a code?",
      "es_es": "No recibiste un codigo?",
    },
    kResend: {
      "en_us": "Resend",
      "es_es": "Reenviar",
    },
    kCreateNewPassword: {
      "en_us": "Create new password",
      "es_es": "Crear nueva contraseña",
    },
    kCreatePasswordMessage: {
      "en_us":
          "Your new password must be differnt from previously used password",
      "es_es": "Su nueva clave debe ser diferente a la clave anterior",
    },
    kNewPassword: {
      "en_us": "New password",
      "es_es": "Nueva contraseña",
    },
    kConfirmNewPassword: {
      "en_us": "Confirm new password",
      "es_es": "Confirmar nueva contraseña",
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
