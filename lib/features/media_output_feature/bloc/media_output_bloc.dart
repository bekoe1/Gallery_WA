part of '../media_output_module.dart';

class MediaOutputBloc extends Bloc<MediaOutputEvent, MediaOutputState> {
  final ImageRepo imageRepo;

  MediaOutputBloc(this.imageRepo) : super(const MediaOutputState.initial()) {
    on<_FetchData>(_onFetchData);
  }

  _onFetchData(_FetchData event, Emitter<MediaOutputState> emit) async {
    try {
      emit(
        state.copyWith(
          status: BlocStatesEnum.loading,
        ),
      );
      final imagesPage = (state.images.length / AppConstants.imageLimit).round();

      if (event.isRefreshing) {
        emit(
          state.copyWith(
            firstFetch: true,
          ),
        );
        final receivedImages = await _loadingResponse(
          page: 1,
          imagesPerPage: AppConstants.imageLimit,
          popular: event.popularImages,
          limit: AppConstants.imageLimit,
          search: event.searchName,
        );
        emit(
          state.copyWith(
            status: receivedImages.isNotEmpty ? BlocStatesEnum.loaded : BlocStatesEnum.noImages,
            images: receivedImages,
            firstFetch: false,
            search: event.searchName,
            reachedEnd: receivedImages.isNotEmpty ? false : true,
          ),
        );
      } else {
        final receivedImages = await _loadingResponse(
          page: imagesPage + 1,
          imagesPerPage: AppConstants.imageLimit,
          popular: event.popularImages,
          limit: AppConstants.imageLimit,
          search: event.searchName,
        );
        final images = [...state.images, ...receivedImages];
        bool receivedImagesIsNotEmpty = receivedImages.isNotEmpty;
        emit(
          state.copyWith(
            firstFetch: false,
            search: event.searchName,
            images: receivedImagesIsNotEmpty ? images : state.images,
            status: images.isNotEmpty ? BlocStatesEnum.loaded : BlocStatesEnum.noImages,
            reachedEnd: receivedImagesIsNotEmpty ? false : true,
          ),
        );
      }
    } on DioException catch (e) {
      emit(
        state.copyWith(
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