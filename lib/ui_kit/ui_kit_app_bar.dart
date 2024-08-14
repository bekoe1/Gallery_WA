part of 'module/ui_kit_widgets_module.dart';

class UiKitSearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  const UiKitSearchAppBar({
    super.key,
    required this.controller,
    this.isSearchFieldEnabled = true,
  });

  final TextEditingController controller;
  final bool isSearchFieldEnabled;

  @override
  State<UiKitSearchAppBar> createState() => _UiKitSearchAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _UiKitSearchAppBarState extends State<UiKitSearchAppBar> {
  final _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        if (_focusNode.hasFocus) ...[
          UiKitBackButton(
            onTap: _focusNode.unfocus,
          ),
        ]
      ],
      title: UiKitSearchField(
        controller: widget.controller,
        isEnabled: widget.isSearchFieldEnabled,
        key: widget.key,
        focusNode: _focusNode,
      ),
      centerTitle: true,
    );
  }
}
