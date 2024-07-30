part of '../../media_output_module.dart';

@RoutePage(name: "NewTab")
class PopularPhotosTab extends StatelessWidget {
  const PopularPhotosTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          FilledButton(
            onPressed: () async {
              await const FlutterSecureStorage().deleteAll();
            },
            child: const Text("delete tokens"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: FilledButton(
              child: const Text("test"),
              onPressed: () async {
                await ImageDataProvider(dio: getIt<Dio>()).getImageData(page: 1, imagesPerPage: 2);
              },
            ),
          )
        ],
      ),
    );
  }
}
