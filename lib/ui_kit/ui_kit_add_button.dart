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
  double _elevation = 4;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _elevation = 0;
    });
  }

  void _onTapCancel() {
    setState(() {
      _elevation = 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: GestureDetector(
        onTapDown: _onTapDown,
        onTapCancel: _onTapCancel,
        child: FloatingActionButton(
          elevation: widget.onPressed == null ? 0 : _elevation,
          onPressed: widget.onPressed,
          backgroundColor: widget.onPressed == null
              ? UiKitColors.grayLight
              : UiKitColors.black,
          foregroundColor: widget.onPressed == null
              ? UiKitColors.grayLight
              : UiKitColors.white,
          splashColor: UiKitColors.main,
          child: Center(
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
