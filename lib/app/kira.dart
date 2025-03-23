import 'package:for_kira/app/routes/index.dart';
import 'package:jaspr/server.dart';
import 'package:jaspr_router/jaspr_router.dart';

class KiraApp extends StatelessComponent {
  const KiraApp();

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Document(
        title: "whoami",
        head: [
          link(rel: "stylesheet", href: "fonts/faces.css"),
          link(rel: "stylesheet", href: "styles/app.css")
        ],
        viewport: "width=device-width, initial-scale=1",
        meta: {"robots": "index,follow"},
        body: div(classes: 'kira-app', <Component>[
          Router(routes: <Route>[const Index().buildRoute()])
        ]));
  }
}
