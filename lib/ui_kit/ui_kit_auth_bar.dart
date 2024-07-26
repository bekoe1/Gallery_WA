part of '../features/sign_up_feature/sign_up_module.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: UiKitColors.white,
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
