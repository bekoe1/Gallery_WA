part of '../media_output_module.dart';

class MediaOutputBloc extends Bloc<MediaOutputEvent, MediaOutputState> {
  final ImageRepo imageRepo;
  final UserTokenRepo tokenRepo;

  MediaOutputBloc({required this.imageRepo, required this.tokenRepo}) : super(const MediaOutputState.initial()) {
    on<_FetchData>(_onFetchData);
  }

  _onFetchData(_FetchData event, Emitter<MediaOutputState> emit) async {
    try {
      emit(
        state.copyWith(
          status: BlocStatesEnum.loading,
          firstFetch: event.isRefreshing,
        ),
      );
      final token = await tokenRepo.getTokenFromStorage();

      final imagesPage = 1 + (state.images.length / AppConstants.imageLimit).round();

      final receivedImages = await _loadingResponse(
        page: event.isRefreshing ? 1 : imagesPage,
        imagesPerPage: AppConstants.imageLimit,
        popular: event.popularImages,
        limit: AppConstants.imageLimit,
        search: event.searchName,
      );

      emit(
        state.copyWith(
          status: BlocStatesEnum.loaded,
          firstFetch: false,
          search: event.searchName,
          token: token!.accessToken,
          reachedEnd: receivedImages.isEmpty,
          images: event.isRefreshing
              ? receivedImages
              : [
                  ...state.images,
                  ...receivedImages.isNotEmpty ? receivedImages : [],
                ],
        ),
      );
    } on DioException catch (e) {
      emit(
        state.copyWith(
          search: event.searchName,
          status: BlocStatesEnum.requestError,
          requestError: e.response?.data[AppConstants.responseMessage],
        ),
      );
    }
  }

  Future<List<ImageElementModel>> _loadingResponse({
    required int page,
    required int imagesPerPage,
    required bool popular,
    required int limit,
    String? search,
  }) async {
    return await imageRepo.getImageData(
      limit: limit,
      popular: popular,
      page: page,
      search: search,
      imagesPerPage: imagesPerPage,
    );
  }
}
