part of '../features/sign_up_feature/sign_up_module.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({
    super.key,
    required this.pageToPop,
  });
  final PageRouteInfo pageToPop;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: UiKitColors.white,
      forceMaterialTransparency: true,
      backgroundColor: UiKitColors.white,
      leadingWidth: 150,
      toolbarHeight: 50,
      leading: Padding(
        padding: const EdgeInsets.only(left: 9),
        child: UiKitBackButton(
          onTap: () {
            context.router.replaceAll([pageToPop]);
          },
        ),
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
