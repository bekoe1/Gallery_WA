part of '../image_view_module.dart';

class ImageViewBloc extends Bloc<ImageViewEvent, ImageViewState> {
  final ImageViewRepo imageViewRepo;
  final UserTokenRepo tokenRepo;

  ImageViewBloc({
    required this.imageViewRepo,
    required this.tokenRepo,
  }) : super(const ImageViewState.initial()) {
    on<_FetchData>(_onFetchData);
  }

  _onFetchData(_FetchData event, Emitter<ImageViewState> emit) async {
    try {
      emit(
        state.copyWith(status: BlocStatesEnum.loading),
      );
      final token = await tokenRepo.getTokenFromStorage();
      final imageData = await imageViewRepo.getImageById(id: event.id);

      emit(
        state.copyWith(
          description: imageData.description,
          creatingDate: imageData.dateCreate,
          userName: imageData.user?.displayName,
          imageName: imageData.name,
          status: BlocStatesEnum.loaded,
          imageUrl: imageData.file?.path,
        ),
      );
    } on DioException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatesEnum.requestError,
          requestError: e.response?.data[AppConstants.responseMessage],
        ),
      );
    }
  }
}
