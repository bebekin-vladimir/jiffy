import '../../enums/start_of_week.dart';
import '../locale.dart';
import '../relative_date_time.dart';
import 'en_locale.dart';

class StubLocale extends Locale {
  StubLocale({
    required this.lang,
    StartOfWeek startOfWeek = StartOfWeek.monday,
  }) : _startOfWeek = startOfWeek;

  final String lang;
  final StartOfWeek _startOfWeek;

  @override
  String code() => lang;

  @override
  List<String> ordinals() => List.from(const ['', '', '', ''], growable: false);

  @override
  StartOfWeek startOfWeek() => _startOfWeek;

  @override
  RelativeDateTime relativeDateTime() => EnRelativeTime();
}
