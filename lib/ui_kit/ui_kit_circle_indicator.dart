part of 'module/ui_kit_widgets_module.dart';

class UiKitCircleLoadingIndicator extends StatelessWidget {
  const UiKitCircleLoadingIndicator({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        color: color,
      ),
    );
  }
}
