part of '../add_image_module.dart';

class AddImageBloc extends Bloc<AddImageEvent, AddImageState> {
  final AddImageRepo addImageRepo;
  final UserTokenRepo tokenRepo;

  AddImageBloc({
    required this.tokenRepo,
    required this.addImageRepo,
  }) : super(const AddImageState.initial()) {
    on<_FetchData>(_onFetchData);
  }

  _onFetchData(_FetchData event, Emitter<AddImageState> emit) async {
    try {
      emit(
        state.copyWith(
          status: BlocStatesEnum.loading,
          firstFetch: event.isRefreshing,
        ),
      );

      final token = await tokenRepo.getTokenFromStorage();
      final page = 1 + (state.images.length / AppConstants.filesLimit).round();

      final imagesPath = await addImageRepo.getFiles(page: event.isRefreshing ? 1 : page);

      emit(
        state.copyWith(
          status: BlocStatesEnum.loaded,
          images: [...(event.isRefreshing ? [] : state.images), ...imagesPath],
          reachedEnd: imagesPath.isEmpty,
          firstFetch: false,
          token: token?.accessToken ?? "",
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
