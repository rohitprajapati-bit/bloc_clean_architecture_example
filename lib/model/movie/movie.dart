import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
abstract class MovieModel with _$MovieModel {
  factory MovieModel({
    @Default('') String total,
    @Default(0) int page,
    @Default(0) int pages,
    @Default([]) @JsonKey(name: 'tv_shows') List<TvShow> tvShows,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

@freezed
abstract class TvShow with _$TvShow {
  factory TvShow({
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'permalink') @Default('') String permalink,
    @JsonKey(name: 'end_date') @Default('') String endDate,
    @JsonKey(name: 'start_date') @Default('') String startDate,
    @JsonKey(name: 'network') @Default('') String network,
    @JsonKey(name: 'image_thumbnail_path')
    @Default('')
    String imageThumbnailPath,
    @JsonKey(name: 'status') @Default('') String status,
  }) = _TvShow;

  factory TvShow.fromJson(Map<String, dynamic> json) => _$TvShowFromJson(json);
}
