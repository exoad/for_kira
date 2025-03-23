import 'package:for_kira/app/element/components.dart';
import 'package:for_kira/app/element/route.dart';
import 'package:jaspr/ui.dart';

class Index extends StatelessComponent with RoutableMixin {
  const Index();

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Document.head(children: [
      link(rel: "stylesheet", href: "styles/routes/index.css"),
    ]);
    yield div(
      classes: "index-page",
      <Component>[
        div(classes: "k-index-jumbo", [text('WHOAMI')])
            .padding(Spacing.only(left: 1.2.em))
            .flexH(
                mainAxisAlignment: JustifyContent.center,
                crossAxisAlignment: AlignItems.center,
                [
              div(
                  styles: Styles(
                      width: 100.percent,
                      border: const Border.only(
                          left: BorderSide.dashed(color: Color.hex("#11151C"))),
                      flex: const Flex(grow: 1)),
                  []),
              Row(
                  mainAxisAlignment: JustifyContent.center,
                  crossAxisAlignment: AlignItems.center,
                  children: [
                    Kira.textbutton1("projects", onPressed: () => print("hello!")),
                    Spacer(width: 0.64.em, height: 100.percent),
                    Kira.textbutton1("socials").padding(Spacing.only(right: 1.2.em))
                  ]).padding(Spacing.only(left: 1.2.em)),
            ]),
        Kira.hDivider()
      ],
    );
  }

  @override
  String get path => "/";

  @override
  String get title => 'whoami';
}
