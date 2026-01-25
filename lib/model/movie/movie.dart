import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
abstract class MovieModel with _$MovieModel {
  factory MovieModel({
    @Default(0) int total,
    @Default(0) int page,
    @Default(0) int pages,
    @Default([]) List<TvShow> tvShows,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

@freezed
abstract class TvShow with _$TvShow {
  factory TvShow({
    @Default('') String name,
    @Default('') String permalink,
    @Default('') String endDate,
    @Default('') String startDate,
    @Default('') String network,
    @Default('')
    String imageThumbnailPath,
    @Default('') String status,
  }) = _TvShow;

  factory TvShow.fromJson(Map<String, dynamic> json) => _$TvShowFromJson(json);
}
