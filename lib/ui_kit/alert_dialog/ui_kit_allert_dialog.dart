import 'package:flutter/cupertino.dart';
import 'package:imagegalery/ui_kit/constants/text_styles.dart';

class UiKitAlertDialog extends StatelessWidget {
  const UiKitAlertDialog({
    super.key,
    required this.title,
    required this.content,
    required this.actions,
  });

  final String title;
  final String content;
  final List<Widget> actions;

  List<Widget> _paddedActions() {
    return actions.map((action) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: action,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      actions: _paddedActions(),
      title: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          textAlign: TextAlign.center,
          style: UiKitTextStyle.h4MediumStyle(
            color: CupertinoColors.black,
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.only(bottom: 17),
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 4,
          textAlign: TextAlign.center,
          style: UiKitTextStyle.h4MediumStyle(
            color: CupertinoColors.black,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
