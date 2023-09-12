// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:proschool/features/proschool/data/models/response/article_response_model.dart';
import 'package:proschool/theme/colors.dart';
import 'package:proschool/theme/spacing.dart';
import 'package:proschool/theme/textstyle.dart';
import 'package:flutter_html/flutter_html.dart';

class ArticleDetailPage extends StatefulWidget {
  final Datum article;
  const ArticleDetailPage({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  State<ArticleDetailPage> createState() => _ArticleDetailPageState();
}

class _ArticleDetailPageState extends State<ArticleDetailPage> {
  @override
  void initState() {
    print(widget.article.toJson());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Proschool Insight',
          style: ProschoolTS.blackMedium.copyWith(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: BoxDecoration(
                    color: ProschoolColor.primary,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: FadeInImage(
                    placeholder: const AssetImage('assets/images/img_logo.png'),
                    image: NetworkImage(widget.article.image!),
                    imageErrorBuilder: (context, error, stackTrace) {
                      return Image.asset('assets/images/img_logo.png');
                    },
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ProschoolSpacing.height14,
              Text(
                widget.article.title!,
                style: ProschoolTS.blackSemiBold.copyWith(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              ProschoolSpacing.height14,
              Html(
                data: widget.article.content,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
