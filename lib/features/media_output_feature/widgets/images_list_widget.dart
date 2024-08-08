part of '../media_output_module.dart';

class ImagesListWidget extends StatelessWidget {
  const ImagesListWidget({
    super.key,
    required this.images,
    required this.focusNode,
    required this.token,
  });

  final String token;
  final FocusNode focusNode;
  final List<ImageElementModel> images;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: GestureDetector(
              onTap: focusNode.unfocus,
              child: GridImageElement(
                imageData: images[index],
                token: token,
              ),
            ),
          );
        },
        childCount: images.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
      ),
    );
  }
}
