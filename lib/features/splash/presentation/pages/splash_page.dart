import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:proschool/features/identificate/data/datasources/local_school_datasource.dart';
import 'package:proschool/features/identificate/data/models/response/school_token_response_model.dart';
import 'package:proschool/features/proschool/presentation/bloc/check_token/check_token_bloc.dart';
import 'package:proschool/router/router.dart';
import 'package:proschool/theme/spacing.dart';
import 'package:proschool/theme/textstyle.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  init() async {
    String data = await IdentificateLocalDatasource().getToken();

    Timer(const Duration(seconds: 3), () {
      data == ''
          ? context.pushReplacementNamed(Routes.identificate)
          : context
              .read<CheckTokenBloc>()
              .add(CheckTokenEvent.doIdentificate(schoolData: SchoolTokenResponseModel.fromJson(jsonDecode(data))));
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CheckTokenBloc, CheckTokenState>(
        listener: (context, state) {
          print(state);
          state.maybeWhen(
            orElse: () {},
            unidentificate: () => context.pushReplacementNamed(Routes.identificate),
            identificate: (schoolData) => context.pushReplacementNamed(Routes.dashboard),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
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
              const Spacer(),
              Text('Versi 1.0.0', style: ProschoolTS.blackRegular),
            ],
          ),
        ),
      ),
    );
  }
}
