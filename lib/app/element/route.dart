import 'package:jaspr/server.dart';
import 'package:jaspr_router/jaspr_router.dart';

mixin RoutableMixin on Component {
  String get path;

  String get title;

  Route buildRoute() => Route(path: path, title: title, builder: (_, __) => this);
}
