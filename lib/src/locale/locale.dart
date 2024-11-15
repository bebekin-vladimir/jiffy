import '../enums/start_of_week.dart';
import 'relative_date_time.dart';

/// An abstract class representing a Locale in Dart.
abstract class Locale {
  /// Returns the locale code for this locale.
  ///
  /// The locale code is a string identifier that uniquely identifies a
  /// Locale. Examples include "en-US" for English as used in the
  /// United States, or "fr-CA" for French as used in Canada.
  String code();

  /// Returns a list of ordinal suffixes for this locale.
  ///
  /// Ordinal suffixes are used to format the ordinal number of a day
  /// (For example, "st", "nd", "rd", "th").
  List<String> ordinals();

  /// Returns the day on which the week starts for this locale.
  StartOfWeek startOfWeek();

  /// Returns a [RelativeDateTime] instance for this locale.
  ///
  /// A [RelativeDateTime] instance encapsulates the rules for formatting
  /// relative date/time values (For example, "3 hours ago", "in 2 days") for
  /// a specific locale.
  RelativeDateTime relativeDateTime();
}

class LocaleWrapper implements Locale {
  LocaleWrapper(this._locale, this._startOfWeek);

  final Locale _locale;
  final StartOfWeek? _startOfWeek;

  @override
  String code() => _locale.code();

  @override
  List<String> ordinals() => _locale.ordinals();

  @override
  RelativeDateTime relativeDateTime() => _locale.relativeDateTime();

  @override
  StartOfWeek startOfWeek() => _startOfWeek ?? _locale.startOfWeek();
}
