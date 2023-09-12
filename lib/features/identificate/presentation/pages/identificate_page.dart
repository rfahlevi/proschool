import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:proschool/features/identificate/presentation/bloc/identificate_bloc.dart';
import 'package:proschool/router/router.dart';
import 'package:proschool/theme/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../theme/spacing.dart';
import '../../../../theme/textstyle.dart';

class IdentificatePage extends StatefulWidget {
  const IdentificatePage({super.key});

  @override
  State<IdentificatePage> createState() => _IdentificatePageState();
}

class _IdentificatePageState extends State<IdentificatePage> {
  TextEditingController? schoolTokenC;

  @override
  void initState() {
    schoolTokenC = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    schoolTokenC?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/img_logo.png',
                  width: 50,
                  height: 50,
                ),
                ProschoolSpacing.width7,
                Text(
                  'ProSchool',
                  style: ProschoolTS.blackSemiBold.copyWith(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            ProschoolSpacing.height40,
            Text(
              'Jika Sekolahmu sudah bergabung dengan ProSchool, silahkan masukkan Token Sekolah...',
              style: ProschoolTS.blackMedium,
            ),
            ProschoolSpacing.height14,
            Container(
              height: 50,
              margin: const EdgeInsets.only(bottom: 14),
              child: TextField(
                controller: schoolTokenC,
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                onSubmitted: (_) => context
                    .read<IdentificateBloc>()
                    .add(IdentificateEvent.doIdentificate(schoolToken: schoolTokenC!.text)),
                decoration: InputDecoration(
                  isDense: true,
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: ProschoolColor.border,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: ProschoolColor.primary,
                    ),
                  ),
                  label: Text(
                    'Token Sekolah',
                    style: ProschoolTS.greyRegular.copyWith(
                      height: 1,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ProschoolColor.border,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: BlocConsumer<IdentificateBloc, IdentificateState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    error: (error) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            content: Text(
                              error,
                              style: ProschoolTS.whiteMedium.copyWith(
                                color: Colors.red,
                              ),
                            ),
                            elevation: 0,
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.only(
                              bottom: MediaQuery.of(context).size.height / 1.2,
                              left: 14,
                              right: 14,
                            ),
                            duration: const Duration(seconds: 3),
                            backgroundColor: Colors.red.withAlpha(40),
                          ))
                          .close;
                    },
                    success: (school) {
                      context.goNamed(Routes.dashboard);
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            content: Text(
                              'Selamat datang di Portal ${school.data?.name}',
                              style: ProschoolTS.primaryMedium,
                            ),
                            elevation: 0,
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.only(
                              bottom: MediaQuery.of(context).size.height / 1.2,
                              left: 14,
                              right: 14,
                            ),
                            duration: const Duration(seconds: 3),
                            backgroundColor: ProschoolColor.primary.withAlpha(40),
                          ))
                          .close;
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return ElevatedButton(
                          onPressed: () {
                            context
                                .read<IdentificateBloc>()
                                .add(IdentificateEvent.doIdentificate(schoolToken: schoolTokenC!.text));
                          },
                          child: Text(
                            'Masuk',
                            style: ProschoolTS.whiteMedium.copyWith(fontSize: 16),
                          ));
                    },
                    loading: () {
                      return ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 21,
                                height: 21,
                                margin: const EdgeInsets.only(right: 7),
                                child: const CircularProgressIndicator(
                                  color: ProschoolColor.white,
                                ),
                              ),
                              Text(
                                'Loading..',
                                style: ProschoolTS.whiteMedium,
                              )
                            ],
                          ));
                    },
                  );
                },
              ),
            ),
            ProschoolSpacing.height14,
            Text('atau', style: ProschoolTS.blackRegular),
            ProschoolSpacing.height14,
            Text(
              'Hubungi Tim Marketing Proschool untuk penjelasan lebih lanjut mengenai Proschool',
              style: ProschoolTS.blackRegular,
            ),
            ProschoolSpacing.height14,
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () async {
                    if (!await launchUrl(
                      Uri.parse(
                        "https://wa.me/6281283960337?text=${Uri.encodeFull('Halo, bisa beritahu saya mengenai produk ProSchool..')}",
                      ),
                      mode: LaunchMode.externalApplication,
                    )) {
                      throw Exception("Could Not Launch Url");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ProschoolColor.green.withAlpha(5),
                    side: const BorderSide(color: ProschoolColor.border),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        MdiIcons.whatsapp,
                        color: ProschoolColor.green,
                      ),
                      ProschoolSpacing.width7,
                      Text(
                        'Whatsapp',
                        style: ProschoolTS.blackMedium,
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
