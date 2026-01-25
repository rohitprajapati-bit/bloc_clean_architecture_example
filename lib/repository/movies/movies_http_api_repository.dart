import 'package:bloc_clean_architecture/config/app_url.dart';
import 'package:bloc_clean_architecture/data/network/network_api_service.dart';
import 'package:bloc_clean_architecture/model/movie/movie.dart';
import 'package:bloc_clean_architecture/repository/movies/movies_repository.dart';

class MoviesHttpApiRepository implements Moviesrepository {
  final _api = NetworkApiService();
  @override
  Future<MovieModel> fetchMoviesList() async {
   final response = await _api.getApi(AppUrl.moviesUrl);
   return MovieModel.fromJson(response);
  }
}
