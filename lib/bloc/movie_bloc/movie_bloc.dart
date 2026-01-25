import 'package:bloc/bloc.dart';
import 'package:bloc_clean_architecture/data/response/api_response.dart';
import 'package:bloc_clean_architecture/model/movie/movie.dart';
import 'package:bloc_clean_architecture/repository/movies/movies_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  Moviesrepository moviesrepository;
  MovieBloc({required this.moviesrepository})
    : super(MovieState(movieaList: ApiResponse.loading())) {
    on<MoviesFetchEvent>(_onMoviesFetchEvent);
  }

  void _onMoviesFetchEvent(
    MoviesFetchEvent event,
    Emitter<MovieState> emit,
  ) async {
    await moviesrepository
        .fetchMoviesList()
        .then((value) {
          emit(state.copyWith(movieaList: ApiResponse.success(value)));
        })
        .onError((error, stackTrace) {
          if (kDebugMode) print('MovieBloc: error $error');
          emit(
            state.copyWith(movieaList: ApiResponse.failure(error.toString())),
          );
        });
  }
}
