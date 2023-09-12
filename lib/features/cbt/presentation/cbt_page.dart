import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:go_router/go_router.dart';
import 'package:proschool/features/cbt/bloc/cbt_bloc.dart';
import 'package:proschool/features/cbt/presentation/webview_cbt_page.dart';
import 'package:proschool/router/router.dart';
import 'package:proschool/theme/colors.dart';
import 'package:proschool/theme/spacing.dart';
import 'package:proschool/theme/textstyle.dart';

class CBTPage extends StatefulWidget {
  const CBTPage({super.key});

  @override
  State<CBTPage> createState() => _CBTPageState();
}

class _CBTPageState extends State<CBTPage> {
  @override
  void initState() {
    context.read<CbtBloc>().add(const CbtEvent.lockScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CbtBloc, CbtState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {
              SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
            },
            noResponse: () => context.pushReplacementNamed(Routes.dashboard),
            locked: () async {
              SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: []);
              await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Anda sedang dalam mode layar tidak terkunci. Untuk masuk ke halaman ujian, peserta wajib mengunci layar. Apabila sudah selesai ujian, silahkan klik tombol keluar.',
                      textAlign: TextAlign.center,
                      style: ProschoolTS.blackMedium,
                    ),
                    ProschoolSpacing.height14,
                    ElevatedButton(
                      onPressed: () {
                        context.pushReplacementNamed(Routes.dashboard);
                      },
                      child: Text(
                        'Keluar',
                        style: ProschoolTS.whiteMedium,
                      ),
                    ),
                  ],
                ),
              );
            },
            loading: () => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(
                    color: ProschoolColor.primary,
                  ),
                  ProschoolSpacing.height7,
                  Text(
                    'Loading',
                    style: ProschoolTS.blackRegular,
                  )
                ],
              ),
            ),
            noResponse: () {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'NO RESPONSE',
                      style: ProschoolTS.blackMedium,
                    ),
                    ProschoolSpacing.height14,
                    ElevatedButton(
                      onPressed: () {
                        context.read<CbtBloc>().add(const CbtEvent.unlockScreen());
                      },
                      child: Text(
                        'Keluar',
                        style: ProschoolTS.whiteMedium,
                      ),
                    ),
                  ],
                ),
              );
            },
            locked: () {
              return const WebviewCBTPage();
            },
          );
        },
      ),
    );
  }
}
