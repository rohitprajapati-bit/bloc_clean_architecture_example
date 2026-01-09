// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieModel {

 String get total; int get page; int get pages;@JsonKey(name: 'tv_shows') List<TvShow> get tvShows;
/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieModelCopyWith<MovieModel> get copyWith => _$MovieModelCopyWithImpl<MovieModel>(this as MovieModel, _$identity);

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieModel&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.pages, pages) || other.pages == pages)&&const DeepCollectionEquality().equals(other.tvShows, tvShows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,pages,const DeepCollectionEquality().hash(tvShows));

@override
String toString() {
  return 'MovieModel(total: $total, page: $page, pages: $pages, tvShows: $tvShows)';
}


}

/// @nodoc
abstract mixin class $MovieModelCopyWith<$Res>  {
  factory $MovieModelCopyWith(MovieModel value, $Res Function(MovieModel) _then) = _$MovieModelCopyWithImpl;
@useResult
$Res call({
 String total, int page, int pages,@JsonKey(name: 'tv_shows') List<TvShow> tvShows
});




}
/// @nodoc
class _$MovieModelCopyWithImpl<$Res>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._self, this._then);

  final MovieModel _self;
  final $Res Function(MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? pages = null,Object? tvShows = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,tvShows: null == tvShows ? _self.tvShows : tvShows // ignore: cast_nullable_to_non_nullable
as List<TvShow>,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieModel].
extension MovieModelPatterns on MovieModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieModel value)  $default,){
final _that = this;
switch (_that) {
case _MovieModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieModel value)?  $default,){
final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String total,  int page,  int pages, @JsonKey(name: 'tv_shows')  List<TvShow> tvShows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that.total,_that.page,_that.pages,_that.tvShows);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String total,  int page,  int pages, @JsonKey(name: 'tv_shows')  List<TvShow> tvShows)  $default,) {final _that = this;
switch (_that) {
case _MovieModel():
return $default(_that.total,_that.page,_that.pages,_that.tvShows);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String total,  int page,  int pages, @JsonKey(name: 'tv_shows')  List<TvShow> tvShows)?  $default,) {final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that.total,_that.page,_that.pages,_that.tvShows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieModel implements MovieModel {
   _MovieModel({this.total = '', this.page = 0, this.pages = 0, @JsonKey(name: 'tv_shows') final  List<TvShow> tvShows = const []}): _tvShows = tvShows;
  factory _MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);

@override@JsonKey() final  String total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int pages;
 final  List<TvShow> _tvShows;
@override@JsonKey(name: 'tv_shows') List<TvShow> get tvShows {
  if (_tvShows is EqualUnmodifiableListView) return _tvShows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tvShows);
}


/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieModelCopyWith<_MovieModel> get copyWith => __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieModel&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.pages, pages) || other.pages == pages)&&const DeepCollectionEquality().equals(other._tvShows, _tvShows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,pages,const DeepCollectionEquality().hash(_tvShows));

@override
String toString() {
  return 'MovieModel(total: $total, page: $page, pages: $pages, tvShows: $tvShows)';
}


}

/// @nodoc
abstract mixin class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(_MovieModel value, $Res Function(_MovieModel) _then) = __$MovieModelCopyWithImpl;
@override @useResult
$Res call({
 String total, int page, int pages,@JsonKey(name: 'tv_shows') List<TvShow> tvShows
});




}
/// @nodoc
class __$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(this._self, this._then);

  final _MovieModel _self;
  final $Res Function(_MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? pages = null,Object? tvShows = null,}) {
  return _then(_MovieModel(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,tvShows: null == tvShows ? _self._tvShows : tvShows // ignore: cast_nullable_to_non_nullable
as List<TvShow>,
  ));
}


}


/// @nodoc
mixin _$TvShow {

@JsonKey(name: 'name') String get name;@JsonKey(name: 'permalink') String get permalink;@JsonKey(name: 'end_date') String get endDate;@JsonKey(name: 'start_date') String get startDate;@JsonKey(name: 'network') String get network;@JsonKey(name: 'image_thumbnail_path') String get imageThumbnailPath;@JsonKey(name: 'status') String get status;
/// Create a copy of TvShow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvShowCopyWith<TvShow> get copyWith => _$TvShowCopyWithImpl<TvShow>(this as TvShow, _$identity);

  /// Serializes this TvShow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvShow&&(identical(other.name, name) || other.name == name)&&(identical(other.permalink, permalink) || other.permalink == permalink)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.network, network) || other.network == network)&&(identical(other.imageThumbnailPath, imageThumbnailPath) || other.imageThumbnailPath == imageThumbnailPath)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,permalink,endDate,startDate,network,imageThumbnailPath,status);

@override
String toString() {
  return 'TvShow(name: $name, permalink: $permalink, endDate: $endDate, startDate: $startDate, network: $network, imageThumbnailPath: $imageThumbnailPath, status: $status)';
}


}

/// @nodoc
abstract mixin class $TvShowCopyWith<$Res>  {
  factory $TvShowCopyWith(TvShow value, $Res Function(TvShow) _then) = _$TvShowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'permalink') String permalink,@JsonKey(name: 'end_date') String endDate,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'network') String network,@JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath,@JsonKey(name: 'status') String status
});




}
/// @nodoc
class _$TvShowCopyWithImpl<$Res>
    implements $TvShowCopyWith<$Res> {
  _$TvShowCopyWithImpl(this._self, this._then);

  final TvShow _self;
  final $Res Function(TvShow) _then;

/// Create a copy of TvShow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? permalink = null,Object? endDate = null,Object? startDate = null,Object? network = null,Object? imageThumbnailPath = null,Object? status = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permalink: null == permalink ? _self.permalink : permalink // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as String,imageThumbnailPath: null == imageThumbnailPath ? _self.imageThumbnailPath : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TvShow].
extension TvShowPatterns on TvShow {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvShow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvShow() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvShow value)  $default,){
final _that = this;
switch (_that) {
case _TvShow():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvShow value)?  $default,){
final _that = this;
switch (_that) {
case _TvShow() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'permalink')  String permalink, @JsonKey(name: 'end_date')  String endDate, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'network')  String network, @JsonKey(name: 'image_thumbnail_path')  String imageThumbnailPath, @JsonKey(name: 'status')  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvShow() when $default != null:
return $default(_that.name,_that.permalink,_that.endDate,_that.startDate,_that.network,_that.imageThumbnailPath,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'permalink')  String permalink, @JsonKey(name: 'end_date')  String endDate, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'network')  String network, @JsonKey(name: 'image_thumbnail_path')  String imageThumbnailPath, @JsonKey(name: 'status')  String status)  $default,) {final _that = this;
switch (_that) {
case _TvShow():
return $default(_that.name,_that.permalink,_that.endDate,_that.startDate,_that.network,_that.imageThumbnailPath,_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'permalink')  String permalink, @JsonKey(name: 'end_date')  String endDate, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'network')  String network, @JsonKey(name: 'image_thumbnail_path')  String imageThumbnailPath, @JsonKey(name: 'status')  String status)?  $default,) {final _that = this;
switch (_that) {
case _TvShow() when $default != null:
return $default(_that.name,_that.permalink,_that.endDate,_that.startDate,_that.network,_that.imageThumbnailPath,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TvShow implements TvShow {
   _TvShow({@JsonKey(name: 'name') this.name = '', @JsonKey(name: 'permalink') this.permalink = '', @JsonKey(name: 'end_date') this.endDate = '', @JsonKey(name: 'start_date') this.startDate = '', @JsonKey(name: 'network') this.network = '', @JsonKey(name: 'image_thumbnail_path') this.imageThumbnailPath = '', @JsonKey(name: 'status') this.status = ''});
  factory _TvShow.fromJson(Map<String, dynamic> json) => _$TvShowFromJson(json);

@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'permalink') final  String permalink;
@override@JsonKey(name: 'end_date') final  String endDate;
@override@JsonKey(name: 'start_date') final  String startDate;
@override@JsonKey(name: 'network') final  String network;
@override@JsonKey(name: 'image_thumbnail_path') final  String imageThumbnailPath;
@override@JsonKey(name: 'status') final  String status;

/// Create a copy of TvShow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvShowCopyWith<_TvShow> get copyWith => __$TvShowCopyWithImpl<_TvShow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TvShowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvShow&&(identical(other.name, name) || other.name == name)&&(identical(other.permalink, permalink) || other.permalink == permalink)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.network, network) || other.network == network)&&(identical(other.imageThumbnailPath, imageThumbnailPath) || other.imageThumbnailPath == imageThumbnailPath)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,permalink,endDate,startDate,network,imageThumbnailPath,status);

@override
String toString() {
  return 'TvShow(name: $name, permalink: $permalink, endDate: $endDate, startDate: $startDate, network: $network, imageThumbnailPath: $imageThumbnailPath, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TvShowCopyWith<$Res> implements $TvShowCopyWith<$Res> {
  factory _$TvShowCopyWith(_TvShow value, $Res Function(_TvShow) _then) = __$TvShowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'permalink') String permalink,@JsonKey(name: 'end_date') String endDate,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'network') String network,@JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath,@JsonKey(name: 'status') String status
});




}
/// @nodoc
class __$TvShowCopyWithImpl<$Res>
    implements _$TvShowCopyWith<$Res> {
  __$TvShowCopyWithImpl(this._self, this._then);

  final _TvShow _self;
  final $Res Function(_TvShow) _then;

/// Create a copy of TvShow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? permalink = null,Object? endDate = null,Object? startDate = null,Object? network = null,Object? imageThumbnailPath = null,Object? status = null,}) {
  return _then(_TvShow(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permalink: null == permalink ? _self.permalink : permalink // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as String,imageThumbnailPath: null == imageThumbnailPath ? _self.imageThumbnailPath : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
