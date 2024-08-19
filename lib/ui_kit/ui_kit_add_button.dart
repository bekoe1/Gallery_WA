part of 'module/ui_kit_widgets_module.dart';

class UiKitIconButton extends StatefulWidget {
  const UiKitIconButton({
    super.key,
    this.onPressed,
    required this.child,
  });

  final Widget child;

  final VoidCallback? onPressed;

  @override
  State<UiKitIconButton> createState() => _UiKitIconButtonState();
}

class _UiKitIconButtonState extends State<UiKitIconButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
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
