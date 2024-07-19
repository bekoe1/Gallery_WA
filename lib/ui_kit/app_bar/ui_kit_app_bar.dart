import 'package:flutter/material.dart';
import 'package:imagegalery/ui_kit/constants/text_styles.dart';
import 'package:imagegalery/ui_kit/search/ui_kit_search.dart';

class UiKitSearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  const UiKitSearchAppBar({
    super.key,
    required this.controller,
    required this.isSearchFieldEnabled,
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
        if (_focusNode.hasFocus)
          TextButton(
            onPressed: () {
              _focusNode.unfocus();
            },
            child: Text(
              "Cancel",
              style: UiKitTextStyle.h4MediumStyle(
                color: Colors.blue,
                fontSize: 17,
              ),
            ),
          ),
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
