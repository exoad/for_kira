import 'package:jaspr/ui.dart';

/// Copium for no editor auto wrapping functionality (like in Flutter)
extension ComponentsExtension on Component {
  Component padding(Spacing spacing) => Padding(padding: spacing, children: [this]);

  Component flexH(List<Component> children,
          {JustifyContent? mainAxisAlignment,
          AlignItems? crossAxisAlignment,
          FlexWrap? flexWrap}) =>
      div(
        styles: Styles(
          display: Display.flex,
          flexDirection: FlexDirection.row,
          flexWrap: flexWrap ?? FlexWrap.wrap,
          justifyContent: mainAxisAlignment,
          alignItems: crossAxisAlignment,
        ),
        children..insert(0, this),
      );

  Component flexV(List<Component> children,
          {JustifyContent? mainAxisAlignment,
          AlignItems? crossAxisAlignment,
          FlexWrap? flexWrap}) =>
      div(
        styles: Styles(
          display: Display.flex,
          flexDirection: FlexDirection.column,
          flexWrap: flexWrap,
          justifyContent: mainAxisAlignment,
          alignItems: crossAxisAlignment,
        ),
        children..insert(0, this),
      );

  Component get centered => Center(children: [this]);

  Component bordered(Border border) => div(styles: Styles(border: border), [this]);
}

final class Kira {
  static Component hDivider() => hr(styles: const Styles(color: Color.hex("#11151C")));

  static Component button1(List<Component> children,
          {Spacing? childPadding, void Function()? onPressed}) =>
      div(
          classes: "kira-button-type-1",
          events: {"click": (e) => onPressed?.call()},
          children);

  static Component spacer() => div(styles: const Styles(flex: Flex(grow: 1)), []);

  static Component vertLine() => div(classes: "kira-vert-line", []);

  static Component textbutton1(String str,
          {String corner = "+", Unit? fontSize, void Function()? onPressed}) =>
      Kira.button1(onPressed: onPressed, [
        span(styles: Styles(padding: Spacing.only(left: 0.24.rem)), [text(corner)]),
        span(
            styles: Styles(
                color: const Color.hex("#11151C"),
                fontFamily: const FontFamily("Playfair Display"),
                fontSize: fontSize ?? 4.2.vw,
                fontWeight: FontWeight.bolder),
            [text("$str")]).padding(Spacing.all(0.48.em))
      ]);

  static Component textbutton1nocorner(String str, {Unit? fontSize}) => Kira.button1([
        span(
                styles: Styles(
                    fontFamily: const FontFamily("Playfair Display"),
                    fontSize: fontSize ?? 4.2.vw,
                    fontWeight: FontWeight.bolder),
                [text("$str")])
            .padding(Spacing.symmetric(horizontal: 0.58.em, vertical: 0.48.em))
      ]);
}
