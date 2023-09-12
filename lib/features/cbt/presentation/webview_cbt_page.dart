import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:proschool/features/cbt/bloc/alarm_bloc.dart';
import 'package:proschool/features/cbt/bloc/cbt_bloc.dart';
import 'package:proschool/theme/colors.dart';
import 'package:proschool/theme/spacing.dart';
import 'package:proschool/theme/textstyle.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../router/router.dart';
import '../../identificate/presentation/bloc/identificate_bloc.dart';
import '../../proschool/data/datasources/scanqr_datasource.dart';
import '../../proschool/presentation/bloc/check_token/check_token_bloc.dart';

class WebviewCBTPage extends StatefulWidget {
  const WebviewCBTPage({super.key});

  @override
  State<WebviewCBTPage> createState() => _WebviewCBTPageState();
}

class _WebviewCBTPageState extends State<WebviewCBTPage> {
  WebViewController? _controller;
  TextEditingController? leaveCodeC;

  @override
  void initState() {
    var school = BlocProvider.of<IdentificateBloc>(context, listen: false).school;
    var localData = BlocProvider.of<CheckTokenBloc>(context, listen: false).schoolData;

    leaveCodeC = TextEditingController();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('${school.data?.url ?? localData.data?.url}/panel/elearning/lms/')) {
              return NavigationDecision.navigate;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('${school.data?.url ?? localData.data?.url}/panel/elearning/lms/'));
    super.initState();
  }

  @override
  void dispose() {
    leaveCodeC?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var school = context.watch<IdentificateBloc>().school;
    var localData = context.watch<CheckTokenBloc>().schoolData;

    return Scaffold(
      backgroundColor: ProschoolColor.white,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 14),
              child: WebViewWidget(controller: _controller!),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => context.read<AlarmBloc>().add(const AlarmEvent.playAlarmEvent()),
                  onVerticalDragEnd: (details) {
                    context.read<AlarmBloc>().add(const AlarmEvent.playAlarmEvent());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 14,
                    decoration: BoxDecoration(
                      color: Colors.red.withAlpha(100),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 35,
                            child: ElevatedButton(
                              onPressed: () => _controller?.reload(),
                              child: Row(
                                children: [
                                  Icon(
                                    MdiIcons.reload,
                                    color: ProschoolColor.white,
                                  ),
                                  ProschoolSpacing.width7,
                                  Text(
                                    'Refresh',
                                    style: ProschoolTS.whiteMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Center(
                                        child: Text(
                                          'Pilih Cara Keluar',
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
                                                        'Input Kode Keluar CBT',
                                                        style: ProschoolTS.blackMedium.copyWith(fontSize: 16),
                                                      ),
                                                    ),
                                                    content: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      children: [
                                                        SizedBox(
                                                          height: 45,
                                                          child: TextField(
                                                            controller: leaveCodeC,
                                                            onSubmitted: (value) {
                                                              if (school.data?.cbtKeluar == value ||
                                                                  localData.data?.cbtKeluar == value) {
                                                                context
                                                                    .read<CbtBloc>()
                                                                    .add(const CbtEvent.unlockScreen());
                                                                context
                                                                    .read<AlarmBloc>()
                                                                    .add(const AlarmEvent.correctAlarm());
                                                                context.pushReplacementNamed(Routes.dashboard);
                                                                leaveCodeC?.clear();
                                                              } else {
                                                                context.pop();
                                                                leaveCodeC?.clear();
                                                                ScaffoldMessenger.of(context)
                                                                    .showSnackBar(SnackBar(
                                                                      shape: RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.circular(7),
                                                                      ),
                                                                      content: Text(
                                                                        'Kode Keluar CBT salah !',
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
                                                                  'Kode Keluar CBT',
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
                                                              if (school.data?.cbtKeluar == leaveCodeC?.text ||
                                                                  localData.data?.cbtKeluar == leaveCodeC?.text) {
                                                                context
                                                                    .read<CbtBloc>()
                                                                    .add(const CbtEvent.unlockScreen());
                                                                context
                                                                    .read<AlarmBloc>()
                                                                    .add(const AlarmEvent.correctAlarm());
                                                                context.pushReplacementNamed(Routes.dashboard);
                                                                context.pop();
                                                                leaveCodeC?.clear();
                                                              } else {
                                                                context.pop();
                                                                leaveCodeC?.clear();
                                                                ScaffoldMessenger.of(context)
                                                                    .showSnackBar(SnackBar(
                                                                      shape: RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.circular(7),
                                                                      ),
                                                                      content: Text(
                                                                        'Kode keluar CBT salah !',
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
                                                if (school.data?.cbtKeluar == value ||
                                                    localData.data?.cbtKeluar == value) {
                                                  context.read<AlarmBloc>().add(const AlarmEvent.correctAlarm());
                                                  context.read<CbtBloc>().add(const CbtEvent.unlockScreen());
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
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    MdiIcons.check,
                                    color: ProschoolColor.white,
                                  ),
                                  ProschoolSpacing.width7,
                                  Text(
                                    'Selesai',
                                    style: ProschoolTS.whiteMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context.read<AlarmBloc>().add(const AlarmEvent.playAlarmEvent()),
                      onVerticalDragEnd: (details) {
                        context.read<AlarmBloc>().add(const AlarmEvent.playAlarmEvent());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 14,
                        decoration: BoxDecoration(
                          color: Colors.red.withAlpha(100),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => context.read<AlarmBloc>().add(const AlarmEvent.playAlarmEvent()),
                  onHorizontalDragEnd: (details) {
                    context.read<AlarmBloc>().add(const AlarmEvent.playAlarmEvent());
                  },
                  child: Container(
                    width: 14,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.red.withAlpha(100),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => context.read<AlarmBloc>().add(const AlarmEvent.playAlarmEvent()),
                  onHorizontalDragEnd: (details) {
                    context.read<AlarmBloc>().add(const AlarmEvent.playAlarmEvent());
                  },
                  child: Container(
                    width: 14,
                    height: MediaQuery.of(context).size.height - 28,
                    decoration: BoxDecoration(
                      color: Colors.red.withAlpha(100),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
