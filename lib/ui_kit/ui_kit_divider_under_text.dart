part of 'module/ui_kit_widgets_module.dart';

class DividerUnderText extends StatelessWidget {
  const DividerUnderText({
    super.key,
    required this.text,
  });

  final Text text;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: [
          text,
          const Divider(
            thickness: 3,
            color: UiKitColors.main,
          ),
        ],
      ),
    );
  }
}
