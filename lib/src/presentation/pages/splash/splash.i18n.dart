import 'package:i18n_extension/i18n_extension.dart';

const kBrand = 'kBrand';

/// This extension method contains all
/// the strings for the Jokes view
extension SplashStrings on String {
  static const _t = Translations.from("en_us", {
    kBrand: {
      "en_us": "Pringstom",
      "es_es": "Pringstom",
    },
    // greetings: {
    //   "en_us": "This example demonstrates how to use identifiers as keys.\n\n"
    //       "For example, you can write:\n"
    //       "helloThere.i18n\n"
    //       "instead of\n"
    //       "\"Hello There\".i18n",
    //   "pt_br": "Este exemplo demonstra como usar identificadores como chaves.\n\n"
    //       "Por exemplo, você pode escrever:\n"
    //       "saudacao.i18n\n"
    //       "em vez de\n"
    //       "\"Olá como vai\".i18n",
    // },
    // increment: {
    //   "en_us": "Increment",
    //   "pt_br": "Incrementar",
    // },
    // changeLanguage: {
    //   "en_us": "Change Language",
    //   "pt_br": "Mude Idioma",
    // },
    // youClickedThisNumberOfTimes: {
    //   "en_us": "You clicked the button %d times:"
    //       .zero("You haven't clicked the button:")
    //       .one("You clicked it once:")
    //       .two("You clicked a couple times:")
    //       .many("You clicked %d times:")
    //       .times(12, "You clicked a dozen times:"),
    //   "pt_br": "Você clicou o botão %d vezes:"
    //       .zero("Você não clicou no botão:")
    //       .one("Você clicou uma única vez:")
    //       .two("Você clicou um par de vezes:")
    //       .many("Você clicou %d vezes:")
    //       .times(12, "Você clicou uma dúzia de vezes:"),
    // }
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
