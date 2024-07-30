part of '../../media_output_module.dart';

@RoutePage(name: "PopularTab")
class NewPhotosTab extends StatelessWidget {
  const NewPhotosTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 20,
        bottom: 20,
      ),
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return const GridImageElement();
      },
    );
  }
}
