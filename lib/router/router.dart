import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proschool/features/cbt/presentation/cbt_page.dart';
import 'package:proschool/features/identificate/presentation/pages/identificate_page.dart';
import 'package:proschool/features/proschool/data/models/response/article_response_model.dart';
import 'package:proschool/features/proschool/presentation/pages/article_detail_page.dart';
import 'package:proschool/features/proschool/presentation/pages/articles_page.dart';
import 'package:proschool/features/splash/presentation/pages/splash_page.dart';
import '../features/proschool/presentation/pages/dashboard_page.dart';
part 'route_name.dart';

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
      name: Routes.splash,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: const SplashPage(),
      ),
    ),
    GoRoute(
      path: '/identificate',
      builder: (context, state) => const IdentificatePage(),
      name: Routes.identificate,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: const IdentificatePage(),
      ),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashboardPage(),
      name: Routes.dashboard,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: const DashboardPage(),
      ),
      routes: [
        GoRoute(
          path: 'articles',
          builder: (context, state) => const ArticlesPage(),
          name: Routes.article,
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const ArticlesPage(),
          ),
        ),
        GoRoute(
          path: 'article-detail',
          builder: (context, state) => ArticleDetailPage(
            article: state.extra as Datum,
          ),
          name: Routes.articleDetail,
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: ArticleDetailPage(article: state.extra as Datum),
          ),
        ),
        GoRoute(
          path: 'cbt',
          builder: (context, state) => const CBTPage(),
          name: Routes.cbt,
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const CBTPage(),
          ),
        ),
        // GoRoute(
        //   path: 'entryqrscan',
        //   builder: (context, state) => const EntryQRScanPage(),
        //   name: Routes.entryqrscan,
        //   pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        //     context: context,
        //     state: state,
        //     child: const EntryQRScanPage(),
        //   ),
        // ),
        // GoRoute(
        //   path: 'outqrscan',
        //   builder: (context, state) => const OutQRScanPage(),
        //   name: Routes.outqrscan,
        //   pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        //     context: context,
        //     state: state,
        //     child: const OutQRScanPage(),
        //   ),
        // ),
      ],
    ),
  ],
);
