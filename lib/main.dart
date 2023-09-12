import 'package:alarmplayer/alarmplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proschool/features/cbt/bloc/alarm_bloc.dart';
import 'package:proschool/features/cbt/bloc/cbt_bloc.dart';
import 'package:proschool/features/identificate/data/models/response/school_token_response_model.dart';
import 'package:proschool/features/identificate/data/repositories/school_repositories.dart';
import 'package:proschool/features/identificate/presentation/bloc/identificate_bloc.dart';
import 'package:proschool/features/proschool/presentation/bloc/check_token/check_token_bloc.dart';
import 'package:proschool/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:proschool/router/router.dart';
import 'package:proschool/theme/themedata.dart';

import 'features/proschool/data/repositories/article_repositories.dart';
import 'features/proschool/presentation/bloc/article_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SplashBloc()),
        BlocProvider(create: (context) => ArticleBloc(ArticleRepository())),
        BlocProvider(create: (context) => IdentificateBloc(SchoolRepositories(), SchoolTokenResponseModel())),
        BlocProvider(create: (context) => CbtBloc()),
        BlocProvider(create: (context) => AlarmBloc(Alarmplayer())),
        BlocProvider(create: (context) => CheckTokenBloc(SchoolTokenResponseModel())),
      ],
      child: MaterialApp.router(
        title: 'Proschool',
        debugShowCheckedModeBanner: false,
        theme: ProschoolTheme.defaultTheme,
        routerConfig: router,
      ),
    );
  }
}
