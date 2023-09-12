import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proschool/theme/colors.dart';
import 'package:proschool/theme/textstyle.dart';

import '../bloc/article_bloc.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  @override
  void initState() {
    context.read<ArticleBloc>().add(const ArticleEvent.getAll());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Artikel',
          style: ProschoolTS.blackMedium,
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<ArticleBloc, ArticleState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: ProschoolColor.primary,
              ),
            ),
            success: (articles) {
              return Padding(
                padding: const EdgeInsets.all(14),
                child: ListView.builder(
                  itemCount: articles.data?.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 14),
                      horizontalTitleGap: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                        side: BorderSide(
                          color: ProschoolColor.border.withAlpha(100),
                        ),
                      ),
                      onTap: () {},
                      leading: Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                          color: ProschoolColor.primary,
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      title: Text(
                        articles.data![index].title!,
                        style: ProschoolTS.blackMedium.copyWith(fontSize: 14),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                      ),
                      subtitle: Text(
                        articles.data![index].description!,
                        style: ProschoolTS.greyRegular.copyWith(fontSize: 14),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
