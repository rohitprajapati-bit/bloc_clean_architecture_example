part of 'movie_bloc.dart';

class MovieState extends Equatable {

final ApiResponse<MovieModel> movieaList;
const MovieState({required this.movieaList});

MovieState copyWith({ApiResponse<MovieModel>? movieaList}) {
  return MovieState(movieaList: movieaList ?? this.movieaList);
}



  @override
  List<Object?> get props => [movieaList];
}
