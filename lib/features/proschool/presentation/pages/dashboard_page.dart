import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:proschool/const.dart';
import 'package:proschool/features/cbt/bloc/alarm_bloc.dart';
import 'package:proschool/features/identificate/data/models/response/school_token_response_model.dart';
import 'package:proschool/features/proschool/data/datasources/scanqr_datasource.dart';
import 'package:proschool/features/proschool/presentation/bloc/check_token/check_token_bloc.dart';
import 'package:proschool/router/router.dart';
import 'package:proschool/theme/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../theme/spacing.dart';
import '../../../../theme/textstyle.dart';
import '../../../identificate/presentation/bloc/identificate_bloc.dart';
import '../bloc/article_bloc.dart';
import '../widgets/loading.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  TextEditingController? entryCodeC;
  List<String> promoItem = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
  ];

  @override
  void initState() {
    entryCodeC = TextEditingController();
    context.read<ArticleBloc>().add(const ArticleEvent.getAll());
    super.initState();
  }

  @override
  void dispose() {
    entryCodeC?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var school = context.watch<IdentificateBloc>().school;
    var localData = context.watch<CheckTokenBloc>().schoolData;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProschoolSpacing.height14,
              logo(school: school, localData: localData),
              ProschoolSpacing.height14,
              schoolFeatures(
                context: context,
                school: school,
                localData: localData,
              ),
              Divider(
                color: ProschoolColor.border.withAlpha(40),
                thickness: 14,
              ),
              moreFeatures(
                context: context,
                school: school,
                localData: localData,
              ),
              Divider(
                color: ProschoolColor.border.withAlpha(40),
                thickness: 14,
              ),
              promotions(school: school, localData: localData),
              Divider(
                color: ProschoolColor.border.withAlpha(40),
                thickness: 14,
              ),
              insight(),
              ProschoolSpacing.height24,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                child: BlocBuilder<CheckTokenBloc, CheckTokenState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return ElevatedButton(
                            onPressed: () async {
                              context.read<CheckTokenBloc>().add(const CheckTokenEvent.logout());
                              Future.delayed(
                                const Duration(seconds: 1),
                                () => context.pushReplacementNamed(Routes.splash),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ProschoolColor.white,
                              side: BorderSide(color: Colors.red.withAlpha(100)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  MdiIcons.logout,
                                  color: Colors.red,
                                ),
                                ProschoolSpacing.width7,
                                Text(
                                  'Keluar',
                                  style: ProschoolTS.blackMedium.copyWith(
                                    fontSize: 14,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ));
                      },
                      loading: () {
                        return ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ProschoolColor.white,
                              side: BorderSide(color: Colors.red.withAlpha(100)),
                            ),
                            child: const LoadingCircular(label: 'Loading'));
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column logo({required SchoolTokenResponseModel school, required SchoolTokenResponseModel localData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   'assets/images/img_logo.png',
            //   width: 30,
            //   height: 30,
            // ),
            // ProschoolSpacing.width7,
            Text(
              'ProSchool',
              style: ProschoolTS.blackMedium,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              localData.data?.logoUrl ??
                  school.data?.logoUrl ??
                  'https://proschool.id/resource/proschool_icon/proschools.jpeg',
              width: 30,
              height: 30,
            ),
            ProschoolSpacing.width7,
            Text(
              localData.data?.name ?? school.data!.name!,
              style: ProschoolTS.blackSemiBold.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }

  Padding insight() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: BlocBuilder<ArticleBloc, ArticleState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const LoadingCircular(label: 'Sedang memuat Insight..'),
            loading: () => const LoadingCircular(label: 'Sedang memuat Insight..'),
            success: (articles) {
              return Column(
                children: [
                  ListTile(
                    onTap: () {
                      context.goNamed(Routes.article);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    minVerticalPadding: 0,
                    title: Text(
                      'Insight',
                      style: ProschoolTS.blackSemiBold.copyWith(fontSize: 14),
                    ),
                    subtitle: Text(
                      'Ayo jelajahi dunia dengan membaca',
                      style: ProschoolTS.greyRegular.copyWith(fontSize: 14),
                    ),
                    trailing: Icon(
                      MdiIcons.chevronRight,
                      color: ProschoolColor.primary,
                      size: 30,
                    ),
                  ),
                  ListView.builder(
                    itemCount: articles.data?.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () => context.pushNamed(Routes.articleDetail, extra: articles.data![index]),
                        contentPadding: const EdgeInsets.fromLTRB(0, 7, 7, 7),
                        horizontalTitleGap: 7,
                        titleAlignment: ListTileTitleAlignment.top,
                        minVerticalPadding: 0,
                        leading: Container(
                          width: 80,
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ProschoolColor.border,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: FadeInImage(
                              placeholder: const AssetImage('assets/images/img_logo.png'),
                              image: NetworkImage(articles.data![index].image!),
                              imageErrorBuilder: (context, error, stackTrace) {
                                return Icon(MdiIcons.alert);
                              },
                            ),
                          ),
                        ),
                        title: Text(
                          articles.data![index].title!,
                          style: ProschoolTS.blackMedium.copyWith(fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          articles.data![index].description!,
                          style: ProschoolTS.greyRegular.copyWith(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      );
                    },
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }

  Padding promotions({required SchoolTokenResponseModel? school, required SchoolTokenResponseModel? localData}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          ListTile(
            onTap: () async {
              if (!await launchUrl(
                Uri.parse(
                  'https://proschool.id',
                ),
                mode: LaunchMode.inAppWebView,
              )) {
                throw Exception("Could Not Launch Url");
              }
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            dense: true,
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 0,
            title: Text(
              'Promo',
              style: ProschoolTS.blackSemiBold.copyWith(fontSize: 14),
            ),
            subtitle: Text(
              'Dapatkan promo menarik dari Proschool',
              style: ProschoolTS.greyRegular.copyWith(fontSize: 14),
            ),
            trailing: Icon(
              MdiIcons.chevronRight,
              color: ProschoolColor.primary,
              size: 30,
            ),
          ),
          AspectRatio(
            aspectRatio: 6 / 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: promoItem.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        if (!await launchUrl(
                          Uri.parse(
                            'https://proschool.id',
                          ),
                          mode: LaunchMode.inAppWebView,
                        )) {
                          throw Exception("Could Not Launch Url");
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: FadeInImage(
                          placeholder: const AssetImage('assets/icons/ic_loading.gif'),
                          image: AssetImage(
                            promoItem[index],
                          ),
                        ),
                      ),
                    ),
                    ProschoolSpacing.width7
                  ],
                );
              },
            ),
          ),
          ProschoolSpacing.height14,
        ],
      ),
    );
  }

  Padding schoolFeatures(
      {required BuildContext context,
      required SchoolTokenResponseModel? school,
      required SchoolTokenResponseModel? localData}) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fitur Sekolahmu',
            style: ProschoolTS.blackSemiBold,
          ),
          ProschoolSpacing.height14,
          school?.data == null
              ? GridView.count(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  mainAxisSpacing: 14,
                  childAspectRatio: 1.4,
                  children: localData!.data!.menuTop!
                      .map((e) => InkWell(
                            onTap: () async {
                              if (Platform.isAndroid) {
                                if (e.name == 'CBT') {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Center(
                                          child: Text(
                                            'Pilih Cara Masuk',
                                            style: ProschoolTS.blackMedium.copyWith(fontSize: 16),
                                          ),
                                        ),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                context.pop();
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      title: Center(
                                                        child: Text(
                                                          'Input Kode Masuk CBT',
                                                          style: ProschoolTS.blackMedium.copyWith(fontSize: 16),
                                                        ),
                                                      ),
                                                      content: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        children: [
                                                          SizedBox(
                                                            height: 45,
                                                            child: TextField(
                                                              controller: entryCodeC,
                                                              onSubmitted: (value) {
                                                                if (localData.data?.cbtMasuk == value) {
                                                                  context
                                                                      .read<AlarmBloc>()
                                                                      .add(const AlarmEvent.correctAlarm());
                                                                  context.pushReplacementNamed(Routes.cbt);
                                                                  entryCodeC?.clear();
                                                                } else {
                                                                  context.pop();
                                                                  entryCodeC?.clear();
                                                                  ScaffoldMessenger.of(context)
                                                                      .showSnackBar(SnackBar(
                                                                        shape: RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.circular(7),
                                                                        ),
                                                                        content: Text(
                                                                          'Kode CBT salah !',
                                                                          style: ProschoolTS.whiteMedium.copyWith(
                                                                            color: Colors.red,
                                                                          ),
                                                                        ),
                                                                        elevation: 0,
                                                                        behavior: SnackBarBehavior.floating,
                                                                        margin: EdgeInsets.only(
                                                                          bottom:
                                                                              MediaQuery.of(context).size.height / 1.2,
                                                                          left: 14,
                                                                          right: 14,
                                                                        ),
                                                                        duration: const Duration(seconds: 3),
                                                                        backgroundColor: Colors.red.withAlpha(40),
                                                                      ))
                                                                      .close;
                                                                }
                                                              },
                                                              decoration: InputDecoration(
                                                                  isDense: true,
                                                                  border: OutlineInputBorder(
                                                                    borderSide: const BorderSide(
                                                                      color: ProschoolColor.border,
                                                                    ),
                                                                    borderRadius: BorderRadius.circular(7),
                                                                  ),
                                                                  label: Text(
                                                                    'Kode Masuk CBT',
                                                                    style: ProschoolTS.greyRegular.copyWith(
                                                                      fontSize: 14,
                                                                      height: 1,
                                                                    ),
                                                                  )),
                                                            ),
                                                          ),
                                                          ProschoolSpacing.height14,
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                if (localData.data?.cbtMasuk == entryCodeC?.text) {
                                                                  context
                                                                      .read<AlarmBloc>()
                                                                      .add(const AlarmEvent.correctAlarm());
                                                                  context.pushReplacementNamed(Routes.cbt);
                                                                  context.pop();
                                                                  entryCodeC?.clear();
                                                                } else {
                                                                  context.pop();
                                                                  entryCodeC?.clear();
                                                                  ScaffoldMessenger.of(context)
                                                                      .showSnackBar(SnackBar(
                                                                        shape: RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.circular(7),
                                                                        ),
                                                                        content: Text(
                                                                          'Kode CBT salah !',
                                                                          style: ProschoolTS.whiteMedium.copyWith(
                                                                            color: Colors.red,
                                                                          ),
                                                                        ),
                                                                        elevation: 0,
                                                                        behavior: SnackBarBehavior.floating,
                                                                        margin: EdgeInsets.only(
                                                                          bottom:
                                                                              MediaQuery.of(context).size.height / 1.2,
                                                                          left: 14,
                                                                          right: 14,
                                                                        ),
                                                                        duration: const Duration(seconds: 3),
                                                                        backgroundColor: Colors.red.withAlpha(40),
                                                                      ))
                                                                      .close;
                                                                }
                                                              },
                                                              child: Text(
                                                                'Verifikasi',
                                                                style: ProschoolTS.whiteMedium.copyWith(fontSize: 14),
                                                              ))
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Text(
                                                'Input Kode CBT',
                                                style: ProschoolTS.whiteMedium.copyWith(fontSize: 14),
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                ProschoolScan.loginCbt().then((value) {
                                                  if (localData.data?.cbtMasuk == value) {
                                                    context.read<AlarmBloc>().add(const AlarmEvent.correctAlarm());
                                                    context.pushReplacementNamed(Routes.cbt);
                                                  }
                                                });
                                              },
                                              child: Text(
                                                'Scan Kode CBT',
                                                style: ProschoolTS.whiteMedium.copyWith(fontSize: 14),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                } else {
                                  ProschoolTWA.channel('${localData.data?.url}${e.url}');
                                }
                              } else {
                                if (!await launchUrl(
                                  Uri.parse(
                                    '${localData.data?.url}${e.url}',
                                  ),
                                  mode: LaunchMode.inAppWebView,
                                )) {
                                  throw Exception("Could Not Launch Url");
                                }
                              }
                            },
                            highlightColor: ProschoolColor.primary.withAlpha(20),
                            splashColor: ProschoolColor.primary.withAlpha(20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  e.icon!,
                                  width: 30,
                                  height: 30,
                                ),
                                ProschoolSpacing.height7,
                                Text(e.name!, style: ProschoolTS.blackMedium.copyWith(fontSize: 12)),
                              ],
                            ),
                          ))
                      .toList(),
                )
              : BlocBuilder<IdentificateBloc, IdentificateState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const SizedBox(),
                      success: (school) {
                        return GridView.count(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 4,
                          mainAxisSpacing: 12,
                          childAspectRatio: 1.4,
                          children: school.data!.menuTop!
                              .map((e) => InkWell(
                                    onTap: () async {
                                      if (Platform.isAndroid) {
                                        if (e.name == 'CBT') {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Center(
                                                  child: Text(
                                                    'Pilih Cara Masuk',
                                                    style: ProschoolTS.blackMedium.copyWith(fontSize: 16),
                                                  ),
                                                ),
                                                content: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        context.pop();
                                                        showDialog(
                                                          context: context,
                                                          builder: (context) {
                                                            return AlertDialog(
                                                              title: Center(
                                                                child: Text(
                                                                  'Input Kode Masuk CBT',
                                                                  style: ProschoolTS.blackMedium.copyWith(fontSize: 16),
                                                                ),
                                                              ),
                                                              content: Column(
                                                                mainAxisSize: MainAxisSize.min,
                                                                children: [
                                                                  SizedBox(
                                                                    height: 45,
                                                                    child: TextField(
                                                                      controller: entryCodeC,
                                                                      onSubmitted: (value) {
                                                                        if (school.data?.cbtMasuk == value) {
                                                                          context
                                                                              .read<AlarmBloc>()
                                                                              .add(const AlarmEvent.correctAlarm());
                                                                          context.pushReplacementNamed(Routes.cbt);
                                                                          entryCodeC?.clear();
                                                                        } else {
                                                                          context.pop();
                                                                          entryCodeC?.clear();
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(SnackBar(
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius:
                                                                                      BorderRadius.circular(7),
                                                                                ),
                                                                                content: Text(
                                                                                  'Kode CBT salah !',
                                                                                  style:
                                                                                      ProschoolTS.whiteMedium.copyWith(
                                                                                    color: Colors.red,
                                                                                  ),
                                                                                ),
                                                                                elevation: 0,
                                                                                behavior: SnackBarBehavior.floating,
                                                                                margin: EdgeInsets.only(
                                                                                  bottom: MediaQuery.of(context)
                                                                                          .size
                                                                                          .height /
                                                                                      1.2,
                                                                                  left: 14,
                                                                                  right: 14,
                                                                                ),
                                                                                duration: const Duration(seconds: 3),
                                                                                backgroundColor:
                                                                                    Colors.red.withAlpha(40),
                                                                              ))
                                                                              .close;
                                                                        }
                                                                      },
                                                                      decoration: InputDecoration(
                                                                          isDense: true,
                                                                          border: OutlineInputBorder(
                                                                            borderSide: const BorderSide(
                                                                              color: ProschoolColor.border,
                                                                            ),
                                                                            borderRadius: BorderRadius.circular(7),
                                                                          ),
                                                                          label: Text(
                                                                            'Kode Masuk CBT',
                                                                            style: ProschoolTS.greyRegular.copyWith(
                                                                              fontSize: 14,
                                                                              height: 1,
                                                                            ),
                                                                          )),
                                                                    ),
                                                                  ),
                                                                  ProschoolSpacing.height14,
                                                                  ElevatedButton(
                                                                      onPressed: () {
                                                                        if (school.data?.cbtMasuk == entryCodeC?.text) {
                                                                          context
                                                                              .read<AlarmBloc>()
                                                                              .add(const AlarmEvent.correctAlarm());
                                                                          context.pushReplacementNamed(Routes.cbt);
                                                                          context.pop();
                                                                          entryCodeC?.clear();
                                                                        } else {
                                                                          context.pop();
                                                                          entryCodeC?.clear();
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(SnackBar(
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius:
                                                                                      BorderRadius.circular(7),
                                                                                ),
                                                                                content: Text(
                                                                                  'Kode CBT salah !',
                                                                                  style:
                                                                                      ProschoolTS.whiteMedium.copyWith(
                                                                                    color: Colors.red,
                                                                                  ),
                                                                                ),
                                                                                elevation: 0,
                                                                                behavior: SnackBarBehavior.floating,
                                                                                margin: EdgeInsets.only(
                                                                                  bottom: MediaQuery.of(context)
                                                                                          .size
                                                                                          .height /
                                                                                      1.2,
                                                                                  left: 14,
                                                                                  right: 14,
                                                                                ),
                                                                                duration: const Duration(seconds: 3),
                                                                                backgroundColor:
                                                                                    Colors.red.withAlpha(40),
                                                                              ))
                                                                              .close;
                                                                        }
                                                                      },
                                                                      child: Text(
                                                                        'Verifikasi',
                                                                        style: ProschoolTS.whiteMedium
                                                                            .copyWith(fontSize: 14),
                                                                      ))
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                      child: Text(
                                                        'Input Kode CBT',
                                                        style: ProschoolTS.whiteMedium.copyWith(fontSize: 14),
                                                      ),
                                                    ),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        ProschoolScan.loginCbt().then((value) {
                                                          if (school.data?.cbtMasuk == value) {
                                                            context
                                                                .read<AlarmBloc>()
                                                                .add(const AlarmEvent.correctAlarm());
                                                            context.pushReplacementNamed(Routes.cbt);
                                                          }
                                                        });
                                                      },
                                                      child: Text(
                                                        'Scan Kode CBT',
                                                        style: ProschoolTS.whiteMedium.copyWith(fontSize: 14),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        } else {
                                          ProschoolTWA.channel('${school.data?.url}${e.url}');
                                        }
                                      } else {
                                        if (!await launchUrl(
                                          Uri.parse(
                                            '${school.data?.url}${e.url}',
                                          ),
                                          mode: LaunchMode.inAppWebView,
                                        )) {
                                          throw Exception("Could Not Launch Url");
                                        }
                                      }
                                    },
                                    highlightColor: ProschoolColor.primary.withAlpha(20),
                                    splashColor: ProschoolColor.primary.withAlpha(20),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.network(
                                          e.icon!,
                                          width: 30,
                                          height: 30,
                                        ),
                                        ProschoolSpacing.height7,
                                        Text(e.name!, style: ProschoolTS.blackMedium.copyWith(fontSize: 12)),
                                      ],
                                    ),
                                  ))
                              .toList(),
                        );
                      },
                    );
                  },
                ),
        ],
      ),
    );
  }

  Padding moreFeatures(
      {required BuildContext context,
      required SchoolTokenResponseModel school,
      required SchoolTokenResponseModel localData}) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fitur Lain di Proschool',
            style: ProschoolTS.blackSemiBold,
          ),
          ProschoolSpacing.height14,
          school.data == null
              ? localData.data!.menuBottom!.isEmpty
                  ? Text(
                      'Tidak ada. Semua fitur di Proschool sudah dipakai Sekolahmu',
                      style: ProschoolTS.blackRegular,
                    )
                  : GridView.count(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 4,
                      mainAxisSpacing: 14,
                      childAspectRatio: 1.6,
                      children: localData.data!.menuBottom!
                          .map((e) => InkWell(
                                onTap: () async {
                                  if (Platform.isAndroid) {
                                    ProschoolTWA.channel('${localData.data?.url}${e.url}');
                                  } else {
                                    if (!await launchUrl(
                                      Uri.parse(
                                        '${localData.data?.url}${e.url}',
                                      ),
                                      mode: LaunchMode.inAppWebView,
                                    )) {
                                      throw Exception("Could Not Launch Url");
                                    }
                                  }
                                },
                                highlightColor: ProschoolColor.primary.withAlpha(20),
                                splashColor: ProschoolColor.primary.withAlpha(20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      'https://proschool.id/resource/proschool_icon',
                                      width: 30,
                                      height: 30,
                                    ),
                                    ProschoolSpacing.height7,
                                    Expanded(
                                      child: Text(
                                        e.name!,
                                        style: ProschoolTS.blackMedium.copyWith(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                          .toList(),
                    )
              : BlocBuilder<IdentificateBloc, IdentificateState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const SizedBox(),
                      success: (school) {
                        return school.data!.menuBottom!.isEmpty
                            ? Text(
                                'Tidak ada. Semua fitur di Proschool sudah dipakai Sekolahmu',
                                style: ProschoolTS.blackRegular,
                              )
                            : GridView.count(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                crossAxisCount: 4,
                                mainAxisSpacing: 14,
                                childAspectRatio: 1.6,
                                children: school.data!.menuBottom!
                                    .map((e) => InkWell(
                                          onTap: () async {
                                            if (Platform.isAndroid) {
                                              ProschoolTWA.channel('${school.data?.url}${e.url}');
                                            } else {
                                              if (!await launchUrl(
                                                Uri.parse(
                                                  '${school.data?.url}${e.url}',
                                                ),
                                                mode: LaunchMode.inAppWebView,
                                              )) {
                                                throw Exception("Could Not Launch Url");
                                              }
                                            }
                                          },
                                          highlightColor: ProschoolColor.primary.withAlpha(20),
                                          splashColor: ProschoolColor.primary.withAlpha(20),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image.network(
                                                'https://proschool.id/resource/proschool_icon',
                                                width: 30,
                                                height: 30,
                                              ),
                                              ProschoolSpacing.height7,
                                              Expanded(
                                                child: Text(
                                                  e.name!,
                                                  style: ProschoolTS.blackMedium.copyWith(fontSize: 12),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ))
                                    .toList(),
                              );
                      },
                    );
                  },
                ),
        ],
      ),
    );
  }
}
