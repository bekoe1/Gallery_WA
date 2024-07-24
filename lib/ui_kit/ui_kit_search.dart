part of 'module/ui_kit_widgets_module.dart';

class UiKitSearchField extends StatefulWidget {
  const UiKitSearchField({
    super.key,
    required this.controller,
    this.isEnabled = true,
    this.focusNode,
  });

  final TextEditingController controller;
  final bool isEnabled;
  final FocusNode? focusNode;

  @override
  _UiKitSearchFieldState createState() => _UiKitSearchFieldState();
}

class _UiKitSearchFieldState extends State<UiKitSearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 343,
        minHeight: 38,
      ),
      child: IgnorePointer(
        ignoring: !widget.isEnabled,
        child: CupertinoSearchTextField(
          focusNode: widget.focusNode,
          itemColor: widget.isEnabled ? UiKitColors.gray : UiKitColors.grayLight,
          padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
          borderRadius: BorderRadius.circular(10),
          controller: widget.controller,
          backgroundColor: UiKitColors.grayLight,
          style: TextStyle(
            color: widget.isEnabled ? UiKitColors.black : UiKitColors.grayLight,
          ),
          placeholderStyle: TextStyle(
            color: widget.isEnabled ? UiKitColors.gray : UiKitColors.grayLight,
          ),
        ),
      ),
    );
  }
}
