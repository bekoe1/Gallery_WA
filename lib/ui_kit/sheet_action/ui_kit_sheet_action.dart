import 'package:flutter/cupertino.dart';

class UiKitSheetAction extends StatelessWidget {
  UiKitSheetAction({
    super.key,
    this.cancelButton,
    this.title,
    this.message,
    this.actions,
    this.messageScrollController,
    this.actionScrollController,
  });
  final Widget? title;
  final Widget? message;
  final List<Widget>? actions;
  final ScrollController? messageScrollController;
  final ScrollController? actionScrollController;
  final Widget? cancelButton;

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      cancelButton: cancelButton,
      message: message,
      messageScrollController: messageScrollController,
      title: title,
      actions: actions,
    );
  }
}
