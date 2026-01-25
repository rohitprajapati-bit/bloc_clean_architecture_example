import 'package:bloc_clean_architecture/model/movie/movie.dart';

abstract class Moviesrepository{
  Future<MovieModel> fetchMoviesList();
}