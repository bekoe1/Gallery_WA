part of '../add_image_module.dart';

class AddImageBloc extends Bloc<AddImageEvent, AddImageState> {
  final _imagePicker = ImagePicker();
  final AddImageRepo addImageRepo;

  AddImageBloc({required this.addImageRepo}) : super(const AddImageState.initial()) {
    on<_PickImage>(_onPickImage);
    on<_ResetImage>(_onResetImage);
    on<_AddImage>(_onAddImage);
  }

  _onAddImage(_AddImage event, Emitter<AddImageState> emit) async {
    try {
      emit(
        state.copyWith(
          status: BlocStatesEnum.loading,
        ),
      );
      final errorList = {
        ...ValidationHelper.validateDescription(event.description),
        ...ValidationHelper.validateName(event.name),
      };
      if (errorList.isNotEmpty || event.image == null) {
        emit(
          state.copyWith(
            status: event.image == null ? BlocStatesEnum.noImage : BlocStatesEnum.validationError,
            validationError: errorList,
          ),
        );
      } else {
        final file = await _createFile(event.image!, event.name);
        final response = await addImageRepo.createFile(
          file: file,
          name: event.name,
        );

        final userInfo = await addImageRepo.getCurrentUserFullInfo();
        final imageCreationDto = RequestImageCreationDto(
          file: response.id,
          user: "/users/${userInfo.userInfoDtoId}",
          description: event.description,
          name: event.name,
          imageTypeNew: true,
          imageTypePopular: event.popularImage,
        );

        final createImage = await addImageRepo.createImage(
          imageDto: imageCreationDto,
        );

        emit(
          state.copyWith(
            status: BlocStatesEnum.loaded,
            validationError: {},
            image: null,
          ),
        );
      }
    } on DioException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatesEnum.requestError,
          requestError: e.message,
        ),
      );
    }
  }

  Future<File> _createFile(Uint8List image, String name) async {
    final tempDir = await getTemporaryDirectory();
    File file = await File('${tempDir.path}/$name.png').create();
    file.writeAsBytesSync(image);
    return file;
  }

  _onResetImage(_ResetImage event, Emitter<AddImageState> emit) {
    emit(
      state.copyWith(
        image: null,
        validationError: {},
        status: BlocStatesEnum.initial,
      ),
    );
  }

  _onPickImage(_PickImage event, Emitter<AddImageState> emit) async {
    try {
      final image = await _imagePicker.pickImage(source: event.imageSource);
      if (image != null) {
        final imageInBytes = await XfilesHelper.convertToFile(image);
        emit(
          state.copyWith(
            image: imageInBytes,
            status: BlocStatesEnum.success,
          ),
        );
      }
    } on PlatformException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatesEnum.requestError,
          requestError: e.message,
        ),
      );
    } on Exception catch (e) {
      emit(
        state.copyWith(
          status: BlocStatesEnum.requestError,
          requestError: e.toString(),
        ),
      );
    }
  }
}
