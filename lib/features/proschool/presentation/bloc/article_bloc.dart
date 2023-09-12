// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/response/article_response_model.dart';
import '../../data/repositories/article_repositories.dart';
part 'article_bloc.freezed.dart';
part 'article_event.dart';
part 'article_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleRepository articleRepository;
  ArticleBloc(
    this.articleRepository,
  ) : super(const _Initial()) {
    on<_GetAll>((event, emit) async {
      emit(const ArticleState.loading());
      try {
        var result = await articleRepository.getArticles();

        result.fold(
            (error) => emit(ArticleState.error(error: error)), (data) => emit(ArticleState.success(articles: data)));
      } catch (e) {
        emit(ArticleState.error(error: e.toString()));
      }
    });
  }
}
