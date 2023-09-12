// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';
import '../../../../theme/spacing.dart';
import '../../../../theme/textstyle.dart';

class LoadingCircular extends StatelessWidget {
  final String label;
  const LoadingCircular({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          const SizedBox(
            width: 21,
            height: 21,
            child: CircularProgressIndicator(
              color: ProschoolColor.black,
            ),
          ),
          ProschoolSpacing.width7,
          Text(label, style: ProschoolTS.blackRegular)
        ],
      ),
    );
  }
}
