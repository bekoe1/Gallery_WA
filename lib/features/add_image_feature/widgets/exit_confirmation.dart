part of '../add_image_module.dart';

class AddImageDialogs {
  static Future<dynamic> showCupertinoExitConfirmation(
    BuildContext context,
    AddImageBloc bloc,
    TextEditingController nameController,
    TextEditingController descriptionController,
  ) {
    return showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(
            context.localization.confirmation,
            style: AppTextStyles.h2.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
          content: Text(
            "${context.localization.exitConfirmation}\n${context.localization.dataLostConfirmation}",
            textAlign: TextAlign.center,
            style: AppTextStyles.caption.copyWith(
              fontSize: 13,
              color: UiKitColors.black,
            ),
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(context);
                bloc.add(
                  const AddImageEvent.resetImage(),
                );
                nameController.clear();
                descriptionController.clear();
              },
              child: Text(
                context.localization.exit,
                style: AppTextStyles.p.copyWith(
                  fontSize: 17,
                  color: UiKitColors.blue,
                ),
              ),
            ),
            CupertinoDialogAction(
              onPressed: context.router.popForced,
              child: Text(
                context.localization.cancel,
                style: AppTextStyles.h2.copyWith(
                  fontSize: 17,
                  color: UiKitColors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
