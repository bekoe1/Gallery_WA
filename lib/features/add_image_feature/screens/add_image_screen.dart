part of '../add_image_module.dart';

@RoutePage()
class AddImageScreen extends StatefulWidget {
  const AddImageScreen({super.key});

  @override
  State<AddImageScreen> createState() => _AddImageScreenState();
}

class _AddImageScreenState extends State<AddImageScreen> {
  bool _newImage = false;
  bool _popularImage = false;
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddImageBloc(addImageRepo: injection()),
      child: BlocConsumer<AddImageBloc, AddImageState>(
        listener: (context, state) {
          if (state.status.isLoaded()) {
            _nameController.clear();
            _descriptionController.clear();
            context.router.popAndPush(
              const HomeRoute(),
            );
            ScaffoldMessenger.of(context).showSnackBar(
              uikitSnackBar(context, context.localization.imageUploaded),
            );
          }
          if (state.status.hasRequestError() || state.status.noImagePicked()) {
            ScaffoldMessenger.of(context).showSnackBar(
              uikitSnackBar(
                context,
                state.status.hasRequestError()
                    ? state.requestError ?? context.localization.someError
                    : context.localization.pickImageError,
              ),
            );
          }
        },
        builder: (context, state) {
          final bloc = context.read<AddImageBloc>();
          return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: state.image != null
                  ? UiKitBackButton(
                      onTap: () {
                        AddImageDialogs.showCupertinoExitConfirmation(
                          context,
                          bloc,
                          _nameController,
                          _descriptionController,
                        );
                      },
                    )
                  : null,
              trailing: GestureDetector(
                onTap: () {
                  if (!state.status.isLoading()) {
                    bloc.add(
                      AddImageEvent.addImage(
                        description: _descriptionController.text.trim(),
                        name: _nameController.text.trim(),
                        popularImage: _popularImage,
                        image: state.image,
                      ),
                    );
                  }
                },
                child: Text(
                  context.localization.add,
                  style: AppTextStyles.h4.copyWith(
                    fontSize: 17,
                    color: UiKitColors.errorRed,
                  ),
                ),
              ),
            ),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (state.image != null) ...[
                    Container(
                      height: context.mediaQuery.size.height * 0.46,
                      color: UiKitColors.grayLight,
                      child: Image.memory(
                        state.image!,
                        fit: BoxFit.fill,
                        width: context.mediaQuery.size.width,
                        filterQuality: FilterQuality.high,
                      ),
                    )
                  ] else ...[
                    SizedBox(
                      height: context.mediaQuery.size.height * 0.46,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: UiKitIconButton(
                                onPressed: () {
                                  bloc.add(
                                    const AddImageEvent.pickImage(
                                      imageSource: ImageSource.gallery,
                                    ),
                                  );
                                },
                                child: SvgPicture.asset(
                                  AppIcons.plusIcon,
                                  color: UiKitColors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: UiKitIconButton(
                                onPressed: () {
                                  bloc.add(
                                    const AddImageEvent.pickImage(
                                      imageSource: ImageSource.camera,
                                    ),
                                  );
                                },
                                child: SvgPicture.asset(
                                  AppIcons.cameraIcon,
                                  color: UiKitColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 343,
                          child: UiKitTextFormField(
                            maxLines: 1,
                            textInputAction: TextInputAction.next,
                            errorText: state.validationError[FieldTypesEnum.nameField]?.currentError(context),
                            controller: _nameController,
                            hintText: context.localization.name,
                          ),
                        ),
                        SizedBox(
                          width: 343,
                          height: 128,
                          child: UiKitTextFormField(
                            textInputAction: TextInputAction.done,
                            errorText: state.validationError[FieldTypesEnum.descriptionField]?.currentError(context),
                            controller: _descriptionController,
                            maxLines: 5,
                            hintText: context.localization.description,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: CheckboxWithText(
                                value: _newImage,
                                onTap: (value) {
                                  setState(() {
                                    _newImage = value!;
                                  });
                                },
                                text: context.localization.newImages,
                                textStyle: _newImage ? AppTextStyles.h4 : AppTextStyles.p,
                              ),
                            ),
                            CheckboxWithText(
                              value: _popularImage,
                              onTap: (value) {
                                setState(() {
                                  _popularImage = value!;
                                });
                              },
                              text: context.localization.popularImages,
                              textStyle: _popularImage ? AppTextStyles.h4 : AppTextStyles.p,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
