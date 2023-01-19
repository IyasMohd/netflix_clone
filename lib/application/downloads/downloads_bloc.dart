import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/i_dowloads_repo.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo downloadsRepo;

  DownloadsBloc(this.downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImages>((event, emit) async {
      emit(state.copyWith(
        isLoding: true,
        
        downloadsFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await downloadsRepo.getDownloadsImages();
      log(downloadsOption.toString());
      
      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
            isLoding: false,
            downloadsFailureOrSuccessOption: some(
              left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoding: false,
            downloadsFailureOrSuccessOption: some(
              right(success),
            ),
            downloads: success,
          ),
        ),
      );
    });
  }
}
