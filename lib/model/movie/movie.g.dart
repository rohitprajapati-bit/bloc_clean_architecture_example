// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => _MovieModel(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 0,
  pages: (json['pages'] as num?)?.toInt() ?? 0,
  tvShows:
      (json['tv_shows'] as List<dynamic>?)
          ?.map((e) => TvShow.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$MovieModelToJson(_MovieModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'pages': instance.pages,
      'tv_shows': instance.tvShows,
    };

_TvShow _$TvShowFromJson(Map<String, dynamic> json) => _TvShow(
  name: json['name'] as String? ?? '',
  permalink: json['permalink'] as String? ?? '',
  endDate: json['end_date'] as String? ?? '',
  startDate: json['start_date'] as String? ?? '',
  network: json['network'] as String? ?? '',
  imageThumbnailPath: json['image_thumbnail_path'] as String? ?? '',
  status: json['status'] as String? ?? '',
);

Map<String, dynamic> _$TvShowToJson(_TvShow instance) => <String, dynamic>{
  'name': instance.name,
  'permalink': instance.permalink,
  'end_date': instance.endDate,
  'start_date': instance.startDate,
  'network': instance.network,
  'image_thumbnail_path': instance.imageThumbnailPath,
  'status': instance.status,
};
