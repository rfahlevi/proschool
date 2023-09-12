part of 'article_bloc.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState.initial() = _Initial;
  const factory ArticleState.loading() = _Loading;
  const factory ArticleState.success({required ArticleResponseModel articles}) = _Success;
  const factory ArticleState.error({required String error}) = _Error;
}
