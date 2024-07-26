part of '../sign_up_module.dart';

class SignUpAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SignUpAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: UiKitColors.white,
      leadingWidth: 100,
      toolbarHeight: 50,
      leading: UiKitBackButton(
        onTap: () {
          context.router.maybePop();
        },
      ),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(
          5.0,
        ),
        child: Divider(
          height: 1,
          color: UiKitColors.gray,
        ),
      ),
    );
  }
}
