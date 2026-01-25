import 'package:bloc_clean_architecture/model/movie/movie.dart';
import 'package:bloc_clean_architecture/repository/movies/movies_repository.dart';

class MoviesMockApiRepository implements Moviesrepository {
  @override
  Future<MovieModel> fetchMoviesList() {
    return Future.delayed(const Duration(seconds: 2), () {
      return MovieModel(total: 10, page: 1, pages: 1, tvShows: []);
    });
  }
}
