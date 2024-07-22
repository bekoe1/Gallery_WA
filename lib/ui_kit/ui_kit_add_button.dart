part of 'module/ui_kit_widgets_module.dart';

class AddButton extends StatefulWidget {
  const AddButton({
    super.key,
    this.onPressed,
    required this.child,
  });

  final Widget child;

  final VoidCallback? onPressed;

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: widget.onPressed,
      backgroundColor: widget.onPressed == null ? UiKitColors.grayLight : UiKitColors.black,
      foregroundColor: widget.onPressed == null ? UiKitColors.grayLight : UiKitColors.white,
      splashColor: UiKitColors.main,
      child: Center(
        child: widget.child,
      ),
    );
  }
}
