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
      width: 22,
      height: 22,
      child: CircularProgressIndicator(
        strokeWidth: 1,
        color: color,
      ),
    );
  }
}
