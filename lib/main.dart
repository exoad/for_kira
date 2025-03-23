import 'package:for_kira/app/kira.dart';
import 'package:jaspr/server.dart';

void main() {
  Jaspr.initializeApp(
    options: const JasprOptions(),
  );
  runApp(const KiraApp());
}
